#!/usr/bin/env bash

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

TESTCOINSUPERD=${TESTCOINSUPERD:-$BINDIR/testcoinsuperd}
TESTCOINSUPERCLI=${TESTCOINSUPERCLI:-$BINDIR/testcoinsuper-cli}
TESTCOINSUPERTX=${TESTCOINSUPERTX:-$BINDIR/testcoinsuper-tx}
TESTCOINSUPERQT=${TESTCOINSUPERQT:-$BINDIR/qt/testcoinsuper-qt}

[ ! -x $TESTCOINSUPERD ] && echo "$TESTCOINSUPERD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
TCSVER=($($TESTCOINSUPERCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for testcoinsuperd if --version-string is not set,
# but has different outcomes for testcoinsuper-qt and testcoinsuper-cli.
echo "[COPYRIGHT]" > footer.h2m
$TESTCOINSUPERD --version | sed -n '1!p' >> footer.h2m

for cmd in $TESTCOINSUPERD $TESTCOINSUPERCLI $TESTCOINSUPERTX $TESTCOINSUPERQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${TCSVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${TCSVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m

// Copyright (c) 2011-2014 The Test Coin Super Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef TESTCOINSUPER_QT_TESTCOINSUPERADDRESSVALIDATOR_H
#define TESTCOINSUPER_QT_TESTCOINSUPERADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class TestCoinSuperAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit TestCoinSuperAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Test Coin Super address widget validator, checks for a valid testcoinsuper address.
 */
class TestCoinSuperAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit TestCoinSuperAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // TESTCOINSUPER_QT_TESTCOINSUPERADDRESSVALIDATOR_H

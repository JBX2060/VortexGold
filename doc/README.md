Test Coin Super Core
=============

Setup
---------------------
Test Coin Super Core is the original Test Coin Super client and it builds the backbone of the network. It downloads and, by default, stores the entire history of Test Coin Super transactions (which is currently more than 100 GBs); depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download Test Coin Super Core, visit [testcoinsupercore.org](https://testcoinsupercore.org/en/releases/).

Running
---------------------
The following are some helpful notes on how to run Test Coin Super Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/testcoinsuper-qt` (GUI) or
- `bin/testcoinsuperd` (headless)

### Windows

Unpack the files into a directory, and then run testcoinsuper-qt.exe.

### macOS

Drag Test Coin Super Core to your applications folder, and then run Test Coin Super Core.

### Need Help?

* See the documentation at the [Test Coin Super Wiki](https://en.testcoinsuper.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#testcoinsuper](http://webchat.freenode.net?channels=testcoinsuper) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net?channels=testcoinsuper).
* Ask for help on the [TestCoinSuperTalk](https://testcoinsupertalk.org/) forums, in the [Technical Support board](https://testcoinsupertalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build Test Coin Super Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The Test Coin Super repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/testcoinsuper/doxygen/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [TestCoinSuperTalk](https://testcoinsupertalk.org/) forums, in the [Development & Technical Discussion board](https://testcoinsupertalk.org/index.php?board=6.0).
* Discuss project-specific development on #testcoinsuper-core-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=testcoinsuper-core-dev).
* Discuss general Test Coin Super development on #testcoinsuper-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=testcoinsuper-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.

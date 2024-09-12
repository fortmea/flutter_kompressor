<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A Package to gzip compress Flutter resource files.

## Features

This package can significantly reduce the size of resource files, like json translation files.

## Usage

Run with:
```bash
dart run kompressor --input <inputFolder> --output <outputFolder> 
```
This command will batch process any file inside ```inputFolder``` and create a new file inside ```outputFolder``` encoded with gzip.
## Additional information

For this package to be useful, you must be able to use gzip to uncompress the resources during runtime.

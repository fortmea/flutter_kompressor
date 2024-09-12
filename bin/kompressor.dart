import 'dart:io';

import 'package:args/args.dart';
import 'package:kompressor/kompressor.dart';

void main(List<String> args) {
  final parser = ArgParser()
    ..addOption('input', abbr: 'i', help: 'Input folder')
    ..addOption('output', abbr: 'o', help: 'Output folder');

  final argResults = parser.parse(args);

  final input = argResults['input'] as String?;
  final output = argResults['output'] as String?;

  if (input == null || output == null) {
    print('Use: dart kompressor --input=<path> --output=<path>');
    exit(1);
  } else {
    Kompressor().processFiles(input, output);
  }
}

library kompressor;

import 'dart:io';

class Kompressor {
  void processFiles(String inputPath, String outputPath) {
    final inputDir = Directory(inputPath);
    final outputDir = Directory(outputPath);

    if (!inputDir.existsSync()) {
      print('Input directory not found!');
      exit(1);
    }

    if (!outputDir.existsSync()) {
      outputDir.createSync(recursive: true);
    }

    // Process each file in the directory
    inputDir.listSync(recursive: true).forEach((entity) {
      if (entity is File) {
        final relativePath = entity.path.replaceFirst(inputDir.path, '');
        final outputFile = File('${outputDir.path}$relativePath.gz');
        outputFile.parent.createSync(recursive: true);
        final content = entity.readAsBytesSync();
        outputFile.writeAsBytesSync(gzip.encode(content));

        print('File saved in ${outputFile.path}');
      }
    });
  }
}

import 'dart:io';

import 'package:dutcheng/dutcheng.dart' as dutcheng;

void main(List<String> arguments) async {
  print('Hello world: ${dutcheng.calculate()}!');
  final dir = Directory('.');
  final List<FileSystemEntity> entities = await dir.list().toList();
  print(entities);

  var myFile = File('assets/wordlist.txt');
  myFile.readAsLines().then((lines) {
    var count = 0;
    for (var line in lines) {
      if (line[0].toUpperCase() != line[0]) {
        print(line);
        count++;
      }
    }
    print("Total words: ${lines.length} - Not capitalized: $count");


  });
}

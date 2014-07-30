import 'dart:io';
import 'package:args/args.dart';
import 'package:deddit/deddit.dart';

void main(List args) {

  String subreddit;

  ArgParser parser = new ArgParser();

  parser.addOption('subreddit', abbr: 'r', defaultsTo: 'dartlang',
                   help: 'The subreddit to fetch.',
                   valueHelp: 'subreddit',
                   callback: (_r) {
    subreddit = _r;
  });

  parser.addFlag('help', abbr: 'h', negatable: false, help: 'Displays the help.', callback: (_help) {
    if (_help) {
      print(parser.getUsage());
      exit(1);
    }
  });

  parser.parse(args);

  Deddit.get('$subreddit').then((List<Item> news) {
    for (Item item in news) {
      print(item);
    }
  });
}
import 'package:flutter/material.dart';
import 'package:html/parser.dart';

const emojiMap = {
  'horror': '๐ฑ',
  'food': '๐',
  'action': '๐',
  'romance': '๐ฅฐ',
  'comedy': '๐คช',
  'drama': '๐ญ',
  'thriller': '๐ช',
  'crime': '๐ฎ๏ธ',
  'mystery': '๐ต๏ธโ๏ธ',
  'fantasy': '๐งโ๏ธ',
  'supernatural': '๐ปโ๏ธ',
  'adventure': '๐โ',
  'science-fiction': '๐ธโ',
  'family': '๐จโ๐ฉโ๐งโ'
};

Future<dynamic> get(BuildContext context, Function builder,
    {bool replace = false}) async {
  if (replace) {
    await Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (b) => builder()));
  }
  await Navigator.of(context)
      .push(MaterialPageRoute(builder: (b) => builder()));
}

String getEmojiByGenre(String genre) => emojiMap[genre.toLowerCase()] ?? '๐';

String htmlToString(String htmlString) {
  final document = parse(htmlString);
  final String parsedString = parse(document.body!.text).documentElement!.text;

  return parsedString;
}

void showSnackBar(BuildContext context, String message, {int seconds = 5}) {
  Future.delayed(Duration.zero, () {
    final snackBar = SnackBar(
      duration: Duration(seconds: seconds),
      content: Text(
        message,
        style: const TextStyle(color: Colors.white54),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  });
}

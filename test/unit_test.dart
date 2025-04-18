import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:toughest/ui/detail.dart';
import 'package:toughest/ui/home.dart';
import 'package:toughest/ui/showdetail.dart';

void main() {
  late Home home;
  setUp(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    home = Home();
  });

  group("Check Home page methods returns the widget", () {
    test("create list item", () {
      Widget wid =
          home.createState().getListItems(Colors.blue, Icons.add, 'Add item');
      expect(wid, isNot(null));
    });
  });

  group("Check detail page creation", () {
    test("Creating detail page", () {
      Detail detail = Detail(title: 'Communications Based');
      String text = detail.title;
      Widget items = detail.buildListItems();
      expect(text, isA<String>());
      expect(text, equals('Communications Based'));
      expect(items, isNot(null));
      debugPrint('Detail page text is: $text\n\n');
    });
  });

  group('Checking showDetail page', () {
    test('Create a showDetail page object', () {
      ShowDetail showDetail =
          ShowDetail(quest: 'Testing question', ans: 'Testing answer');
      String q = showDetail.quest;
      String a = showDetail.ans;
      expect(q, 'Testing question');
      expect(a, 'Testing answer');
      Widget card = showDetail.createState().cardDetail('testing');
      expect(card, isNot(null));
      debugPrint('Question is: $q\n\nAnswer is: $a\n\n');
    });
  });
}

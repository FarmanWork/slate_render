import 'package:flutter_test/flutter_test.dart' as tt;
import 'package:slate_render/slate.dart';
import 'package:slate_render/src/utils/dummy_data.dart';

void main() {
  tt.group("testing for slate renderer", () {
    tt.test('SlateRender only except the content type of value', () {
      final slateTest = SlateRenderer(
        data: mapList[0],
        disableLink: true,
        maxLine: 3,
      );
      tt.expect(slateTest.data, mapList[0]);
    });
    tt.test('check other content are properly rendered or not', () {
      final slateTest = SlateRenderer(
        data: mapList[0],
        disableLink: true,
        maxLine: 3,
      );
      tt.expect(slateTest.disableLink, true);
      tt.expect(slateTest.maxLine, 3);
      tt.expect(
        slateTest.data['children']![0]['text'],
        "This is the children text 1",
      );
      tt.expect(
        slateTest.data['children']![0]['children']![0]['text'],
        "This is the children text 11",
      );
      tt.expect(slateTest.data['children']![0]['color'], "#f54e42");
      tt.expect(slateTest.data['children']![0]['color']!.length, 7);
    });

    tt.test('SlateRender content type is paragraph', () {
      final slateTest = SlateRenderer(
        data: mapList[0],
        disableLink: true,
        maxLine: 3,
      );
      tt.expect(slateTest.data['type'], "paragraph");
      tt.expect(slateTest.data['url'], "http://www.google.com");
    });
    tt.test('SlateRender content type is heading-1', () {
      final slateTest = SlateRenderer(
        data: mapList[1],
        disableLink: true,
        maxLine: 3,
      );
      tt.expect(slateTest.data['type'], "heading-1");
    });
    tt.test('SlateRender content type is heading-2', () {
      final slateTest = SlateRenderer(
        data: mapList[2],
        disableLink: true,
        maxLine: 3,
      );
      tt.expect(slateTest.data['type'], "heading-2");
    });
    tt.test('SlateRender content type is heading-3', () {
      final slateTest = SlateRenderer(
        data: mapList[3],
        disableLink: true,
        maxLine: 3,
      );
      tt.expect(slateTest.data['type'], "heading-3");
    });
    tt.test('SlateRender content type is numbered-list', () {
      final slateTest = SlateRenderer(
        data: mapList[4],
        disableLink: true,
        maxLine: 3,
      );
      tt.expect(slateTest.data['type'], "numbered-list");
    });
    tt.test('SlateRender content type is images inside a list', () {
      final slateTest = SlateRenderer(
        data: mapList[4],
        disableLink: true,
        maxLine: 3,
      );
      tt.expect(
        slateTest.data['children']![0]['children']![1]['type'],
        "image",
      );
    });
    tt.test('SlateRender content type is bulleted-list', () {
      final slateTest = SlateRenderer(
        data: mapList[5],
        disableLink: true,
        // maxLine: 3,
      );
      tt.expect(slateTest.data['type'], "bulleted-list");
    });
    tt.test('SlateRender content type is list-item', () {
      final slateTest = SlateRenderer(
        data: mapList[6],
        disableLink: true,
        // maxLine: 3,
      );
      tt.expect(slateTest.data['type'], "list-item");
    });
    tt.test('SlateRender content type is image', () {
      final slateTest = SlateRenderer(
        data: mapList[7],
        disableLink: true,
        maxLine: 3,
      );
      tt.expect(slateTest.data['type'], "image");
    });
  });
}

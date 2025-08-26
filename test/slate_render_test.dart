import 'package:flutter_test/flutter_test.dart' as tt;
import 'package:slate_render/src/slate_render.dart';

import 'dummy_data.dart';

void main() {
  tt.group("testing for slate renderer", () {
    tt.test('SlateRender only except the content type of value', () {
      final slateTest = SlateRenderer(
        content: contentList[0],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.content, contentList[0]);
    });
    tt.test('check other content are properly rendered or not', () {
      final slateTest = SlateRenderer(
        content: contentList[0],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.isLinkDisable, true);
      tt.expect(slateTest.maxLine, 3);
      tt.expect(
        slateTest.content.children![0].text,
        "This is the children text 1",
      );
      tt.expect(
        slateTest.content.children![0].children![0].text,
        "This is the children text 11",
      );
      tt.expect(slateTest.content.children![0].color, "#f54e42");
      tt.expect(slateTest.content.children![0].color!.length, 7);
    });

    tt.test('SlateRender content type is paragraph', () {
      final slateTest = SlateRenderer(
        content: contentList[0],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.content.type, "paragraph");
    });
    tt.test('SlateRender content type is heading-1', () {
      final slateTest = SlateRenderer(
        content: contentList[1],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.content.type, "heading-1");
    });
    tt.test('SlateRender content type is heading-2', () {
      final slateTest = SlateRenderer(
        content: contentList[2],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.content.type, "heading-2");
    });
    tt.test('SlateRender content type is heading-3', () {
      final slateTest = SlateRenderer(
        content: contentList[3],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.content.type, "heading-3");
    });
    tt.test('SlateRender content type is numbered-list', () {
      final slateTest = SlateRenderer(
        content: contentList[4],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.content.type, "numbered-list");
    });
    tt.test('SlateRender content type is images inside a list', () {
      final slateTest = SlateRenderer(
        content: contentList[4],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.content.children![0].children![1].type, "image");
    });
    tt.test('SlateRender content type is bulleted-list', () {
      final slateTest = SlateRenderer(
        content: contentList[5],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.content.type, "bulleted-list");
    });
    tt.test('SlateRender content type is list-item', () {
      final slateTest = SlateRenderer(
        content: contentList[6],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.content.type, "list-item");
    });
    tt.test('SlateRender content type is image', () {
      final slateTest = SlateRenderer(
        content: contentList[7],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.content.type, "image");
    });
  });
}

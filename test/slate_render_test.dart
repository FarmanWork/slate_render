// import 'package:flutter_test/flutter_test.dart';
// import 'package:slate_render/slate_render.dart';

// void main() {
//   test('adds one to input values', () {
//     final calculator = Calculator();
//     expect(calculator.addOne(2), 3);
//     expect(calculator.addOne(-7), -6);
//     expect(calculator.addOne(0), 1);
//   });
// }
import 'package:flutter_test/flutter_test.dart' as tt;
import 'package:slate_render/models/description_model.dart';
import 'package:slate_render/slate_render.dart';

void main() {
  List<Description> descriptionList = [
    Description(
      type: "paragraph",
      children: [
        DescriptionChild(
          bold: true,
          text: "This is the children text 1",
          italic: true,
          underline: true,
          closeText: false,
          children: [
            DescriptionChild(
              bold: true,
              text: "This is the children text 11",
              italic: true,
              underline: true,
              closeText: false,
              type: "paragraph",
              url:
                  "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
              color: "#4287f5",
              bgColor: "",
            ),
          ],
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f54e42",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 2",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 3",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
      ],
      url: "http://www.google.com",
      width: 1,
      anchor: "",
      height: 1,
      alignment: "left",
      redirection: false,
    ),
    Description(
      type: "heading-1",
      children: [
        DescriptionChild(
          bold: true,
          text: "This is the children text 1",
          italic: true,
          underline: true,
          closeText: false,
          children: [
            DescriptionChild(
              bold: true,
              text: "This is the children text 11",
              italic: true,
              underline: true,
              closeText: false,
              type: "heading-1",
              url:
                  "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
              color: "#4287f5",
              bgColor: "",
            ),
          ],
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f54e42",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 2",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 3",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
      ],
      url: "http://www.google.com",
      width: 1,
      anchor: "",
      height: 1,
      alignment: "left",
      redirection: false,
    ),
    Description(
      type: "heading-2",
      children: [
        DescriptionChild(
          bold: true,
          text: "This is the children text 1",
          italic: true,
          underline: true,
          closeText: false,
          children: [
            DescriptionChild(
              bold: true,
              text: "This is the children text 11",
              italic: true,
              underline: true,
              closeText: false,
              type: "paragraph",
              url:
                  "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
              color: "#4287f5",
              bgColor: "",
            ),
          ],
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f54e42",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 2",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 3",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
      ],
      url: "http://www.google.com",
      width: 1,
      anchor: "",
      height: 1,
      alignment: "left",
      redirection: false,
    ),
    Description(
      type: "heading-3",
      children: [
        DescriptionChild(
          bold: true,
          text: "This is the children text 1",
          italic: true,
          underline: true,
          closeText: false,
          children: [
            DescriptionChild(
              bold: true,
              text: "This is the children text 11",
              italic: true,
              underline: true,
              closeText: false,
              type: "paragraph",
              url:
                  "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
              color: "#4287f5",
              bgColor: "",
            ),
          ],
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f54e42",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 2",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 3",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
      ],
      url: "http://www.google.com",
      width: 1,
      anchor: "",
      height: 1,
      alignment: "left",
      redirection: false,
    ),
    Description(
      type: "numbered-list",
      children: [
        DescriptionChild(
          bold: true,
          text: "This is the children text 1",
          italic: true,
          underline: true,
          closeText: false,
          children: [
            DescriptionChild(
              bold: true,
              text: "This is the children text 11",
              italic: true,
              underline: true,
              closeText: false,
              type: "paragraph",
              url:
                  "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
              color: "#4287f5",
              bgColor: "",
            ),
            DescriptionChild(
              bold: true,
              text: "This is the children text 11",
              italic: true,
              underline: true,
              closeText: false,
              type: "image",
              url:
                  "https://edisonlms-fs-staging.s3.ap-south-1.amazonaws.com/tenant_neeraj/72b784b3-0426-4e42-a0e2-731b0c20dc20_1679373965173_Untitled.png",
              color: "#4287f5",
              bgColor: "",
            ),
          ],
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f54e42",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 2",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 3",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
      ],
      url: "http://www.google.com",
      width: 1,
      anchor: "",
      height: 1,
      alignment: "left",
      redirection: false,
    ),
    Description(
      type: "bulleted-list",
      children: [
        DescriptionChild(
          bold: true,
          text: "This is the children text 1",
          italic: true,
          underline: true,
          closeText: false,
          children: [
            DescriptionChild(
              bold: true,
              text: "This is the children text 11",
              italic: true,
              underline: true,
              closeText: false,
              type: "paragraph",
              url:
                  "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
              color: "#4287f5",
              bgColor: "",
            ),
          ],
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f54e42",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 2",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 3",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
      ],
      url: "http://www.google.com",
      width: 1,
      anchor: "",
      height: 1,
      alignment: "left",
      redirection: false,
    ),
    Description(
      type: "list-item",
      children: [
        DescriptionChild(
          bold: true,
          text: "This is the children text 1",
          italic: true,
          underline: true,
          closeText: false,
          children: [
            DescriptionChild(
              bold: true,
              text: "This is the children text 11",
              italic: true,
              underline: true,
              closeText: false,
              type: "paragraph",
              url:
                  "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
              color: "#4287f5",
              bgColor: "",
            ),
          ],
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f54e42",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 2",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 3",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
      ],
      url: "http://www.google.com",
      width: 1,
      anchor: "",
      height: 1,
      alignment: "left",
      redirection: false,
    ),
    Description(
      type: "image",
      children: [
        DescriptionChild(
          bold: true,
          text: "This is the children text 1",
          italic: true,
          underline: true,
          closeText: false,
          children: [
            DescriptionChild(
              bold: true,
              text: "This is the children text 11",
              italic: true,
              underline: true,
              closeText: false,
              type: "paragraph",
              url:
                  "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
              color: "#4287f5",
              bgColor: "",
            ),
          ],
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f54e42",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 2",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
        DescriptionChild(
          bold: true,
          text: "This is the children text 3",
          italic: true,
          underline: true,
          closeText: false,
          type: "paragraph",
          url: "https://support.apple.com/en-in/guide/mac-help/mchlp2265/mac",
          color: "#f57842",
          bgColor: "",
        ),
      ],
      url: "http://www.google.com",
      width: 1,
      anchor: "",
      height: 1,
      alignment: "left",
      redirection: false,
    ),
  ];

  tt.group("testing for slate renderer", () {
    tt.test('SlateRender only except the description type of value', () {
      final slateTest = SlateRenderer(
        description: descriptionList[0],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.description, descriptionList[0]);
    });
    tt.test('check other content are properly rendered or not', () {
      final slateTest = SlateRenderer(
        description: descriptionList[0],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.isLinkDisable, true);
      tt.expect(slateTest.maxLine, 3);
      tt.expect(
        slateTest.description!.children![0].text,
        "This is the children text 1",
      );
      tt.expect(
        slateTest.description!.children![0].children![0].text,
        "This is the children text 11",
      );
      tt.expect(slateTest.description!.children![0].color, "#f54e42");
      tt.expect(slateTest.description!.children![0].color!.length, 7);
    });

    tt.test('SlateRender description type is paragraph', () {
      final slateTest = SlateRenderer(
        description: descriptionList[0],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.description!.type, "paragraph");
    });
    tt.test('SlateRender description type is heading-1', () {
      final slateTest = SlateRenderer(
        description: descriptionList[1],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.description!.type, "heading-1");
    });
    tt.test('SlateRender description type is heading-2', () {
      final slateTest = SlateRenderer(
        description: descriptionList[2],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.description!.type, "heading-2");
    });
    tt.test('SlateRender description type is heading-3', () {
      final slateTest = SlateRenderer(
        description: descriptionList[3],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.description!.type, "heading-3");
    });
    tt.test('SlateRender description type is numbered-list', () {
      final slateTest = SlateRenderer(
        description: descriptionList[4],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.description!.type, "numbered-list");
    });
    tt.test('SlateRender description type is images inside a list', () {
      final slateTest = SlateRenderer(
        description: descriptionList[4],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.description!.children![0].children![1].type, "image");
    });
    tt.test('SlateRender description type is bulleted-list', () {
      final slateTest = SlateRenderer(
        description: descriptionList[5],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.description!.type, "bulleted-list");
    });
    tt.test('SlateRender description type is list-item', () {
      final slateTest = SlateRenderer(
        description: descriptionList[6],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.description!.type, "list-item");
    });
    tt.test('SlateRender description type is image', () {
      final slateTest = SlateRenderer(
        description: descriptionList[7],
        isLinkDisable: true,
        maxLine: 3,
      );
      tt.expect(slateTest.description!.type, "image");
    });
  });
}

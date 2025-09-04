# slate_render

slate_render is a Flutter package that helps you render content created with the Slate Editor into rich Flutter widgets.

<p align='center'>
    <img src="https://github.com/FarmanWork/slate_render/blob/main/screenshot_home.png" />
    <img src="https://github.com/FarmanWork/slate_render/blob/main/screenshot_view.png" />
    <img src="https://github.com/FarmanWork/slate_render/blob/main/screenshot_image_view.png" />
</p>

## Features

It parses the JSON output of Slate.js
and converts it into clean, customizable UI components such as:

📄 Paragraphs & Headings

📝 Lists (numbered & bulleted)

🔗 Links

🖼️ Images

✨ Text styles (bold, italic, underline, etc.)

Why use this package?

✅ Simple API – pass your Slate JSON and get widgets

🎨 Customizable styling for text, links, and blocks

⚡ Lightweight and fast

🧩 Extensible – add your own node/mark renderers

Perfect for blogs, CMS pages, documentation, or any app that needs to render rich text content from a Slate Editor.

## Getting started

First, add slate_render as a dependency in your pubspec.yaml file.

```dependencies
  slate_render: ^0.0.2
```

Don't forget to `flutter pub get`.

## Usage

For small view

```
     SlateRenderer(
        data: description,(Map<String, dynamic>)
        disableLink: true,(optional)
        maxLine: 5,(optional)
      ),
```

For Large View

```
    SlateRenderer(
      data: description,(Map<String, dynamic>)
      disableLink: false,(optional)
    ),
```

## Additional information

# Acknowledgments

This package was originally created by Farman Mohmmad and also maintained by Farman Mohmmad.

# Bugs or Requests

If you encounter any problems feel free to open an issue. If you feel the library is missing a feature, please raise a ticket. Pull request are also welcome.

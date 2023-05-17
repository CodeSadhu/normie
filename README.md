<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Normie - Your Flutter BFF 🎉

![Normie Logo](https://example.com/normie-logo.png)

Normie is your go-to companion for Flutter development, packed with an array of delightful and handy helper methods. This creative Dart package aims to make your Flutter journey smoother and more enjoyable, offering a collection of tools that include date formatters, validators, and so much more. Let Normie be your partner in crime, saving you time and effort while building amazing Flutter apps.

## Features

Normie brings a party of features to uplift your Flutter experience:

- **Date Disco**: Groove with easy date formatting and manipulation.
- **Validation Vibes**: Shake up your forms with email, phone number, and URL validation.
- **String Serenade**: Sing along with string utilities for truncation, capitalization, and more.
- **Number Jive**: Get your numbers grooving with formatting and rounding moves.
- **Color Carnival**: Paint your app with color manipulation, conversions, and random color generators.
- **File Fiesta**: Dance through file-related tasks like reading, writing, and deleting files.
- **Localization Luau**: Party worldwide with internationalization and localization support.
- **And much more!**

## Installation

To join the Normie party in your Flutter project, follow these steps:

1. Turn up the beat and open your project's `pubspec.yaml` file.
2. Add `normie` to your dependencies guest list:

   ```yaml
   dependencies:
     normie: ^1.0.0
   ```

3. Get ready to dance by running `flutter pub get` in your terminal or clicking "Packages get" in your IDE.

## Usage

Import Normie to your Dart file, and let the party begin! Here's a sneak peek of how you can groove with some of Normie's utilities:

```dart
import 'package:normie/normie.dart';

void main() {
  // Show off your formatted date using the default dance moves
  final formattedDate = NormieDateFormatter.format(DateTime.now());

  // Validate your moves with an email address
  final isValidEmail = NormieValidator.isValidEmail('example@example.com');

  // Truncate the beat with a string
  final truncatedString = NormieStringUtils.truncate('This is a long string', 10);
  
  // Surprise your audience with a random color
  final randomColor = NormieColorUtils.randomColor();

  // ...and many more groovy moves to discover!
}
```

For a complete list of dance moves and their usage, check out the [API documentation](https://example.com/normie-docs).

## Join the Party

We love it when our guests contribute to the party! If you have bug fixes, suggestions, or dancefloor enhancements, feel free to join in. Open an issue or send a pull request to our [GitHub repository](https://github.com/CodeSadhu/normie). Check out the [contribution guidelines](https://github.com/normie-contributing) before stepping on the dancefloor.

## License

Normie dances under the [MIT License](https://opensource.org/licenses/MIT). Feel free to join in and use this package for your projects, both personal and commercial. Refer to the [LICENSE](https://github.com/normie-license) file for more details.

## Contributors

Normie thanks these party people who have contributed their moves to the dancefloor:

- [CodeSadhu](https://github.com/CodeSadhu)

<!-- Thank you for being awesome! -->

## Let's Chat

Got questions, suggestions, or just want to groove together? Reach out to us at `chat@codesadhu.com`. We can't wait to hear from you!

---

*Note: Remember to replace the placeholder URLs and contact information with actual links and relevant details for your package.*
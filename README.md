# Normie - Dart Utility Package

Normie is a powerful Dart package that provides a suite of commonly used utility methods to aid Flutter developers in their day-to-day tasks. It offers a collection of convenient features such as date formatters, validators, string manipulation functions, number utilities, color manipulation tools, file handling capabilities, localization support, and much more. Normie aims to streamline the development process and boost productivity by offering a comprehensive set of tools and functionalities.

## Installation

To start using Normie in your Flutter project, follow these simple steps:

1. Open your project's `pubspec.yaml` file.
2. Add `normie` as a dependency:

   ```yaml
   dependencies:
     normie: ^1.0.0
   ```

3. Run `flutter pub get` in your terminal or click on "Packages get" in your IDE.

## Usage

Import Normie into your Dart file and leverage its wide **array** of utility methods to simplify your development tasks. Here's an example showcasing some of the capabilities provided by Normie:

```dart
import 'package:normie/normie.dart';

void main() {
  // Format a date using the default date format
  final formattedDate = Normie.formatDate(date: DateTime.now().toString());

  // Validate an email address
  final isValidEmail = Normie.isValidEmail('example@example.com');

  // Truncate a string
  final truncatedString = Normie.truncate('This is a long string', 10);
  
  // Generate a random color
  final randomColor = Normie.randomColor();

  // ...and many more utility methods at your disposal!
}
```

<!-- For a complete list of available methods and their usage, refer to the [API documentation](https://example.com/normie-docs). -->

## Contributing

Contributions to Normie are welcomed and encouraged! If you discover any bugs, have feature suggestions, or would like to contribute improvements, please open an issue or submit a pull request on the [GitHub repository](https://github.com/CodeSadhu/normie). Before contributing, kindly review the [contribution guidelines](https://github.com/CodeSadhu/normie/blob/main/CONTRIBUTING.md) for more details.

## License

Normie is licensed under the [MIT License](https://opensource.org/licenses/MIT), granting you the freedom to use this package in both personal and commercial projects. For more information, refer to the [LICENSE](https://example.com/normie-license) file.

## Acknowledgments

Normie extends its gratitude to the following individuals for their valuable contributions:

- [CodeSadhu](https://github.com/CodeSadhu)

Thank you for your outstanding contributions!

## Contact

If you have any questions, suggestions, or feedback, please feel free to reach out to us at `chat@codesadhu.com`. We appreciate your interest and look forward to hearing from you.

---


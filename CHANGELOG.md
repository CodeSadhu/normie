# Changelog

## 1.0.0

* Initial release
* Contains 9 helper methods starting off
* Added contributing guidelines

## 2.0.0

### Breaking Changes 🚨
* Complete architecture overhaul - methods are now organized into categories
* All static methods moved to their respective utility classes
* Changed method access pattern from `Normie.method()` to `Normie.category.method()`

### New Features 🎉
* Added 12 specialized utility categories:
  * Cache - NEW: In-memory caching system with expiry support
  * Check - Expanded validation (added phone, credit card, URL validation)
  * Chrono - Enhanced date utilities (added time ago, countdown)
  * Collection - NEW: List operations and pagination
  * Device - NEW: Platform detection utilities
  * Files - Expanded file utilities (added MIME type support)
  * Guard - NEW: Error handling utilities
  * Maps - NEW: Map manipulation utilities
  * Maths - Expanded math operations
  * Numeric - NEW: Number formatting utilities
  * Palette - Enhanced color utilities (added lighten/darken)
  * Words - Enhanced string utilities

### Improvements 🔨
* Better organization and maintainability
* More consistent API design
* Expanded functionality in every category
* Better type safety and null safety support

## 1.0.0

* Initial release with basic utility methods:
  * String operations (reverse, truncate, titleCase, getStringInitial)
  * Date formatting (formatDate, getWeekDayDate)
  * Color utilities (hexToColor, colorToHex, randomColor)
  * Basic validation (isValidEmail)
  * File utilities (getFileExtension)
  * Math utilities (rotate)
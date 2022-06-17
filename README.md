[<img src="https://techdirr.com/techdirr.png" width="200" />](https://techdirr.com)


# validation_plus

Validation like mobile, email, input.

## Using

For help getting started with Flutter, view our
[online documentation](https://pub.dev/documentation/validation_plus/latest), which offers tutorials,
samples, guidance on mobile and web development, and a full API reference.

## Installation

First, add `validation_plus` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

In your flutter project add the dependency:

```yml
dependencies:
  ...
  validation_plus:
```

For help getting started with Flutter, view the online
[documentation](https://flutter.io/).

## Example

Please follow this [example](https://github.com/techdirrdev/validation_plus/tree/master/example) here.

### Validation

* Email address validation
```dart
Validate.isValidEmail(emailAddress);
```

* Mobile number validation (Only Indian pattern and 10 digits mobile number accepted)
```dart
Validate.isValidMobile(mobileNumber);
```

* Input int value validation
```dart
TextField(
  keyboardType: TextInputType.number,
  inputFormatters: [Validate.intValueFormatter()]
)
```

* Input decimal value validation
```dart
TextField(
  keyboardType: TextInputType.number,
  inputFormatters: [Validate.decimalValueFormatter(decimalPlaceValue: 3)]
)
```

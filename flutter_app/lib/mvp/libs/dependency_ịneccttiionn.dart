import 'package:flutter_app/mvp/repo/ContactRepository.dart';
import 'package:flutter_app/mvp/repo/MockContactRepository.dart';
import 'package:flutter_app/mvp/repo/RandomUserRepository.dart';

enum Flavor {
  MOCK,
  PRO
}

/// Simple DI
/// Injector class là singleton
class Injector {
  static final Injector _singleton = Injector._internal();
  static Flavor _flavor;

  static void configure(Flavor flavor) {
    _flavor = flavor;
  }

  factory Injector() {
    return _singleton;
  }

  Injector._internal();

  ContactRepository get contactRepository {
    switch(_flavor) {
      case Flavor.MOCK: return MockContactRepository();
      default: // Flavor.PRO:
        return RandomUserRepository();
    }
  }
}
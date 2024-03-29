import 'package:flutter/foundation.dart';

abstract final class Environment {
  static const _prodEnv = '';
  static const _devEnv = '/own/raumunikate.com';

  static late final String contactPath;

  static void init() {
    const basePath = kProfileMode ? _devEnv : _prodEnv;
    contactPath = '$basePath/contact.php';
  }
}

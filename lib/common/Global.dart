import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];

class Globals {
  static SharedPreferences _prefs;
  // static Profile profile = Profile();
  // static NetCache netCache = NetCache();
  // 选择主题
  static List<MaterialColor> get themes => _themes;
  // 是否为release版
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");
  //初始化全局信息，会在APP启动时执行
  static Future init() async {}
}

import 'package:flutter/cupertino.dart';
import 'package:tatutiallocalization/localiation/demo_localization.dart';

String getlang(BuildContext context, String key) {
  return DemoLocalization.of(context)!.translate(key);
}

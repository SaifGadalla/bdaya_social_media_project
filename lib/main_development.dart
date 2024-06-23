import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:social_media_bdaya/app/app.dart';
import 'package:social_media_bdaya/bootstrap.dart';
import 'package:social_media_bdaya/get_it_config.dart';

void main() {
  FlutterError.onError = (details){
    Logger('Flutter error').info(details.toStringShort());
  };

  configureDependencies(env: Environment.dev);
  bootstrap(App.new);
}

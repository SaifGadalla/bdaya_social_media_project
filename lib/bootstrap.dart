import 'dart:async';
import 'dart:developer';
import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/widgets.dart';
import 'package:social_media_bdaya/get_it_config.dart';


Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  // Add cross-flavor configuration here

  Logger.root.onRecord.listen(bdayaOnRecordHandlerFactory());
  setPathUrlStrategy();

  getIt.allowReassignment = true;
  runApp(await builder());
}

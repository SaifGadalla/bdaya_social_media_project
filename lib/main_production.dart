import 'package:injectable/injectable.dart';
import 'package:social_media_bdaya/app/app.dart';
import 'package:social_media_bdaya/bootstrap.dart';
import 'package:social_media_bdaya/get_it_config.dart';

void main() {

  configureDependencies(env: Environment.prod);
  bootstrap(App.new);
}

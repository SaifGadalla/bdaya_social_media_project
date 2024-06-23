import 'package:async/async.dart';
import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:social_media_bdaya/get_it_config.dart';
import 'package:social_media_bdaya/services/cache_service.dart';
import 'package:social_media_bdaya/services/post_service.dart';
import 'package:social_media_bdaya/services/user_service.dart';

@lazySingleton
class InitService {
  final memoizer = AsyncMemoizer<void>();

  Future<void> init() {
    return memoizer.runOnce(() async {
      await getIt<BdayaAppThemeServiceBase>().init();
      await getIt<CacheService>().init();
      await getIt<UserService>().init();
      await getIt<PostService>().init();
    });
  }

}

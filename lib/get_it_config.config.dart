// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:bdaya_flutter_common/bdaya_flutter_common.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'pages/all_posts/controller.dart' as _i15;
import 'pages/all_users/controller.dart' as _i11;
import 'pages/auth/controller.dart' as _i12;
import 'pages/create_post_reactive/controller.dart' as _i20;
import 'pages/current_user_profile/controller.dart' as _i17;
import 'pages/dashboard/controller.dart' as _i13;
import 'pages/onboarding/controller.dart' as _i4;
import 'pages/post_details/controller.dart' as _i18;
import 'pages/posts_feed/controller.dart' as _i16;
import 'pages/settings/controller.dart' as _i9;
import 'pages/update_post_reactive/controller.dart' as _i19;
import 'services/cache_service.dart' as _i7;
import 'services/grpc_service.dart' as _i5;
import 'services/init_service.dart' as _i6;
import 'services/post_service.dart' as _i10;
import 'services/routing_service.dart' as _i14;
import 'services/user_service.dart' as _i8;

const String _dev = 'dev';
const String _test = 'test';
const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i3.BdayaFlutterCommonPackageModule().init(gh);
    gh.lazySingleton<_i4.OnboardingController>(
        () => _i4.OnboardingController());
    gh.lazySingleton<_i5.GrpcService>(() => _i5.GrpcService());
    gh.lazySingleton<_i6.InitService>(() => _i6.InitService());
    gh.lazySingleton<_i7.CacheService>(
      () => _i7.FakeCacheService(),
      registerFor: {
        _dev,
        _test,
      },
    );
    gh.lazySingleton<_i8.UserService>(
      () => _i8.FakeUserService(),
      registerFor: {
        _test,
        _dev,
      },
    );
    gh.lazySingleton<_i7.CacheService>(
      () => _i7.RealCacheService(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i8.UserService>(
      () => _i8.RealUserService(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i9.SettingsController>(() => _i9.SettingsController(
          gh<_i3.BdayaAppThemeServiceBase>(),
          gh<_i8.UserService>(),
        ));
    gh.lazySingleton<_i10.PostService>(
      () => _i10.RealPostService(gh<_i5.GrpcService>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i11.AllUsersController>(
        () => _i11.AllUsersController(gh<_i8.UserService>()));
    gh.lazySingleton<_i12.AuthController>(
        () => _i12.AuthController(gh<_i8.UserService>()));
    gh.lazySingleton<_i13.DashboardController>(
        () => _i13.DashboardController(gh<_i8.UserService>()));
    gh.lazySingleton<_i14.RoutingService>(
        () => _i14.RoutingService(gh<_i8.UserService>()));
    gh.lazySingleton<_i15.AllPostsController>(() => _i15.AllPostsController(
          gh<_i10.PostService>(),
          gh<_i8.UserService>(),
        ));
    gh.lazySingleton<_i10.PostService>(
      () => _i10.FakePostService(gh<_i8.UserService>()),
      registerFor: {
        _dev,
        _test,
      },
    );
    gh.lazySingleton<_i16.PostsFeedController>(() => _i16.PostsFeedController(
          gh<_i10.PostService>(),
          gh<_i7.CacheService>(),
          gh<_i8.UserService>(),
        ));
    gh.lazySingleton<_i17.CurrentUserProfileController>(
        () => _i17.CurrentUserProfileController(
              gh<_i10.PostService>(),
              gh<_i8.UserService>(),
              gh<_i7.CacheService>(),
            ));
    gh.lazySingleton<_i18.PostDetailsController>(
        () => _i18.PostDetailsController(
              gh<_i14.RoutingService>(),
              gh<_i10.PostService>(),
              gh<_i7.CacheService>(),
            ));
    gh.factory<_i19.UpdatePostReactiveController>(
        () => _i19.UpdatePostReactiveController(
              gh<_i10.PostService>(),
              gh<_i14.RoutingService>(),
            ));
    gh.lazySingleton<_i20.CreatePostReactiveController>(
        () => _i20.CreatePostReactiveController(gh<_i10.PostService>()));
    return this;
  }
}

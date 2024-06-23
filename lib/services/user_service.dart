// ignore_for_file: lines_longer_than_80_chars

import 'dart:io';
import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/foundation.dart';
import 'package:oidc/oidc.dart';
import 'package:oidc_default_store/oidc_default_store.dart';
import 'package:social_media_bdaya/gen/bdaya/social_media_trainig/v1/user.pb.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/user.pb.dart';
import 'package:social_media_bdaya/gen/google/protobuf/wrappers.pb.dart';

abstract class UserService {
  final currentUser = SharedValue<UserDto?>(value: null);
  Future<void> init();
  Future<void> login();
  Future<void> logout();
  Future<UsersResponse> getUsers({int passedPageSize,String pageKey,bool status});
}

@LazySingleton(as: UserService, env: [Environment.prod,])
class RealUserService extends UserService {
  List<UserDto> users = [];
  //https://demo.duendesoftware.com/connect/authorize

  final OidcUserManager userManager = OidcUserManager.lazy(
    discoveryDocumentUri: OidcUtils.getOpenIdConfigWellKnownUri(
      Uri.parse('https://demo.duendesoftware.com'),
    ),
    clientCredentials: const OidcClientAuthentication.none(
      clientId: 'interactive.public',
    ),
    store: OidcDefaultStore(),
    settings: OidcUserManagerSettings(
      scope: ['openid', 'profile', 'email', 'offline_access'],
      postLogoutRedirectUri: kIsWeb
          // this url must be an actual html page.
          // see the file in /web/redirect.html for an example.
          //
          // for debugging in flutter, you must run this app with --web-port 22433
          ? Uri.parse('http://localhost:12345/redirect.html')
          : Platform.isIOS || Platform.isMacOS || Platform.isAndroid
              // scheme: reverse domain name notation of your package name.
              // path: anything.
              ? Uri.parse('com.bdayadev.social.media.bdaya:/oauth2redirect')
              : Platform.isWindows || Platform.isLinux
                  // using port 0 means that we don't care which port is used,
                  // and a random unused port will be assigned.
                  //
                  // this is safer than passing a port yourself.
                  //
                  // note that you can also pass a path like /redirect,
                  // but it's completely optional.
                  ? Uri.parse('http://localhost:0')
                  : Uri(),
      redirectUri: kIsWeb
          // this url must be an actual html page.
          // see the file in /web/redirect.html for an example.
          //
          // for debugging in flutter, you must run this app with --web-port 22433
          ? Uri.parse('http://localhost:12345/redirect.html')
          : Platform.isIOS || Platform.isMacOS || Platform.isAndroid
              // scheme: reverse domain name notation of your package name.
              // path: anything.
              ? Uri.parse('com.bdayadev.social.media.bdaya:/oauth2redirect')
              : Platform.isWindows || Platform.isLinux
                  // using port 0 means that we don't care which port is used,
                  // and a random unused port will be assigned.
                  //
                  // this is safer than passing a port yourself.
                  //
                  // note that you can also pass a path like /redirect,
                  // but it's completely optional.
                  ? Uri.parse('http://localhost:0')
                  : Uri(),
      options: const OidcPlatformSpecificOptions(
        web: OidcPlatformSpecificOptions_Web(
          navigationMode: OidcPlatformSpecificOptions_Web_NavigationMode.popup,
        ),
      ),
    ),
  );

  @override
  Future<void> init() async {
    await userManager.init();
    userManager.userChanges().listen((event) {
      currentUser.$ = UserDto(
        userInfo: UserInfo(
          id: event?.uid,
          name: event?.userInfo['name'].toString(),
          imageUrl: 'assets/avatar.jpg',
        ),
        isBanned: false,
      );
    },);

    Logger('Real User Service').info('init called');
  }

  @override
  Future<void> login() async {
    try {
      await userManager.loginAuthorizationCodeFlow();
      
    } on OidcException catch (e) {
      Logger('Oidc Exception').info(e.errorResponse.toString());
    }
  }

  @override
  Future<void> logout() async {
    await userManager.logout();
    currentUser.$ = null;
  }

  @override
  Future<UsersResponse> getUsers({int passedPageSize = 5,String pageKey ='',bool? status}) async {
    return UsersResponse();
  }
}

@LazySingleton(as: UserService, env: [Environment.test,Environment.dev])
class FakeUserService extends UserService {

  List<UserDto> users = [
      UserDto(
        userInfo: UserInfo(
          id: '3',
          imageUrl: 'assets/avatar.jpg',
          name: 'Saif',
        ),
        isBanned: true,
      ),
      UserDto(
        userInfo: UserInfo(
          id: '4',
          imageUrl: 'assets/avatar.jpg',
          name: 'Noor',
        ),
        isBanned: false,
      ),
      UserDto(
        userInfo: UserInfo(
          id: '5',
          imageUrl: 'assets/avatar.jpg',
          name: 'Ganna',
        ),
        isBanned: false,
      ),
      UserDto(
        userInfo: UserInfo(
          id: '6',
          name: 'Ahmed',
          imageUrl: 'assets/avatar.jpg',
        ),
        isBanned: false,
      ),
    ];

  @override
  Future<void> init() async {
    Logger('fake User Service').info('init called');
  }

  @override
  Future<void> login() async {
    currentUser.$ = UserDto(
      userInfo: UserInfo(
        id: '6',
        name: 'Ahmed',
        imageUrl: 'assets/avatar.jpg',
      ),
      isBanned: false,
    );
  }

  @override
  Future<void> logout() async {
    currentUser.$ = null;
  }

  @override
  Future<UsersResponse> getUsers({int passedPageSize = 5,String pageKey ='',bool? status}) async {

    Iterable<UserDto> result = users;

    final totalCount = users.length;
    String? nextPageToken;
    final offset = pageKey.isNotEmpty ? int.parse(pageKey) : 0;
    result = result.skip(offset);
    final pageSize = passedPageSize == 0 ?  3: passedPageSize;
    result = result.take(pageSize);
    if (offset+pageSize >= totalCount) {
      nextPageToken = null;
    } else {
      nextPageToken = (offset + pageSize).toString();
    }

    if (status == true) {
      result = result.where((element) => element.isBanned == true);
    }

    if (status == false){
      result = result.where((element) => element.isBanned == false);
    }

    return UsersResponse(
      users: result,
      nextPageToken: StringValue(value: nextPageToken),
    );
 }
}

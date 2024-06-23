// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';
import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/post.pb.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/service.pb.dart';
import 'package:social_media_bdaya/services/cache_service.dart';
import 'package:social_media_bdaya/services/post_service.dart';
import 'package:social_media_bdaya/services/routing_service.dart';

@lazySingleton
class PostDetailsController extends BdayaCombinedRouteController {
  PostDetailsController(
      this.routingService, this.postService, this.cacheService,) {
    //show a loading indicator as soon as the page loads, optional.
    defaultArea.startLoading();
  }

  final RoutingService routingService;
  final PostService postService;
  final CacheService cacheService;

  @override
  GoRouter get goRouter => routingService.router;

  //Add more route-dependant information here
  final idRx = SharedValue<String?>(value: null);

  final _refreshSignal = StreamController<DateTime>.broadcast();
  //call this to refresh the details from the database
  void refreshDetails() {
    _refreshSignal.add(DateTime.now());
  }

  final detailsRx = SharedValue<Post?>(value: null);
  final queryParamsRx = SharedValue<Map<String, String>>(value: {});

  @override
  bool get callOnRouteChangedInitially => true;

  @override
  void onRouteInformationChanged(GoRouterRouteMatch route) {
    //this gets called for route changes to current (or child) routes
    queryParamsRx.$ = route.uri.queryParameters;
    //To-do: correct path parameters
    idRx.$ = route.pathParameters['id'];
  }

  Future<Post?> initFromId(String id) async {
    //To-do: fetch from database, api, etc...
    //no need to try/catch here, since we are handling it in the stream below
    try {
      final resp = await postService.getPost(request: GetPostRequest(id: id));
      await cacheService.setString('Posts_$id', resp.result.toProto3Json()?.toString());
      return resp.result;
    } catch (e) {
      final cachedPostString = cacheService.getString('Posts_$id');
      if (cachedPostString == null) {
        rethrow;
      }
      return Post.fromJson(cachedPostString);
    }
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);

    // Register a stream to fetch data from the database based on changes to the id

    registerStream(
      Rx.combineLatest2(
        _refreshSignal.stream.startWith(DateTime.now()),
        idRx.streamWithInitial.distinct(),
        (timestamp, idValue) => idValue, //We only care about the id
      ).switchMap((value) {
        if (value == null) {
          return Stream.value(null);
        }
        return initFromId(value).asStream().wrapWithArea(
              defaultArea,
              logger,
              'An error occured while fetching data',
            );
      }).listen((event) {
        detailsRx.$ = event;
      } /*, onError: (error, stacktrace) {
        //do some error logic, like showing a snackbar, just make sure context.mounted is true        
        //NOTE: it's recommended to not do anything here, and do error viewing logic in the view instead
      }*/
          ),
    );
  }
}

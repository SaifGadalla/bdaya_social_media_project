// ignore_for_file: lines_longer_than_80_chars

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_image_picker/reactive_image_picker.dart';
import 'package:social_media_bdaya/gen/bdaya/social_media_trainig/v1/post-form.pb.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/service.pb.dart';
import 'package:social_media_bdaya/pages/update_post_reactive/form.dart';
import 'package:social_media_bdaya/services/post_service.dart';
import 'package:social_media_bdaya/services/routing_service.dart';

class UpdatePostReactiveFormParameters {

}

@injectable
class UpdatePostReactiveController extends BdayaCombinedRouteController {    
  UpdatePostReactiveController(this.postService, this.routingService,);

  final PostService postService;
  final RoutingService routingService;

  //     validators: [
  //       PostContentValidator(),
  //     ],

  @override
  GoRouter get goRouter => routingService.router; 


  final detailsRx = SharedValue<CreatePostReactiveDto?>(value: null);
  final idRx = SharedValue<String?>(value: null);
  final initialModelRx = SharedValue<UpdatePostReactiveModel?>(value: null);
  final formVersionRx = SharedValue(value: 0);
  final formGroupRx = SharedValue<UpdatePostReactiveModelForm?>(value: null);
  final imageRx = SharedValue<List<XFile>>(value: []);

  void addNewPostForm(UpdatePostReactiveModelForm formModel){
    formModel.addPostFormsItem(
      PostModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        postContent: '',
      ),
    );
  }

  @override
  void onRouteInformationChanged(GoRouterRouteMatch route) {
    final id = route.pathParameters['id'];
    idRx.$ = id;
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    
    registerStream(idRx.streamWithInitial.switchMap((id){
      if(id == null){
        return Stream.value(null);
      }
      return postService.getPost(
        request: GetPostRequest(
          id: id,
        ),).asStream();
    }).listen((event) {
      detailsRx.$?.postforms[0].postContent.value = event!.result.content;
      // detailsRx.$? =event!.result.images;
    }),);

    registerStream(
      detailsRx.streamWithInitial.listen((details) {
        initialModelRx.$ = UpdatePostReactiveModel(
          postForms: details == null ? [] : details.postforms.map((e) => PostModel(
            postContent: e.hasPostContent() ? e.postContent.value : null,
            id: e.id,
          ),).toList(),
        );
        formVersionRx.$++;
      }),
    );
  }

  void navigateToCurrentUserProfile(BuildContext context) {
    context.goNamed(
      AppRouteNames.currentUserProfile,
    );
  }

  Future<void> updatePost(UpdatePostReactiveModelForm formModel) async {
    await postService.updatePost(
      request: UpdatePostRequest(id: idRx.$),
    );
    Logger('post content').info(formModel);
  }

  void clearContent(UpdatePostReactiveModelForm formModel) {
    formModel.postFormsControl.reset();
    formModel.imageFormsControl.reset();
  }

  void reset(UpdatePostReactiveModelForm formModel) {
    formModel.postFormsClear();
    formModel.imageFormsControl.reset();
  }
}

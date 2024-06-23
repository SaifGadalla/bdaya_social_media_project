import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_image_picker/reactive_image_picker.dart';
import 'package:social_media_bdaya/gen/bdaya/social_training/v1/service.pb.dart';
import 'package:social_media_bdaya/services/post_service.dart';
import 'package:social_media_bdaya/services/routing_service.dart';
import 'form.dart';

@lazySingleton
class CreatePostReactiveController extends BdayaCombinedController {
  CreatePostReactiveController(this.postService,);

  final PostService postService;

  // ignore: prefer_const_constructors
  final initialModelRx = SharedValue(value: CreatePostReactiveModel());
  final formGroupRx = SharedValue<CreatePostReactiveModelForm?>(value: null);
  final imageRx = SharedValue<List<XFile>>(value: []);

  void addNewPostForm(CreatePostReactiveModelForm formModel) {
    formModel.addPostFormsItem(
      PostModel(
        id: DateTime.now().microsecondsSinceEpoch.toString(),
        postContent: null,
      ),
    );
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    //initialize initialModelRx from the passed parameters here
    // ignore: prefer_const_constructors
    initialModelRx.$ = CreatePostReactiveModel();
  }

  void navigateToCurrentUserProfile(BuildContext context) {
    context.goNamed(
      AppRouteNames.currentUserProfile,
    );
  }

  Future<void> createNewPost(CreatePostReactiveModelForm formModel) async {
    await postService.createPost(
      request: CreatePostRequest(),
    );
  }

  void clearContent(CreatePostReactiveModelForm formModel) {
    formModel.postFormsControl.reset();
    formModel.imageFormsControl.reset();
  }

  void reset(CreatePostReactiveModelForm formModel) {
    formModel.postFormsClear();
    formModel.imageFormsControl.reset();
  }
}

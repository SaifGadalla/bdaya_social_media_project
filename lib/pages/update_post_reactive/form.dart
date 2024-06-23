import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:reactive_image_picker/reactive_image_picker.dart';

part 'form.gform.dart';

@ReactiveFormAnnotation()
@FormGroupAnnotation<UpdatePostReactiveModel>()
class UpdatePostReactiveModel {
  const UpdatePostReactiveModel({
    @FormArrayAnnotation<PostModel>()  this.postForms = const [],
    @FormControlAnnotation<List<SelectedFile>>()  this.imageForms = const [],
  });


  final List<PostModel> postForms;
  final List<SelectedFile> imageForms;
}

@ReactiveFormAnnotation()
@FormGroupAnnotation<PostModel>()
class PostModel {
  PostModel({
    @FormControlAnnotation<String>() required this.id,
    @FormControlAnnotation<String>(
      validators: [
        PostContentValidator(),
      ],
    ) required this.postContent,
  });

  final String id;
  final String? postContent;
}

class PostContentValidator extends Validator<String> {

  const PostContentValidator();

  @override
  Map<String, dynamic>? validate(AbstractControl<String> control) {
    if (control.value.isNullOrEmpty) {
      return {
        ValidationMessage.required: 'Field must not be empty',
      };
    }
    return null;
  }
}

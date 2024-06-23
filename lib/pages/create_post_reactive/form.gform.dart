// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveCreatePostReactiveModelFormConsumer extends StatelessWidget {
  const ReactiveCreatePostReactiveModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      CreatePostReactiveModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCreatePostReactiveModelForm.of(context);

    if (formModel is! CreatePostReactiveModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class CreatePostReactiveModelFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const CreatePostReactiveModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final CreatePostReactiveModelForm form;
}

class ReactiveCreatePostReactiveModelForm extends StatelessWidget {
  const ReactiveCreatePostReactiveModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final CreatePostReactiveModelForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static CreatePostReactiveModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              CreatePostReactiveModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        CreatePostReactiveModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as CreatePostReactiveModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return CreatePostReactiveModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveCreatePostReactiveModelFormExt on BuildContext {
  CreatePostReactiveModelForm? createPostReactiveModelFormWatch() =>
      ReactiveCreatePostReactiveModelForm.of(this);

  CreatePostReactiveModelForm? createPostReactiveModelFormRead() =>
      ReactiveCreatePostReactiveModelForm.of(this, listen: false);
}

class CreatePostReactiveModelFormBuilder extends StatefulWidget {
  const CreatePostReactiveModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final CreatePostReactiveModel? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(BuildContext context,
      CreatePostReactiveModelForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, CreatePostReactiveModelForm formModel)? initState;

  @override
  _CreatePostReactiveModelFormBuilderState createState() =>
      _CreatePostReactiveModelFormBuilderState();
}

class _CreatePostReactiveModelFormBuilderState
    extends State<CreatePostReactiveModelFormBuilder> {
  late CreatePostReactiveModelForm _formModel;

  @override
  void initState() {
    _formModel = CreatePostReactiveModelForm(
        CreatePostReactiveModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant CreatePostReactiveModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveCreatePostReactiveModelForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class CreatePostReactiveModelForm
    implements FormModel<CreatePostReactiveModel> {
  CreatePostReactiveModelForm(
    this.form,
    this.path,
  );

  static const String postFormsControlName = "postForms";

  static const String imageFormsControlName = "imageForms";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String imageFormsControlPath() => pathBuilder(imageFormsControlName);

  String postFormsControlPath() => pathBuilder(postFormsControlName);

  List<SelectedFile> get _imageFormsValue => imageFormsControl.value ?? [];

  List<PostModel> get _postFormsValue =>
      postFormsPostModelForm.map((e) => e.model).toList();

  bool get containsImageForms {
    try {
      form.control(imageFormsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPostForms {
    try {
      form.control(postFormsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get imageFormsErrors => imageFormsControl.errors;

  Map<String, Object> get postFormsErrors => postFormsControl.errors;

  void get imageFormsFocus => form.focus(imageFormsControlPath());

  void get postFormsFocus => form.focus(postFormsControlPath());

  void imageFormsValueUpdate(
    List<SelectedFile> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    imageFormsControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postFormsValueUpdate(
    List<PostModel> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      postFormsClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <PostModel>[];
    final toAdd = <PostModel>[];

    localValue.asMap().forEach((k, v) {
      final values = (postFormsControl.controls).map((e) => e.value).toList();

      if (postFormsPostModelForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      postFormsControl.updateValue(
          toUpdate.map((e) => PostModelForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        postFormsControl.add(PostModelForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void postFormsInsert(
    int i,
    PostModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final values = (postFormsControl.controls).map((e) => e.value).toList();
    if (values.length < i) {
      addPostFormsItem(value);
      return;
    }

    postFormsControl.insert(
      i,
      PostModelForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void postFormsClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    postFormsPostModelForm.clear();
    postFormsControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void imageFormsValuePatch(
    List<SelectedFile> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    imageFormsControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postFormsValuePatch(
    List<PostModel> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = postFormsPostModelForm.asMap().keys;

    final toPatch = <PostModel>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    postFormsControl.patchValue(
        toPatch.map((e) => PostModelForm.formElements(e).rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void imageFormsValueReset(
    List<SelectedFile> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      imageFormsControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void postFormsValueReset(
    List<PostModel> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      postFormsControl.reset(
          value:
              value.map((e) => PostModelForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormControl<List<SelectedFile>> get imageFormsControl =>
      form.control(imageFormsControlPath()) as FormControl<List<SelectedFile>>;

  FormArray<Map<String, Object?>> get postFormsControl =>
      form.control(postFormsControlPath()) as FormArray<Map<String, Object?>>;

  List<PostModelForm> get postFormsPostModelForm {
    final values = (postFormsControl.controls).map((e) => e.value).toList();

    return values
        .asMap()
        .map((k, v) =>
            MapEntry(k, PostModelForm(form, pathBuilder("postForms.$k"))))
        .values
        .toList();
  }

  void imageFormsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      imageFormsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      imageFormsControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void postFormsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      postFormsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      postFormsControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<PostModelForm>>
      get postFormsExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<PostModelForm>>(
              form.control(postFormsControlPath())
                  as FormArray<Map<String, Object?>>,
              () => postFormsPostModelForm);

  void addPostFormsItem(PostModel value) {
    postFormsControl.add(PostModelForm.formElements(value));
  }

  void removePostFormsItemAtIndex(int i) {
    if ((postFormsControl.value ?? []).length > i) {
      postFormsControl.removeAt(i);
    }
  }

  void addPostFormsItemList(List<PostModel> value) {
    value.map((e) => addPostFormsItem(e));
  }

  @override
  CreatePostReactiveModel get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'CreatePostReactiveModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return CreatePostReactiveModel(
        postForms: _postFormsValue, imageForms: _imageFormsValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      postFormsPostModelForm.forEach((e) => e.toggleDisabled());

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      postFormsPostModelForm.forEach((e) => e.toggleDisabled());

      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  void submit({
    required void Function(CreatePostReactiveModel model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    CreatePostReactiveModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(CreatePostReactiveModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    CreatePostReactiveModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(
          CreatePostReactiveModel? createPostReactiveModel) =>
      FormGroup({
        postFormsControlName: FormArray(
            (createPostReactiveModel?.postForms ?? [])
                .map((e) => PostModelForm.formElements(e))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        imageFormsControlName: FormControl<List<SelectedFile>>(
            value: createPostReactiveModel?.imageForms,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class PostModelForm implements FormModel<PostModel> {
  PostModelForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  static const String postContentControlName = "postContent";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String idControlPath() => pathBuilder(idControlName);

  String postContentControlPath() => pathBuilder(postContentControlName);

  String get _idValue => idControl.value as String;

  String? get _postContentValue => postContentControl?.value;

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPostContent {
    try {
      form.control(postContentControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get idErrors => idControl.errors;

  Map<String, Object>? get postContentErrors => postContentControl?.errors;

  void get idFocus => form.focus(idControlPath());

  void get postContentFocus => form.focus(postContentControlPath());

  void postContentRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPostContent) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          postContentControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            postContentControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void idValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postContentValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    postContentControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void postContentValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    postContentControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void postContentValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      postContentControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

  FormControl<String>? get postContentControl => containsPostContent
      ? form.control(postContentControlPath()) as FormControl<String>?
      : null;

  void idSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      idControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      idControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void postContentSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      postContentControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      postContentControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  PostModel get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'PostModelForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return PostModel(id: _idValue, postContent: _postContentValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  void submit({
    required void Function(PostModel model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    PostModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PostModelForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    PostModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(PostModel? postModel) => FormGroup({
        idControlName: FormControl<String>(
            value: postModel?.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        postContentControlName: FormControl<String>(
            value: postModel?.postContent,
            validators: [PostContentValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveCreatePostReactiveModelFormArrayBuilder<
    ReactiveCreatePostReactiveModelFormArrayBuilderT> extends StatelessWidget {
  const ReactiveCreatePostReactiveModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveCreatePostReactiveModelFormArrayBuilderT>?
      formControl;

  final FormArray<ReactiveCreatePostReactiveModelFormArrayBuilderT>? Function(
      CreatePostReactiveModelForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      CreatePostReactiveModelForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveCreatePostReactiveModelFormArrayBuilderT? item,
      CreatePostReactiveModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCreatePostReactiveModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveCreatePostReactiveModelFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveCreatePostReactiveModelFormFormGroupArrayBuilder<
        ReactiveCreatePostReactiveModelFormFormGroupArrayBuilderT>
    extends StatelessWidget {
  const ReactiveCreatePostReactiveModelFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveCreatePostReactiveModelFormFormGroupArrayBuilderT>>?
      extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveCreatePostReactiveModelFormFormGroupArrayBuilderT>>
      Function(CreatePostReactiveModelForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      CreatePostReactiveModelForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveCreatePostReactiveModelFormFormGroupArrayBuilderT? item,
      CreatePostReactiveModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveCreatePostReactiveModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveCreatePostReactiveModelFormFormGroupArrayBuilderT>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactivePostModelFormConsumer extends StatelessWidget {
  const ReactivePostModelFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, PostModelForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePostModelForm.of(context);

    if (formModel is! PostModelForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class PostModelFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const PostModelFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final PostModelForm form;
}

class ReactivePostModelForm extends StatelessWidget {
  const ReactivePostModelForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final PostModelForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static PostModelForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<PostModelFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        PostModelFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as PostModelFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return PostModelFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactivePostModelFormExt on BuildContext {
  PostModelForm? postModelFormWatch() => ReactivePostModelForm.of(this);

  PostModelForm? postModelFormRead() =>
      ReactivePostModelForm.of(this, listen: false);
}

class PostModelFormBuilder extends StatefulWidget {
  const PostModelFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final PostModel? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, PostModelForm formModel, Widget? child) builder;

  final void Function(BuildContext context, PostModelForm formModel)? initState;

  @override
  _PostModelFormBuilderState createState() => _PostModelFormBuilderState();
}

class _PostModelFormBuilderState extends State<PostModelFormBuilder> {
  late PostModelForm _formModel;

  @override
  void initState() {
    _formModel = PostModelForm(PostModelForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant PostModelFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactivePostModelForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class ReactivePostModelFormArrayBuilder<ReactivePostModelFormArrayBuilderT>
    extends StatelessWidget {
  const ReactivePostModelFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactivePostModelFormArrayBuilderT>? formControl;

  final FormArray<ReactivePostModelFormArrayBuilderT>? Function(
      PostModelForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, PostModelForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactivePostModelFormArrayBuilderT? item,
      PostModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePostModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactivePostModelFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactivePostModelFormFormGroupArrayBuilder<
    ReactivePostModelFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactivePostModelFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactivePostModelFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactivePostModelFormFormGroupArrayBuilderT>>
      Function(PostModelForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, PostModelForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactivePostModelFormFormGroupArrayBuilderT? item,
      PostModelForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactivePostModelForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactivePostModelFormFormGroupArrayBuilderT>[])
                .asMap()
                .map((i, item) => MapEntry(
                      i,
                      itemBuilder(
                        context,
                        i,
                        item,
                        formModel,
                      ),
                    ))
                .values
                .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

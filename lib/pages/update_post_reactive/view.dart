// ignore_for_file: lines_longer_than_80_chars

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_image_picker/reactive_image_picker.dart';
import 'package:social_media_bdaya/l10n/l10n.dart';
import 'package:social_media_bdaya/pages/update_post_reactive/controller.dart';
import 'package:social_media_bdaya/pages/update_post_reactive/form.dart';

// import 'form.dart';

class UpdatePostReactiveView extends StatelessWidget {
  const UpdatePostReactiveView({
    required this.controller,
    super.key,
  });

  static Widget hooked({
    BdayaGetItHookMode hookMode = BdayaGetItHookMode.factory,
    String? instanceName,
    Object? param1,
    Object? param2,
    List<Object?>? keys,
  }) =>
      HookBuilder(
        builder: (context) => UpdatePostReactiveView(
          controller: useBdayaViewController(
            hookMode: hookMode,
            instanceName: instanceName,
            keys: keys,
            param1: param1,
            param2: param2,
          ),
        ),
      );

  // //TODO: Replace T with the expected modal result
  // static Future<T?> showModal<T>(
  //   BuildContext context, {
  //   required UpdatePostReactiveFormParameters params,
  // }) async {
  //   return await showDialog<T>(
  //     context: context,
  //     builder: (context) => Dialog(
  //       //TODO: assign dialog properties
  //       child: hooked(
  //         param1: params,
  //       ),
  //     ),
  //   );
  // }

  final UpdatePostReactiveController controller;

  @override
  Widget build(BuildContext context) {
    //see also BdayaMultiLoadableAreaWrapper, and BdayaLoadableAreaWrapper.custom
    return UpdatePostReactiveModelFormBuilder(
      model: controller.initialModelRx.$,
      initState: (context, formModel) {
        controller.formGroupRx.$ = formModel;
      },
      builder: (
        BuildContext context,
        UpdatePostReactiveModelForm formModel,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context).updatePost),
            actions: [
              ElevatedButton(
                onPressed: () {
                  if (formModel.postFormsControl.valid && formModel.postFormsControl.value!.isNotEmpty) {
                     controller
                    ..updatePost(formModel)
                    ..navigateToCurrentUserProfile(context);
                  }
                  return;
                },
                child: Text(AppLocalizations.of(context).update),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: ReactiveUpdatePostReactiveModelFormFormGroupArrayBuilder<
                    PostModelForm>(
                  extended: formModel.postFormsExtendedControl,
                  builder: (context, itemList, formModel) {
                    return ListView(
                      children: [
                        for (final fg in itemList) fg,
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            controller.addNewPostForm(formModel);
                          },
                          child: Text(AppLocalizations.of(context).addForm),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  },
                  itemBuilder: (
                    BuildContext context,
                    int i,
                    item,
                    UpdatePostReactiveModelForm formModel,
                  ) {
                    return PostFormWidget(
                      key: ValueKey(item?.idControl.value),
                      form: item!,
                      index: i,
                      onDelete: () {
                        formModel.postFormsControl.removeAt(i);
                      },
                    );
                  },
                ),
              ),
              Expanded(
                child: ReactiveImagePicker(
                  formControl: formModel.imageFormsControl,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.clearContent(formModel);
                },
                child: Text(AppLocalizations.of(context).clearContent),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.reset(formModel);
                },
                child: Text(AppLocalizations.of(context).reset),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
    );
  }
}

class PostFormWidget extends StatelessWidget {
  const PostFormWidget({
    required this.form,
    required this.index,
    required this.onDelete,
    super.key,
  });

  final int index;
  final PostModelForm form;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return ReactivePostModelForm(
      form: form,
      child: Row(
        children: [
          IconButton(
            onPressed: onDelete,
            icon: const Icon(Icons.delete),
          ),
          Text(index.toString()),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: ReactiveTextField<String>(
              formControl: form.postContentControl,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context).formFieldLabel,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

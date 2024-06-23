// ignore_for_file: lines_longer_than_80_chars

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:social_media_bdaya/pages/post_details/controller.dart';

class PostDetailsView extends StatelessWidget {
  const PostDetailsView({
    required this.controller,
    super.key,
  });

  static Widget hooked({
    BdayaGetItHookMode hookMode = BdayaGetItHookMode.lazySingleton,
    String? instanceName,
    Object? param1,
    Object? param2,
    List<Object?>? keys,
  }) =>
      HookBuilder(
        builder: (context) => PostDetailsView(
          controller: useBdayaViewController(
            hookMode: hookMode,
            instanceName: instanceName,
            keys: keys,
            param1: param1,
            param2: param2,
          ),
        ),
      );

  final PostDetailsController controller;

  @override
  Widget build(BuildContext context) {
    final id = controller.idRx.of(context);
    if (id == null) {
      return const SizedBox.shrink();
    }
    //see also BdayaMultiLoadableAreaWrapper,
    //and BdayaLoadableAreaWrapper.custom
    return BdayaLoadableAreaWrapper(
      area: controller.defaultArea,
      builder: (context) {
        //start using details after loading is done
        final details = controller.detailsRx.of(context);
        if (details == null) {
          return const SizedBox.shrink();
        }
        //show details here
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
          ),
          body: Column(
            // key: Key(categories[index].id),
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: const AssetImage('assets/backgroundImage.jpg'),
                      foregroundImage: AssetImage(details.user.imageUrl,),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        details.user.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        details.date.toString(),
                        style: TextStyle(
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  details.content,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      // //show errors
      // displayErrors: true,
      // //customize error builder
      // errorBuilder: (context, displayName, error, st) {

      // },
      // //customize loading builder
      // isLoadingBuilder: (context, displayName) {

      // },
    );
  }
}

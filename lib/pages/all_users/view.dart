// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:social_media_bdaya/gen/bdaya/social_media_trainig/v1/user.pb.dart';
import 'package:social_media_bdaya/l10n/l10n.dart';
import 'package:social_media_bdaya/pages/all_users/controller.dart';

class AllUsersView extends StatefulWidget {
  const AllUsersView({
    required this.controller,
    super.key,
  });

  static Widget hooked({
    BdayaGetItHookMode hookMode = BdayaGetItHookMode.lazySingleton,
    String? instanceName,
    Object? param1,
    Object? param2,
    List<Object?>? keys,
  }) {
    return HookBuilder(
      builder: (context) => AllUsersView(
        controller: useBdayaViewController(
          hookMode: hookMode,
          instanceName: instanceName,
          keys: keys,
          param1: param1,
          param2: param2,
        ),
      ),
    );
  }

  final AllUsersController controller;

  @override
  State<AllUsersView> createState() => _AllUsersViewState();
}

class _AllUsersViewState extends State<AllUsersView>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    widget.controller.tabController = TabController(length: 2, vsync: this);
  }

  final refreshStream = StreamController<DateTime>.broadcast();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: widget.controller.tabController,
          tabs: [
            Tab(
              text: AppLocalizations.of(context).users,
            ),
            Tab(
              text: AppLocalizations.of(context).bannedUsers,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: widget.controller.tabController,
        children: [
          UsersTabBuilder(
            status: false,
            controller: widget.controller,
            refreshStream: refreshStream.stream,
            onRefresh: ()=> refreshStream.add(DateTime.now()),
          ),
          UsersTabBuilder(
            status: true,
            controller: widget.controller,
            refreshStream: refreshStream.stream,
            onRefresh: ()=> refreshStream.add(DateTime.now()),
          ),
        ],
      ),
    );
  }
}

class UsersTabBuilder extends StatefulWidget {
  UsersTabBuilder({
    required this.status,
    required this.controller,
    required this.refreshStream,
    required this.onRefresh,
  }) : super(key: ValueKey(status));

  final bool status;
  final AllUsersController controller;
  final Stream<DateTime> refreshStream;
  final void Function() onRefresh;

  @override
  State<UsersTabBuilder> createState() => _UsersTabBuilderState();
}

class _UsersTabBuilderState extends State<UsersTabBuilder>
    with AutomaticKeepAliveClientMixin<UsersTabBuilder> {
  final pagingController = PagingController<String, UserDto>(firstPageKey: '0');

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    try {
      pagingController.addPageRequestListener((pageKey) async {
        final response = await widget.controller.userService.getUsers(
          passedPageSize: 10,
          pageKey: pageKey,
          status: widget.status,
        );

        if (response.hasNextPageToken() &&
            response.nextPageToken.hasValue() &&
            response.nextPageToken.value.isNotEmpty) {
          pagingController.appendPage(
            response.users,
            response.nextPageToken.toString(),
          );
        } else {
          pagingController.appendLastPage(response.users);
        }
      });
    } catch (e) {
      pagingController.error;
    }
    widget.refreshStream.listen((event) {
      pagingController.refresh();
    });
  }

  @override
  void dispose() {
    super.dispose();
    pagingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return PagedListView<String, UserDto>(
      pagingController: pagingController,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, user, index) {
          final banUser = AppLocalizations.of(context).banUser;
          final unBanUser = AppLocalizations.of(context).unBanUser;
          return Padding(
            key: ValueKey(user.userInfo.id),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        backgroundImage:
                            const AssetImage('assets/backgroundImage.jpg'),
                        foregroundImage: AssetImage(
                          user.userInfo.imageUrl,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(user.userInfo.name),
                    ),
                    PopupMenuButton(
                      icon: const Icon(Icons.more_horiz),
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            value: banUser,
                            child: Text(banUser),
                          ),
                          PopupMenuItem(
                            value: unBanUser,
                            child: Text(unBanUser),
                          ),
                        ];
                      },
                      onSelected: (value) {
                        if (value == banUser) {
                          user.isBanned = true;
                        } else if (value == unBanUser) {
                          user.isBanned = false;
                        }
                        widget.onRefresh();
                      },
                    ),
                  ],
                ),
                Container(
                  height: 5,
                  color: Colors.grey,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:social_media_bdaya/l10n/l10n.dart';
import 'package:social_media_bdaya/pages/dashboard/controller.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({
    required this.controller, super.key,
  });

  static Widget hooked({
    BdayaGetItHookMode hookMode = BdayaGetItHookMode.lazySingleton,
    String? instanceName,
    Object? param1,
    Object? param2,
    List<Object?>? keys,
  }) {
    return HookBuilder(
      builder: (context) => DashboardView(
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

  final DashboardController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
          90,
        ),
        child: AppBar(),
      ),
      body: AdminDashboard(
        controller: controller,
      ),
    );
  }
}

class UserDashboard extends StatelessWidget {
  const UserDashboard({required this.controller, super.key});

  final DashboardController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DashboardMaterialButton(
          onPressed: () => controller.navigateToSettings(context),
          data: AppLocalizations.of(context).settings,
        ),
        DashboardMaterialButton(
          onPressed: () => controller.navigateToCurrentUserProfile(context),
          data: AppLocalizations.of(context).currentUserProfile,
        ),
      ],
    );
  }
}

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({required this.controller, super.key});

  final DashboardController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserDashboard(
          controller: controller,
        ),
        DashboardMaterialButton(
          onPressed: () => controller.navigateToAllUsers(context),
          data: AppLocalizations.of(context).allUsers,
        ),
        DashboardMaterialButton(
          onPressed: () => controller.navigateToAllPosts(context),
          data: AppLocalizations.of(context).allPosts,
        ),
      ],
    );
  }
}

class DashboardMaterialButton extends StatelessWidget {
  const DashboardMaterialButton({
    required this.onPressed,
    required this.data,
    super.key,
  });

  final String data;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.maxFinite,
      height: 60,
      child: Text(
        data,
        style: const TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}

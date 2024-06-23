// ignore_for_file: lines_longer_than_80_chars

import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:social_media_bdaya/pages/all_posts/view.dart';
import 'package:social_media_bdaya/pages/all_users/view.dart';
import 'package:social_media_bdaya/pages/auth/view.dart';
import 'package:social_media_bdaya/pages/create_post_reactive/view.dart';
import 'package:social_media_bdaya/pages/current_user_profile/view.dart';
import 'package:social_media_bdaya/pages/dashboard/view.dart';
import 'package:social_media_bdaya/pages/onboarding/view.dart';
import 'package:social_media_bdaya/pages/post_details/view.dart';
import 'package:social_media_bdaya/pages/posts_feed/view.dart';
import 'package:social_media_bdaya/pages/settings/view.dart';
import 'package:social_media_bdaya/pages/update_post_reactive/view.dart';
import 'package:social_media_bdaya/services/user_service.dart';

class AppRouteNames {
  static const postsFeed = 'posts-feed';
  static const auth = 'auth';
  static const createPost = 'create-post';
  static const postDetails = 'post-details';
  static const likes = 'post-likes';
  static const comments = 'post-comments';
  static const shares = 'post-shares';
  static const profile = 'profile';
  static const currentUserProfile = 'current-user-profile';
  static const settings = 'settings';
  static const allUsers = 'all-users';
  static const allPosts = 'all-posts';
  static const dashboard = 'dashboard';
  static const onboarding = 'Onboarding';
  static const updatePost = 'update-post';
  static const ownPostDetails = 'ownPost-details';
}

@lazySingleton
class RoutingService {
  RoutingService(this.userService);

  final UserService userService;

  late final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: AppRouteNames.onboarding,
        builder: (context, state) => OnboardingView.hooked(),
        routes: [
          GoRoute(
            path: 'auth',
            name: AppRouteNames.auth,
            builder: (context, state) => AuthView.hooked(),
            redirect: (context, state) {
              if (userService.currentUser.$ != null) {
                final oldRoute = state.uri.queryParameters['oldRoute'] ?? '/';
                return oldRoute;
              }
              return null;
            },
          ),
          GoRoute(
            path: 'posts-feed',
            name: AppRouteNames.postsFeed,
            builder: (context, state) => PostsFeedView.hooked(),
            redirect: (context, state) {
              if (userService.currentUser.$ == null) {
                return state.namedLocation(
                  AppRouteNames.auth,
                  queryParameters: {
                    'oldRoute': state.uri.toString(),
                  },
                );
              }
              return null;
            },
            routes: [
              GoRoute(
                path: 'post/:id',
                name: AppRouteNames.postDetails,
                builder: (context, state) => PostDetailsView.hooked(),
              ),
              GoRoute(
                path: 'dashboard',
                name: AppRouteNames.dashboard,
                builder: (context, state) => DashboardView.hooked(),
                routes: [
                  GoRoute(
                    path: 'settings',
                    name: AppRouteNames.settings,
                    builder: (context, state) => SettingsView.hooked(),
                  ),
                  GoRoute(
                    path: 'all-posts',
                    name: AppRouteNames.allPosts,
                    builder: (context, state) => AllPostsView.hooked(),
                  ),
                  GoRoute(
                    path: 'all-users',
                    name: AppRouteNames.allUsers,
                    builder: (context, state) => AllUsersView.hooked(),
                  ),
                  GoRoute(
                    path: 'profile/current-user',
                    name: AppRouteNames.currentUserProfile,
                    builder: (context, state) =>
                        CurrentUserProfileView.hooked(),
                    routes: [
                      GoRoute(
                        path: 'create-post',
                        name: AppRouteNames.createPost,
                        builder: (context, state) => CreatePostReactiveView.hooked(),
                      ),
                      GoRoute(
                        path: 'update-post/:id',
                        name: AppRouteNames.updatePost,
                        builder: (context, state) => UpdatePostReactiveView.hooked(),
                      ),
                      GoRoute(
                        path: 'ownPost/:id',
                        name: AppRouteNames.ownPostDetails,
                        builder: (context, state) => PostDetailsView.hooked(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

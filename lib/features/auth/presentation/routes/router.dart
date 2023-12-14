import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:qrcode_bloc/features/auth/presentation/pages/error.dart';
import 'package:qrcode_bloc/features/auth/presentation/pages/login.dart';
import 'package:qrcode_bloc/features/auth/presentation/pages/settings.dart';
import 'package:qrcode_bloc/features/auth/presentation/routes/route_name.dart';

import '../pages/home.dart';

/// The route configuration.
final router = GoRouter(
  redirect: (context, state) {
    FirebaseAuth auth = FirebaseAuth.instance;
    //cek kondisi saat ini -> terauthentikasi apa tidak
    if (auth.currentUser == null) {
      //tidak sedang login or tidak ada user
      return "/login";
    } else {
      return null;
    }
  },
  errorBuilder: (context, state) => const ErrorPages(),
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: Routes.home,
      builder: (context, state) => const HomePages(),
    ),
    GoRoute(
      path: '/settings',
      name: Routes.settings,
      builder: (context, state) => const Settings(),
    ),
    GoRoute(
      path: '/login',
      name: Routes.login,
      builder: (context, state) => LoginPages(),
    )
  ],
);

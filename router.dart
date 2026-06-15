import 'package:go_router/go_router.dart';

// Import all screens
import '../features/auth/auth_screen.dart';
import '../features/features/home/home_screen.dart';
import '../features/shop/shop_screen.dart';
import '../features/product/product_detail_screen.dart';
import '../features/cart/cart_screen.dart';   // ← This was missing

final router = GoRouter(
  initialLocation: '/auth',
  routes: [
    GoRoute(
      path: '/auth',
      builder: (context, state) => const AuthScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/shop',
      builder: (context, state) => const ShopScreen(),
    ),
    GoRoute(
      path: '/product/:id',
      builder: (context, state) => ProductDetailScreen(id: state.pathParameters['id']!),
    ),
    GoRoute(
      path: '/cart',
      builder: (context, state) => const CartScreen(),
    ),
  ],
);
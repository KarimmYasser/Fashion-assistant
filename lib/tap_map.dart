import 'screens/cart_screen.dart';
import 'screens/chat_screen.dart';
import 'screens/favorite_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';

final List<Map<String, dynamic>> screenDetails = <Map<String, dynamic>>[
  <String, dynamic>{
    'screenName': const HomeScreen(),
  },
  <String, dynamic>{
    'screenName': const FavoriteScreen(),
  },
  <String, dynamic>{
    'screenName': const ChatScreen(),
  },
  <String, dynamic>{
    'screenName': const CartScreen(),
  },
  <String, dynamic>{
    'screenName': const ProfileScreen(),
  },
];

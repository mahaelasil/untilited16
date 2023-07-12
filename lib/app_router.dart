import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled16/screen/Detail_product.dart';
import 'package:untitled16/screen/add_new_card_screen.dart';
import 'package:untitled16/screen/cart_page.dart';
import 'package:untitled16/screen/chat_detail_page.dart';
import 'package:untitled16/screen/chat_page.dart';
import 'package:untitled16/screen/create_account_screen.dart';
import 'package:untitled16/screen/finish_order.dart';
import 'package:untitled16/screen/forgot_password_screen.dart';
import 'package:untitled16/screen/home_page.dart';

import 'package:untitled16/screen/item_page.dart';
import 'package:untitled16/screen/locationApp.dart';

import 'package:untitled16/screen/login_screen.dart';
import 'package:untitled16/screen/home_screen.dart';
import 'package:untitled16/screen/login_success2_screen.dart';
import 'package:untitled16/screen/login_success_screen.dart';
import 'package:untitled16/screen/on_boarding_screen.dart';
import 'package:untitled16/screen/order.dart';
import 'package:untitled16/screen/profile.dart';
import 'package:untitled16/screen/rate_order.dart';
import 'package:untitled16/screen/rate_restaurant.dart';
import 'package:untitled16/screen/sign_up_screen.dart';

import 'package:untitled16/screen/splash/splash_Screen.dart';
import 'package:untitled16/screen/verification_code_screen.dart';
import 'package:untitled16/screen/voucher_promo.dart';
import 'package:untitled16/widgets/bottomNavBar.dart';
import 'package:untitled16/widgets/home.dart';

import 'core/screen.dart';

class AppRouter {
  late Widget startScreen;

  Route? onGenerateRoute(RouteSettings settings) {
    startScreen = const SplashScreen();

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startScreen);
      case loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case loginSuccessScreen:
        return MaterialPageRoute(builder: (_) => const LoginSuccessScreen());
      case loginSuccess2Screen:
        return MaterialPageRoute(builder: (_) => const LoginSuccess2Screen());
      case createAccountScreen:
        return MaterialPageRoute(builder: (_)=>const CreateAccountScreen());
      case verificationCodeScreen:
        return MaterialPageRoute(builder: (_)=>const VerificationCodeScreen());
      case signUpScreen:
        return MaterialPageRoute(builder: (_)=>const SignUpScreen());
      case profile:
        return MaterialPageRoute(builder: (_)=>const Profile());
      case detailProduct:
        return MaterialPageRoute(builder: (_)=>const DetailProduct());
      case forgotPasswordScreen:
        return MaterialPageRoute(builder: (_)=>const ForgotPasswordScreen());
      case onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case favouritePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case catogorypage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case chatPage:
        return MaterialPageRoute(builder: (_) => const ChatPage());
      case chatDetailPage:
        return MaterialPageRoute(builder: (_) => const ChatDetailPage());
      case mainPage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case finishOrder:
        return MaterialPageRoute(builder: (_) => const FinishOrder());
      case rateOrder:
        return MaterialPageRoute(builder: (_) => const RateOrder());
      case rateRestaurant:
        return MaterialPageRoute(builder: (_) => const RateRestaurant());
      case voucherPromo:
        return MaterialPageRoute(builder: (_) => const VoucherPromo());
      case cartPage:
        return MaterialPageRoute(builder: (_) => const CartPage());
      case itemPage:
        return MaterialPageRoute(builder: (_) => const ItemPage());
      case bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      case home:
        return MaterialPageRoute(builder: (_) => const Home());
      case addNewCardScreen:
        return MaterialPageRoute(builder: (_) => const AddNewCardScreen());
      case order:
        return MaterialPageRoute(builder: (_) => const Order());
      case locationApp:
        return MaterialPageRoute(builder: (_) => const LocationApp());
      case homeScreen:
        final Map data = settings.arguments as Map;
        final String myPassword = data['password'];
        if (kDebugMode) {
          print(myPassword);
        }
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return null;
    }
  }
}

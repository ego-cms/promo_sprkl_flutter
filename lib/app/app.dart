/* ******************************************************** */
/* 2023 © TheSprkl for Flutter PROMO (www.thesprkl.io)      */
/* is a proprietary product developed by                    */
/* EGO Creative Innovations Limited (www.ego-cms.com)       */
/* This is a reduced demo version of TheSprkl, the rights   */
/* and terms of use of which are governed by a separate     */
/* commercial license.                                      */
/*                                                          */
/* This promo version is fully functional but contains a    */
/* limited number of items.                                 */
/*                                                          */
/* EULA https://www.thesprkl.io/legal/eula                  */
/* Support https://www.thesprkl.io/contact-us               */
/* Discord https://discord.gg/3qjXP9jCra                    */
/*                                                          */
/* ******************************************************** */

import 'package:flutter/material.dart';
import 'package:thesprkl_template/template/template.dart';
import 'package:sprkl_flutter/sprkl_flutter.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeService.builder(
        primaryColor: const Color(0xffF59E0B),
        primaryPalette: ColorHelper.generatePalette(const Color(0xffF59E0B)),
        accentColor: const Color(0xffF59E0B),
      ).theme.copyWith(
          scaffoldBackgroundColor: const Color(0xfff5f5f5),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xfff5f5f5),
          )),
      navigatorKey: rootNavigatorKey,
      initialRoute: LoadingPage.routeName,
      routes: {
        RootNavigator.routeName: (context) => const RootNavigator(),
        LoadingPage.routeName: (context) => const LoadingPage(),
        AuthNavigator.routeName: (context) => const AuthNavigator(),
        ProfileSettingsPage.routeName: (context) => const ProfileSettingsPage(),
        ChatsDetailsPage.routeName: (context) => const ChatsDetailsPage(),
      },
    );
  }
}

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

part of template;

class AuthNavigator extends StatefulWidget {
  static const routeName = '/auth';
  const AuthNavigator({Key? key}) : super(key: key);

  @override
  AuthNavigatorState createState() => AuthNavigatorState();
}

class AuthNavigatorState extends State<AuthNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: authNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case LoginPage.routeName:
                return const LoginPage();
              case WelcomePage.routeName:
                return const WelcomePage();
              case RegisterPage.routeName:
                return const RegisterPage();
              case CreateProfilePage.routeName:
                return const CreateProfilePage();

              default:
                return const WelcomePage();
            }
          },
        );
      },
    );
  }
}

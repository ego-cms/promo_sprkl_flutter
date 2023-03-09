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

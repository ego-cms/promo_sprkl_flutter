part of template;

class ProfileNavigator extends StatefulWidget {
  const ProfileNavigator({Key? key}) : super(key: key);

  @override
  ProfileNavigatorState createState() => ProfileNavigatorState();
}

class ProfileNavigatorState extends State<ProfileNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: profileNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case ProfilePage.routeName:
                return const ProfilePage();
              default:
                return const ProfilePage();
            }
          },
        );
      },
    );
  }
}

part of template;

class HomeSocialNavigator extends StatefulWidget {
  const HomeSocialNavigator({Key? key}) : super(key: key);

  @override
  HomeSocialNavigatorState createState() => HomeSocialNavigatorState();
}

class HomeSocialNavigatorState extends State<HomeSocialNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: homeSocialNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case HomeSocialPage.routeName:
                return const HomeSocialPage();
              default:
                return const HomeSocialPage();
            }
          },
        );
      },
    );
  }
}

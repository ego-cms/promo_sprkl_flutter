part of template;

class DashboardNavigator extends StatefulWidget {
  const DashboardNavigator({Key? key}) : super(key: key);

  @override
  DashboardNavigatorState createState() => DashboardNavigatorState();
}

class DashboardNavigatorState extends State<DashboardNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: dashboardNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case DashboardPage.routeName:
                return const DashboardPage();
              default:
                return const DashboardPage();
            }
          },
        );
      },
    );
  }
}

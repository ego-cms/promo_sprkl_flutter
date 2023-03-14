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

part of template;

class ChatsNavigator extends StatefulWidget {
  const ChatsNavigator({Key? key}) : super(key: key);

  @override
  ChatsNavigatorState createState() => ChatsNavigatorState();
}

class ChatsNavigatorState extends State<ChatsNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: chatsNavigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case ChatsPage.routeName:
                return const ChatsPage();
              default:
                return const ChatsPage();
            }
          },
        );
      },
    );
  }
}

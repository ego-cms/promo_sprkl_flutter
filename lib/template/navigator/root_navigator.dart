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

class RootNavigator extends StatefulWidget {
  static const routeName = '/root';

  const RootNavigator({Key? key}) : super(key: key);

  @override
  RootNavigatorState createState() => RootNavigatorState();
}

class RootNavigatorState extends State<RootNavigator> {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;

  int _selectedIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    homeSocialNavigatorKey,
    chatsNavigatorKey,
    profileNavigatorKey,
    dashboardNavigatorKey
  ];

  Future<bool> onBackButtonPressed() async =>
      !await _navigatorKeys[_selectedIndex].currentState!.maybePop();

  _hideKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onBackButtonPressed,
      child: GestureDetector(
        onTap: () {
          _hideKeyboard();
        },
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: colors.neutralsColors!.whitePalette!.c100,
            fixedColor: colors.neutralsColors!.black,
            unselectedItemColor: colors.neutralsColors!.neutralPalette!.c400,
            selectedLabelStyle: styles.caption,
            unselectedLabelStyle: styles.caption,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '•',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: '•',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: '•',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: '•',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: (int index) {
              _hideKeyboard();
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          body: SafeArea(
            top: false,
            child: IndexedStack(
              index: _selectedIndex,
              children: const <Widget>[
                HomeSocialNavigator(),
                ChatsNavigator(),
                ProfileNavigator(),
                DashboardNavigator()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

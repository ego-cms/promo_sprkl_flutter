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

class WelcomePage extends StatefulWidget {
  static const String routeName = '/welcome';
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;

  @override
  Widget build(BuildContext context) {
    return AnimateWrapper(
      backgroundColor: colors.neutralsColors!.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Source.welcome2),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Welcome here!', style: styles.headerXS!),
                  const SizedBox(height: 122),
                  SprklButton.expanded(
                    text: 'Log in',
                    backgroundColor:
                        colors.neutralsColors!.neutralPalette!.c900,
                    onPressed: () async {
                      await authNavigatorKey.currentState!
                          .pushNamed(LoginPage.routeName);
                      EventService().send(
                        AnimateWrapperArgs(AnimateWrapperAction.clear),
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  SprklButton.expanded(
                    text: 'Registration',
                    onPressed: () {
                      authNavigatorKey.currentState!
                          .pushNamed(RegisterPage.routeName);
                    },
                    backgroundColor: Colors.transparent,
                    borderColor: colors.neutralsColors!.neutralPalette!.c200,
                    primaryColor: colors.neutralsColors!.neutralPalette!.c900,
                    hasBorder: true,
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

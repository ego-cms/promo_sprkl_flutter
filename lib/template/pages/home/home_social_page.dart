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

class HomeSocialPage extends StatefulWidget {
  static const String routeName = '/social-home';
  const HomeSocialPage({super.key});

  @override
  State<HomeSocialPage> createState() => _HomeSocialPageState();
}

class _HomeSocialPageState extends State<HomeSocialPage>
    with SingleTickerProviderStateMixin {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;

  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: colors.neutralsColors!.white,
            elevation: 0,
            title: Row(
              children: [
                SprklAvatar.assets(
                    assets: Source.avatar, size: SprklImageSize.xxs),
                const SizedBox(width: 12),
                Text('Home',
                    style: styles.labelM!.copyWith(
                        color: colors.neutralsColors!.neutralPalette!.c900)),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: colors.neutralsColors!.neutralPalette!.c900,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications_outlined,
                  color: colors.neutralsColors!.neutralPalette!.c900,
                ),
                onPressed: () {},
              )
            ]),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 2),
              color: colors.neutralsColors!.white,
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(2),
                height: 32,
                decoration: BoxDecoration(
                  color: colors.neutralsColors!.neutralPalette!.c200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    SizedBox(
                      height: double.infinity,
                      child: Row(
                        children: [
                          const Spacer(),
                          Container(
                            width: 1,
                            height: 16,
                            color: colors.neutralsColors!.neutralPalette!.c300,
                          ),
                          const Spacer(),
                          Container(
                            width: 1,
                            height: 16,
                            color: colors.neutralsColors!.neutralPalette!.c300,
                          ),
                          const Spacer()
                        ],
                      ),
                    ),
                    TabBar(
                      controller: controller,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: colors.neutralsColors!.black,
                      ),
                      labelColor: colors.neutralsColors!.white,
                      labelStyle: styles.labelM!.copyWith(fontSize: 14),
                      unselectedLabelColor: colors.neutralsColors!.black,
                      tabs: const [
                        Tab(child: Text('Feed')),
                        Tab(child: Text('For you')),
                        Tab(child: Text('Actual')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(controller: controller, children: const [
                FeedPage(),
                ForYouPage(),
                ActualPage(),
              ]),
            ),
          ],
        ));
  }
}

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

class DashboardPage extends StatefulWidget {
  static const String routeName = '/bank-home';
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;

  Widget card({
    required String amount,
    required String cardName,
    required String date,
    required String number,
    required Color background1,
    required Color background2,
    required Color amountColor,
    required Color cardNameColor,
    required Color dateColor,
    required Color numberColor,
  }) {
    return Container(
      width: 240,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.only(top: 32, bottom: 16),
      child: Column(
        children: [
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24), topRight: Radius.circular(24)),
              color: background1,
            ),
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
              child: Row(
                children: [
                  Text(cardName,
                      style: styles.caption!.copyWith(color: cardNameColor)),
                  const Spacer(),
                  Text(date, style: styles.caption!.copyWith(color: dateColor))
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24)),
              color: background2,
            ),
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    amount,
                    textAlign: TextAlign.start,
                    style: styles.labelM!
                        .copyWith(color: amountColor, fontSize: 28),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(number,
                          style: styles.caption!.copyWith(color: numberColor)),
                      const Spacer(),
                      Image.asset(Source.visa)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget actionItem(String source) {
    return Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          color: colors.neutralsColors!.neutralPalette!.c100,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(source));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.neutralsColors!.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: colors.neutralsColors!.white,
          title: Text('Banking App',
              style: styles.labelM!.copyWith(
                  color: colors.neutralsColors!.neutralPalette!.c900)),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: colors.neutralsColors!.neutralPalette!.c900,
              ),
              onPressed: () {},
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  card(
                      amount: '\$ 25,400',
                      cardName: 'Debit Card',
                      date: '09/25',
                      number: '•••• 8200',
                      background1: colors.primaryColors!.primaryPalette!.c100,
                      background2: colors.neutralsColors!.neutralPalette!.c900,
                      amountColor: colors.neutralsColors!.white!,
                      cardNameColor: colors.primaryColors!.primaryPalette!.c600,
                      dateColor: colors.primaryColors!.primaryPalette!.c500,
                      numberColor: colors.neutralsColors!.whitePalette!.c48),
                  card(
                      amount: '\$ 100',
                      cardName: 'Credit Card',
                      date: '09/25',
                      number: '•••• 6420',
                      background1: const Color(0xffE0E7FF),
                      background2: const Color(0xffE0E7FF),
                      amountColor: colors.neutralsColors!.neutralPalette!.c900,
                      cardNameColor: const Color(0xff4F46E5),
                      dateColor: const Color(0xff4F46E5),
                      numberColor: colors.neutralsColors!.neutralPalette!.c400),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                actionItem(Source.arrowDown),
                actionItem(Source.arrowUp),
                actionItem(Source.arrows),
                actionItem(Source.shape)
              ],
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: Text('Last transactions',
                  style: styles.bodyM!.copyWith(fontWeight: FontWeight.w600)),
            ),
            const SizedBox(height: 8),
            SprklListItem.custom(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                image: Image.asset(Source.uber),
                itemHeight: 64,
                title: 'Uber',
                titleTextStyle: styles.labelM,
                subTitle: 'Transport',
                subTitleTextStyle: styles.caption!.copyWith(
                    color: colors.neutralsColors!.neutralPalette!.c400),
                customAction: Text('-\$ 2', style: styles.bodyM)),
            SprklListItem.custom(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                image: Image.asset(Source.spotify),
                itemHeight: 64,
                title: 'Spotify',
                titleTextStyle: styles.labelM,
                subTitle: 'Music',
                subTitleTextStyle: styles.caption!.copyWith(
                    color: colors.neutralsColors!.neutralPalette!.c400),
                customAction: Text('-\$ 9', style: styles.bodyM)),
            SprklListItem.custom(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                image: Image.asset(Source.dribble),
                itemHeight: 64,
                title: 'Dribble',
                titleTextStyle: styles.labelM,
                subTitle: 'Services',
                subTitleTextStyle: styles.caption!.copyWith(
                    color: colors.neutralsColors!.neutralPalette!.c400),
                customAction: Text('-\$ 64', style: styles.bodyM))
          ],
        ),
      ),
    );
  }
}

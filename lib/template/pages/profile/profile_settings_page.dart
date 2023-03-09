part of template;

class ProfileSettingsPage extends StatefulWidget {
  const ProfileSettingsPage({super.key});
  static const routeName = '/profile-settings';

  @override
  State<ProfileSettingsPage> createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;

  Widget settingsItemIcon(IconData data) {
    return Container(
      height: 36,
      width: 36,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36)),
      child: Icon(data, color: colors.neutralsColors!.neutralPalette!.c900),
    );
  }

  Widget settingsItem({required String title, required IconData data}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SprklListItem.chevron(
        title: title,
        chevronText: '',
        padding: EdgeInsets.zero,
        itemHeight: 56,
        titleTextStyle: styles.labelS!
            .copyWith(color: colors.neutralsColors!.neutralPalette!.c900),
        chevronColor: colors.neutralsColors!.neutralPalette!.c300,
        image: settingsItemIcon(data),
      ),
    );
  }

  Widget get separator => Container(
        height: 0.5,
        width: double.infinity,
        color: colors.neutralsColors!.neutralPalette!.c200,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: colors.neutralsColors!.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.chevron_left,
              color: colors.neutralsColors!.neutralPalette!.c900),
          onPressed: () {
            rootNavigatorKey.currentState!.pop();
          },
        ),
        title: Text('Settings',
            style: styles.headerXXS!
                .copyWith(color: colors.neutralsColors!.neutralPalette!.c900)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('GENERAL',
                      style: styles.overline!.copyWith(
                          color: colors.neutralsColors!.neutralPalette!.c900)),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: colors.neutralsColors!.white),
                    child: Column(children: [
                      settingsItem(
                          title: 'Notification',
                          data: Icons.notifications_outlined),
                      separator,
                      settingsItem(
                          title: 'Account',
                          data: Icons.account_circle_outlined),
                      separator,
                      settingsItem(
                          title: 'Appearance', data: Icons.color_lens_outlined),
                      separator,
                      settingsItem(
                          title: 'Application', data: Icons.settings_outlined),
                      separator,
                      settingsItem(
                          title: 'Privacy', data: Icons.shield_outlined),
                      separator,
                      settingsItem(title: 'Black list', data: Icons.list),
                    ]),
                  ),
                  const SizedBox(height: 24),
                  Text('Subscriptions'.toUpperCase(),
                      style: styles.overline!.copyWith(
                          color: colors.neutralsColors!.neutralPalette!.c900)),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: colors.neutralsColors!.white),
                    child: Column(children: [
                      settingsItem(
                          title: 'Balance',
                          data: Icons.account_balance_wallet_outlined),
                      separator,
                      settingsItem(
                          title: 'Subscriptions', data: Icons.article_outlined),
                      separator,
                      settingsItem(
                          title: 'Transactions', data: Icons.payment_outlined),
                    ]),
                  )
                ],
              ))),
    );
  }
}

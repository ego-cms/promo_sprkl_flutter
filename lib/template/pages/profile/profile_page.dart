part of template;

class ProfilePage extends StatefulWidget {
  static const String routeName = '/profile';
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: colors.neutralsColors!.white,
          elevation: 0,
          title: Text('Profile',
              style: styles.headerXXS!.copyWith(
                  color: colors.neutralsColors!.neutralPalette!.c900)),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.settings,
                  color: colors.neutralsColors!.neutralPalette!.c900),
              onPressed: () {
                rootNavigatorKey.currentState!
                    .pushNamed(ProfileSettingsPage.routeName);
              },
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: colors.neutralsColors!.white,
              child: Column(children: [
                const SizedBox(height: 16),
                const SprklAvatar.builder(
                  value: Source.avatar,
                  size: 120,
                  source: SprklAvatarImageSource.assets,
                ),
                const SizedBox(height: 12),
                Text('Andrew Grey', style: styles.labelM),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
                  child: SprklButton.expanded(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      prefix: Icon(
                        Icons.edit_outlined,
                        color: colors.neutralsColors!.white,
                        size: 16,
                      ),
                      iconSpacer: 4,
                      text: 'Edit profile',
                      onPressed: () {},
                      backgroundColor:
                          colors.neutralsColors!.neutralPalette!.c900,
                      textStyle: styles.labelM!.copyWith(
                        color: colors.neutralsColors!.white,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 24, bottom: 16),
                  child: Row(children: [
                    Expanded(
                      child: SprklButton.expanded(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        iconSpacer: 6,
                        prefix: Icon(Icons.grid_on,
                            color: colors.neutralsColors!.neutralPalette!.c900,
                            size: 20),
                        text: 'Post',
                        borderRadius: 8,
                        backgroundColor:
                            colors.neutralsColors!.whitePalette!.c8,
                        textStyle: styles.labelM!.copyWith(
                          color: colors.neutralsColors!.neutralPalette!.c900,
                        ),
                        borderColor:
                            colors.neutralsColors!.neutralPalette!.c400,
                        elevation: 0,
                        onPressed: () {},
                        hasBorder: true,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: SprklButton.expanded(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        iconSpacer: 6,
                        prefix: FaIcon(FontAwesomeIcons.instagram,
                            color: colors.neutralsColors!.neutralPalette!.c900,
                            size: 20),
                        text: 'Story',
                        borderRadius: 8,
                        backgroundColor:
                            colors.neutralsColors!.whitePalette!.c8,
                        textStyle: styles.labelM!.copyWith(
                          color: colors.neutralsColors!.neutralPalette!.c900,
                        ),
                        borderColor:
                            colors.neutralsColors!.neutralPalette!.c400,
                        elevation: 0,
                        onPressed: () {},
                        hasBorder: true,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: SprklButton.expanded(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        iconSpacer: 6,
                        prefix: Icon(Icons.photo_camera_outlined,
                            color: colors.neutralsColors!.neutralPalette!.c900,
                            size: 20),
                        text: 'Photo',
                        borderRadius: 8,
                        backgroundColor:
                            colors.neutralsColors!.whitePalette!.c8,
                        textStyle: styles.labelM!.copyWith(
                          color: colors.neutralsColors!.neutralPalette!.c900,
                        ),
                        borderColor:
                            colors.neutralsColors!.neutralPalette!.c400,
                        elevation: 0,
                        onPressed: () {},
                        hasBorder: true,
                      ),
                    ),
                  ]),
                ),
              ]),
            ),
            const PostWidget(
              hasDivider: false,
              title: 'Marvin McKinney',
              subtitle: 'Yesterday at 20:30',
              avatarSource: Source.avatar,
              description:
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
              imageSource: Source.pic4,
            ),
          ],
        ),
      ),
    );
  }
}

part of template;

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;

  Widget textAvatarWrapper(
      {required String text, required Widget child, required Color color}) {
    return Column(
      children: [
        child,
        const SizedBox(height: 4),
        Text(text, style: styles.caption!.copyWith(color: color)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              color: colors.neutralsColors!.white,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 24),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              textAvatarWrapper(
                                text: 'Create',
                                color:
                                    colors.neutralsColors!.neutralPalette!.c400,
                                child: SprklRoundedButton.icon(
                                  iconData: Icons.add,
                                  buttonSize: 48,
                                  iconColor: colors
                                      .neutralsColors!.neutralPalette!.c900,
                                  backgroundColor: colors
                                      .neutralsColors!.neutralPalette!.c200,
                                ),
                              ),
                              const SizedBox(width: 24),
                              textAvatarWrapper(
                                text: 'Klement',
                                color:
                                    colors.neutralsColors!.neutralPalette!.c500,
                                child: SprklAvatar.assets(
                                  assets: Source.klement,
                                  size: SprklImageSize.s,
                                  borderColor:
                                      colors.neutralsColors!.whitePalette!.c8,
                                ),
                              ),
                              const SizedBox(width: 24),
                              textAvatarWrapper(
                                text: 'Kim',
                                color:
                                    colors.neutralsColors!.neutralPalette!.c500,
                                child: SprklAvatar.assets(
                                  assets: Source.kim,
                                  size: SprklImageSize.s,
                                  borderColor:
                                      colors.neutralsColors!.whitePalette!.c8,
                                ),
                              ),
                              const SizedBox(width: 24),
                              textAvatarWrapper(
                                text: 'Merel',
                                color:
                                    colors.neutralsColors!.neutralPalette!.c500,
                                child: SprklAvatar.assets(
                                  assets: Source.merel,
                                  size: SprklImageSize.s,
                                  borderColor:
                                      colors.neutralsColors!.whitePalette!.c8,
                                ),
                              ),
                              const SizedBox(width: 24),
                              textAvatarWrapper(
                                text: 'Olsen',
                                color:
                                    colors.neutralsColors!.neutralPalette!.c500,
                                child: SprklAvatar.assets(
                                  assets: Source.olsen,
                                  size: SprklImageSize.s,
                                  borderColor:
                                      colors.neutralsColors!.whitePalette!.c8,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 24, bottom: 16),
                    child: SprklButton.expanded(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      text: 'New post',
                      onPressed: () {},
                      backgroundColor: Colors.transparent,
                      textStyle: styles.labelM!.copyWith(
                        color: colors.neutralsColors!.neutralPalette!.c900,
                      ),
                      borderColor: colors.neutralsColors!.neutralPalette!.c400,
                      hasBorder: true,
                    ),
                  ),
                ],
              )),
          const PostWidget(
            title: 'Marvin McKinney',
            subtitle: 'Yesterday at 20:30',
            avatarSource: Source.marvin,
            description:
                'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
            imageSource: Source.pic3,
          ),
        ],
      ),
    );
  }
}

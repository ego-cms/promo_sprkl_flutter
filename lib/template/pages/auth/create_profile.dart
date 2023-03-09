part of template;

class CreateProfilePage extends StatefulWidget {
  static const String routeName = '/createProfile';
  const CreateProfilePage({super.key});

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;

  @override
  Widget build(BuildContext context) {
    return AnimateWrapper(
      backgroundColor: colors.neutralsColors!.white,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.chevron_left,
                color: colors.neutralsColors!.neutralPalette!.c900),
            onPressed: () {
              authNavigatorKey.currentState!.pop();
            },
          ),
          title: Text('Create profile',
              style: styles.headerXXS!.copyWith(
                  color: colors.neutralsColors!.neutralPalette!.c900)),
          centerTitle: true,
        ),
        body: LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
                child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraint.maxHeight),
                    child: IntrinsicHeight(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          const SizedBox(height: 48),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              const SprklAvatar.builder(
                                value: Source.avatar,
                                size: 120,
                                source: SprklAvatarImageSource.assets,
                              ),
                              Positioned(
                                  bottom: 6,
                                  right: 6,
                                  child: SprklRoundedButton.icon(
                                      iconData: Icons.edit_outlined,
                                      buttonSize: 24,
                                      iconSize: 16,
                                      iconColor: colors
                                          .neutralsColors!.neutralPalette!.c700,
                                      backgroundColor:
                                          colors.primaryColors!.accent)),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text('Andrew Grey',
                              style: styles.labelM!.copyWith(
                                  color: colors
                                      .neutralsColors!.neutralPalette!.c900)),
                          const Spacer(),
                          SprklInput.cleanable(
                            hintText: 'Phone',
                            borderRadius: 16,
                            backgroundColor: Colors.transparent,
                            normalStateColor:
                                colors.neutralsColors!.neutralPalette!.c200,
                            hintTextColor:
                                colors.neutralsColors!.neutralPalette!.c400,
                            normalTextColor:
                                colors.neutralsColors!.neutralPalette!.c700,
                            keyboardType: TextInputType.phone,
                          ),
                          const SizedBox(height: 24),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Birth date',
                                style: styles.labelS!.copyWith(
                                  color: colors
                                      .neutralsColors!.neutralPalette!.c400,
                                )),
                          ),
                          const SizedBox(height: 4),
                          Row(children: [
                            Expanded(
                              child: SprklInput.builder(
                                hintText: 'Day',
                                borderRadius: 16,
                                backgroundColor: Colors.transparent,
                                normalStateColor:
                                    colors.neutralsColors!.neutralPalette!.c200,
                                hintTextColor:
                                    colors.neutralsColors!.neutralPalette!.c400,
                                normalTextColor:
                                    colors.neutralsColors!.neutralPalette!.c700,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: SprklInput.builder(
                                hintText: 'Month',
                                borderRadius: 16,
                                backgroundColor: Colors.transparent,
                                normalStateColor:
                                    colors.neutralsColors!.neutralPalette!.c200,
                                hintTextColor:
                                    colors.neutralsColors!.neutralPalette!.c400,
                                normalTextColor:
                                    colors.neutralsColors!.neutralPalette!.c700,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: SprklInput.builder(
                                hintText: 'Year',
                                borderRadius: 16,
                                backgroundColor: Colors.transparent,
                                normalStateColor:
                                    colors.neutralsColors!.neutralPalette!.c200,
                                hintTextColor:
                                    colors.neutralsColors!.neutralPalette!.c400,
                                normalTextColor:
                                    colors.neutralsColors!.neutralPalette!.c700,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ]),
                          const SizedBox(height: 108),
                          SprklButton.expanded(
                            text: 'Finish',
                            backgroundColor:
                                colors.neutralsColors!.neutralPalette!.c900,
                            onPressed: () {
                              rootNavigatorKey.currentState!
                                  .pushReplacementNamed(
                                      RootNavigator.routeName);
                            },
                          ),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ))));
          },
        ),
      ),
    );
  }
}

part of template;

class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;
  SprklInputState emailState = SprklInputState.normal;
  SprklInputState passwordState = SprklInputState.normal;

  @override
  Widget build(BuildContext context) {
    return AnimateWrapper(
      backgroundColor: colors.neutralsColors!.white,
      child: Scaffold(
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
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 112),
                Center(child: Text('Welcome back!', style: styles.headerM!)),
                const SizedBox(height: 132),
                SprklInput.builder(
                  hintText: 'E-mail',
                  borderRadius: 16,
                  state: emailState,
                  backgroundColor: Colors.transparent,
                  hintTextColor: colors.neutralsColors!.neutralPalette!.c400,
                  errorStateColor: colors.neutralsColors!.neutralPalette!.c400,
                  normalTextColor: colors.neutralsColors!.neutralPalette!.c700,
                  suffixIcon: Icon(
                    Icons.check_outlined,
                    color: emailState == SprklInputState.succeed
                        ? colors.semanticColors!.successPalette!.c600
                        : colors.neutralsColors!.neutralPalette!.c400,
                  ),
                  onTextChanged: (text) {
                    setState(() {
                      if ((text?.length ?? 0) < 3) {
                        emailState = SprklInputState.error;
                        EventService().send(
                          AnimateWrapperArgs(AnimateWrapperAction.error),
                        );
                      } else {
                        emailState = SprklInputState.succeed;
                        EventService().send(
                          AnimateWrapperArgs(AnimateWrapperAction.succeed),
                        );
                      }
                    });
                  },
                ),
                const SizedBox(height: 16),
                SprklInput.password(
                  state: passwordState,
                  hintText: 'Password',
                  borderRadius: 16,
                  backgroundColor: Colors.transparent,
                  normalStateColor: colors.neutralsColors!.neutralPalette!.c200,
                  hintTextColor: colors.neutralsColors!.neutralPalette!.c400,
                  errorStateColor: colors.neutralsColors!.neutralPalette!.c400,
                  normalTextColor: colors.neutralsColors!.neutralPalette!.c700,
                  passwordIconColor:
                      colors.neutralsColors!.neutralPalette!.c400,
                  obscuringCharacter: '●',
                  onTextChanged: (text) {
                    setState(() {
                      if ((text?.length ?? 0) < 3) {
                        passwordState = SprklInputState.error;
                        EventService().send(
                          AnimateWrapperArgs(AnimateWrapperAction.error),
                        );
                      } else {
                        passwordState = SprklInputState.succeed;
                        EventService().send(
                          AnimateWrapperArgs(AnimateWrapperAction.succeed),
                        );
                      }
                    });
                  },
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forgot password?',
                      style: styles.link!.copyWith(
                          color: colors.semanticColors!.infoPalette!.c400)),
                ),
                const SizedBox(height: 40),
                SprklButton.expanded(
                  text: 'Log in',
                  borderRadius: 16,
                  backgroundColor: colors.neutralsColors!.neutralPalette!.c900,
                  onPressed: () {
                    rootNavigatorKey.currentState!
                        .pushReplacementNamed(RootNavigator.routeName);
                  },
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text('Or continue with',
                      textAlign: TextAlign.center,
                      style: styles.labelM!.copyWith(
                        color: colors.neutralsColors!.neutralPalette!.c400,
                      )),
                ),
                const SizedBox(height: 16),
                Row(children: [
                  Expanded(
                    child: ImageButton(
                      image: Icon(
                        Icons.facebook_rounded,
                        color: colors.semanticColors!.infoPalette!.c600,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ImageButton(
                      image: Icon(
                        Icons.apple,
                        color: colors.neutralsColors!.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: ImageButton(
                      image: Icon(FontAwesomeIcons.twitter,
                          color: Color(0xff38BDF8)),
                    ),
                  ),
                ]),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

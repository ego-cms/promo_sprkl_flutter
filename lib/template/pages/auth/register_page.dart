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

class RegisterPage extends StatefulWidget {
  static const String routeName = '/register';
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;

  SprklInputState nameState = SprklInputState.normal;
  SprklInputState emailState = SprklInputState.normal;
  SprklInputState passwordState = SprklInputState.normal;
  SprklInputState confirmPasswordState = SprklInputState.normal;

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
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 36),
                Center(child: Text('Register', style: styles.headerM!)),
                const SizedBox(height: 54),
                SprklInput.builder(
                  hintText: 'Name',
                  borderRadius: 16,
                  state: nameState,
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
                        nameState = SprklInputState.error;
                        EventService().send(
                          AnimateWrapperArgs(AnimateWrapperAction.error),
                        );
                      } else {
                        nameState = SprklInputState.succeed;
                        EventService().send(
                          AnimateWrapperArgs(AnimateWrapperAction.succeed),
                        );
                      }
                    });
                  },
                ),
                const SizedBox(height: 16),
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
                SprklInput.password(
                  state: confirmPasswordState,
                  borderRadius: 16,
                  hintText: 'Confirm password',
                  backgroundColor: Colors.transparent,
                  hintTextColor: colors.neutralsColors!.neutralPalette!.c400,
                  errorStateColor: colors.neutralsColors!.neutralPalette!.c400,
                  normalTextColor: colors.neutralsColors!.neutralPalette!.c700,
                  passwordIconColor:
                      colors.neutralsColors!.neutralPalette!.c400,
                  obscuringCharacter: '●',
                  onTextChanged: (text) {
                    setState(() {
                      if ((text?.length ?? 0) < 3) {
                        confirmPasswordState = SprklInputState.error;
                        EventService().send(
                          AnimateWrapperArgs(AnimateWrapperAction.error),
                        );
                      } else {
                        confirmPasswordState = SprklInputState.succeed;
                        EventService().send(
                          AnimateWrapperArgs(AnimateWrapperAction.succeed),
                        );
                      }
                    });
                  },
                ),
                const SizedBox(height: 40),
                SprklButton.expanded(
                  text: 'Register',
                  borderRadius: 16,
                  backgroundColor: colors.neutralsColors!.neutralPalette!.c900,
                  onPressed: () {
                    authNavigatorKey.currentState!
                        .pushNamed(CreateProfilePage.routeName);
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
                    child: SprklButton.expanded(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      iconSpacer: 6,
                      prefix: Icon(
                        Icons.facebook_rounded,
                        color: colors.semanticColors!.infoPalette!.c600,
                      ),
                      text: '',
                      borderRadius: 16,
                      backgroundColor: colors.neutralsColors!.whitePalette!.c8,
                      borderColor: colors.neutralsColors!.neutralPalette!.c200,
                      textStyle: styles.labelM,
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
                      prefix: Icon(
                        Icons.apple,
                        color: colors.neutralsColors!.black,
                      ),
                      borderRadius: 16,
                      backgroundColor: colors.neutralsColors!.whitePalette!.c8,
                      borderColor: colors.neutralsColors!.neutralPalette!.c200,
                      textStyle: styles.labelM,
                      elevation: 0,
                      onPressed: () {},
                      hasBorder: true,
                      text: '',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: SprklButton.expanded(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      iconSpacer: 6,
                      prefix: const Icon(FontAwesomeIcons.twitter,
                          color: Color(0xff38BDF8)),
                      text: '',
                      borderRadius: 16,
                      backgroundColor: colors.neutralsColors!.whitePalette!.c8,
                      borderColor: colors.neutralsColors!.neutralPalette!.c200,
                      textStyle: styles.labelM,
                      elevation: 0,
                      onPressed: () {},
                      hasBorder: true,
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

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

///Available sources
///url, text , assets
enum SprklAvatarImageSource {
  url,
  text,
  assets,
}

///Available sizes
///xl, l , m, s, xs, xxs
enum SprklImageSize {
  xl,
  l,
  m,
  s,
  xs,
  xxs,
}

///Available sizes
///xl, l , m, s,
enum SprklButtonSize {
  xl,
  l,
  m,
  s,
}

///Alert types
///info, warning, error, succeed
enum AlertType {
  info,
  warning,
  error,
  succeed,
}

///Tag type
///s, m, l
enum TagSize {
  s,
  m,
  l,
}

///Sample Sprkl styled tabs type
///one, two, three, four, five
enum SprklStyleTabType {
  one,
  two,
  three,
  four,
  five,
}

///Available sources
///url, assets
enum SprklTabImageSource {
  url,
  assets,
}

///List items action type
///[checkbox], [chevron], [switcher], [empty], [custom]
enum SprklListItemActionType {
  checkbox,
  chevron,
  switcher,
  empty,
  custom,
}

///Available source types
///url, assets, icon, empty
enum SprklChipsType {
  url,
  assets,
  icon,
  empty,
}

///Available input states
///normal, error, succeed, disabled
enum SprklInputState {
  normal,
  error,
  succeed,
  disabled,
}

///Available input sizes
///s, m, l
enum SprklInputSize {
  s,
  m,
  l,
}

///Available input sizes
///custom, clean, password
enum SprklInputType {
  custom,
  clean,
  password,
  chips,
}

///Available Toggle types
///checkbox, radioButton, switcher
enum SprklToggleType {
  checkbox,
  radioButton,
  switcher,
}

///Available RoundedButton types
///icon, network, asset
enum RoundedButtonType { icon, network, asset }

///Available Title types
///type1, type2, type3, type4
enum TitleType { type1, type2, type3, type4 }

///Available Sprkl Stepper Item types
///rounded, line
enum SprklStepperItemType { rounded, line }

///Available Sprkl Stepper state
///completed, future, current
enum SprklStepperState { completed, future, active }

///Available Sprkl Tooltip position
///top, bottom, left, right
enum SprklTooltipPosition { top, bottom, left, right }

///Available Sprkl progressbar type
///circular, linear
enum SprklProgressbarType { circular, linear }

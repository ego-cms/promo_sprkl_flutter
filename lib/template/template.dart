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

library template;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:thesprkl_template/animations/animate_wrapper.dart';
import 'package:thesprkl_template/models/contact_model.dart';
import 'package:thesprkl_template/models/message_model.dart';
import 'package:thesprkl_template/services/event_service.dart';
import 'package:thesprkl_template/services/models/animate_wrapper_action.dart';
import 'package:thesprkl_template/services/models/animate_wrapper_args.dart';
import 'package:thesprkl_template/source.dart';
import 'package:thesprkl_template/widgets/image_button.dart';
import 'package:thesprkl_template/widgets/messages/message_selector.dart';
import 'package:thesprkl_template/widgets/post_widget.dart';
import 'package:sprkl_flutter/sprkl_flutter.dart';

part '../template/navigator/auth_navigator.dart';
part '../template/navigator/chats_navigator.dart';
part '../template/navigator/home_social_navigator.dart';
part '../template/navigator/navigator_keys.dart';
part '../template/navigator/profile_navigator.dart';
part '../template/navigator/root_navigator.dart';
part '../template/navigator/dashboard_navigator.dart';
part '../template/pages/auth/create_profile.dart';
part '../template/pages/auth/login_page.dart';
part '../template/pages/auth/register_page.dart';
part '../template/pages/auth/welcome_page.dart';
part '../template/pages/dashboard/dashboard_page.dart';
part '../template/pages/chats/chats_details_page.dart';
part '../template/pages/chats/chats_page.dart';
part '../template/pages/home/actual_page.dart';
part '../template/pages/home/feed_page.dart';
part '../template/pages/home/for_you_page.dart';
part '../template/pages/home/home_social_page.dart';
part '../template/pages/loading_page.dart';
part '../template/pages/profile/profile_page.dart';
part '../template/pages/profile/profile_settings_page.dart';

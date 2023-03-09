import 'package:thesprkl_template/services/models/animate_wrapper_action.dart';
import 'package:thesprkl_template/services/models/even_args.dart';

class AnimateWrapperArgs implements EventArgs {
  final AnimateWrapperAction action;

  AnimateWrapperArgs(this.action);
}

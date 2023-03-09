import 'package:flutter/material.dart';
import 'package:sprkl_flutter/sprkl_flutter.dart';

abstract class BaseMessage extends StatelessWidget {
  final String message;
  final String date;
  Alignment get alignment;
  BoxDecoration get decoration;
  BorderRadius get imageBorderRadius;
  final bool smallPadding;
  final Color contentColor;
  final bool isRead;

  const BaseMessage({
    Key? key,
    required this.message,
    required this.date,
    required this.smallPadding,
    required this.contentColor,
    required this.isRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var styles = theme.extension<SprklTextStyle>()!;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: smallPadding ? 3 : 13),
          color: Colors.transparent,
          child: Align(
            alignment: alignment,
            child: Container(
              width: 257,
              decoration: decoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        left: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            message,
                            style: styles.bodyL!
                                .copyWith(fontSize: 17, color: contentColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, right: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          date,
                          style: styles.bodyS!
                              .copyWith(fontSize: 10, color: contentColor),
                        ),
                        const SizedBox(width: 3),
                        if (isRead)
                          Icon(
                            Icons.done_all,
                            size: 10,
                            color: contentColor,
                          )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

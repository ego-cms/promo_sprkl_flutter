import 'package:flutter/material.dart';
import 'package:sprkl_flutter/sprkl_flutter.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.avatarSource,
    required this.description,
    required this.imageSource,
    this.hasDivider = false,
  });
  final String title;
  final String subtitle;
  final String avatarSource;
  final String imageSource;
  final String description;
  final bool hasDivider;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;

  Widget postInfo(
      {required IconData iconData,
      required String text,
      required Color color,
      required Color background}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
          color: background, borderRadius: BorderRadius.circular(6)),
      child: Row(
        children: [
          Icon(iconData, size: 16, color: color),
          const SizedBox(width: 4),
          Column(
            children: [
              Text(
                text,
                textAlign: TextAlign.center,
                style: styles.labelS!.copyWith(color: color),
              ),
              const SizedBox(height: 3),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colors.neutralsColors!.white,
      ),
      child: Column(
        children: [
          if (widget.hasDivider)
            Container(
              height: 1,
              width: double.infinity,
              color: colors.neutralsColors!.whitePalette!.c8,
            ),
          SprklListItem.custom(
              image: SprklAvatar.assets(
                assets: widget.avatarSource,
                size: SprklImageSize.xxs,
              ),
              title: widget.title,
              subTitle: widget.subtitle,
              titleTextStyle: styles.labelS!
                  .copyWith(color: colors.neutralsColors!.neutralPalette!.c900),
              subTitleTextStyle: styles.caption!
                  .copyWith(color: colors.neutralsColors!.neutralPalette!.c400),
              customAction: Icon(Icons.more_vert,
                  color: colors.neutralsColors!.neutralPalette!.c900)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(widget.description,
                style: styles.bodyS!.copyWith(
                    color: colors.neutralsColors!.neutralPalette!.c600)),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              widget.imageSource,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                postInfo(
                  background: colors.primaryColors!.primary!,
                  color: colors.neutralsColors!.white!,
                  iconData: Icons.favorite,
                  text: '12K',
                ),
                const SizedBox(width: 8),
                postInfo(
                  background: colors.neutralsColors!.neutralPalette!.c200,
                  color: colors.neutralsColors!.neutralPalette!.c400,
                  iconData: Icons.reply_outlined,
                  text: '480',
                ),
                const Spacer(),
                postInfo(
                  background: Colors.transparent,
                  color: colors.neutralsColors!.neutralPalette!.c400,
                  iconData: Icons.visibility_outlined,
                  text: '12K',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

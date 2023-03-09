part of template;

class ChatsDetailsPage extends StatefulWidget {
  static const String routeName = '/page_details';
  const ChatsDetailsPage({super.key});

  @override
  State<ChatsDetailsPage> createState() => _ChatsDetailsPageState();
}

class _ChatsDetailsPageState extends State<ChatsDetailsPage> {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;
  ContactModel get contact =>
      ModalRoute.of(context)!.settings.arguments as ContactModel;
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  late List<MessageModel> messages = contact.messages;
  List<MessageModel> get reversed => messages.reversed.toList();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        if (messages.isNotEmpty) {
          scrollToPosition(messages.length - 1);
        }
      },
    );
  }

  void scrollToPosition(int position) {
    itemScrollController.scrollTo(
      index: position,
      duration: const Duration(microseconds: 200),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: colors.neutralsColors!.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                GestureDetector(
                  child: Icon(Icons.chevron_left,
                      color: colors.neutralsColors!.neutralPalette!.c900),
                  onTap: () {
                    rootNavigatorKey.currentState!.pop();
                  },
                ),
                const SizedBox(width: 12),
                SprklAvatar.assets(
                    assets: contact.asset, size: SprklImageSize.xxs),
                const SizedBox(width: 12),
                Expanded(
                    child: Text(contact.title,
                        style: styles.labelM!.copyWith(
                            color: colors.neutralsColors!.neutralPalette!.c900,
                            overflow: TextOverflow.ellipsis))),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: colors.neutralsColors!.neutralPalette!.c900,
                ),
                onPressed: () {},
              )
            ]),
        body: Column(
          children: [
            Container(
              height: 1,
              width: double.infinity,
              color: colors.neutralsColors!.whitePalette!.c8,
            ),
            Expanded(
              child: messages.isEmpty
                  ? Center(
                      child: Text(
                          'You don\'t have a dialog with\nthis user yet',
                          textAlign: TextAlign.center,
                          style: styles.bodyM!.copyWith(
                              color:
                                  colors.neutralsColors!.neutralPalette!.c400)),
                    )
                  : Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        ScrollablePositionedList.builder(
                          reverse: true,
                          itemPositionsListener: itemPositionsListener,
                          itemScrollController: itemScrollController,
                          padding: const EdgeInsets.all(21),
                          itemCount: messages.length,
                          initialScrollIndex: 0,
                          itemBuilder: (BuildContext context, int index) {
                            final isOwner = reversed[index].isOwner;
                            return MessageSelector(
                              message: reversed[index],
                              smallPadding: index != 0 &&
                                  reversed[index - 1].isOwner ==
                                      reversed[index].isOwner,
                              backgroundColor: isOwner
                                  ? colors.primaryColors!.primaryPalette!.c500
                                  : colors.neutralsColors!.neutralPalette!.c300,
                              contentColor: isOwner
                                  ? colors.neutralsColors!.white!
                                  : colors.neutralsColors!.neutralPalette!.c900,
                              isRead: isOwner,
                            );
                          },
                        ),
                        Wrap(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 8),
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 2, bottom: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: colors
                                      .neutralsColors!.neutralPalette!.c200),
                              child: Text('Today',
                                  style: styles.bodyM!.copyWith(
                                      fontSize: 10,
                                      color: colors.neutralsColors!
                                          .neutralPalette!.c400)),
                            )
                          ],
                        )
                      ],
                    ),
            ),
            Container(
              color: colors.neutralsColors!.white,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add_circle_outline,
                      color: colors.neutralsColors!.neutralPalette!.c400),
                  const SizedBox(width: 8),
                  Expanded(
                    child: SprklInput.builder(
                      size: SprklInputSize.s,
                      hasBorder: false,
                      suffixIcon: Icon(Icons.sentiment_satisfied,
                          color: colors.neutralsColors!.neutralPalette!.c400),
                      hintText: 'Type something...',
                      backgroundColor:
                          colors.neutralsColors!.neutralPalette!.c200,
                      normalStateColor:
                          colors.neutralsColors!.neutralPalette!.c200,
                      hintTextColor:
                          colors.neutralsColors!.neutralPalette!.c400,
                      normalTextColor:
                          colors.neutralsColors!.neutralPalette!.c700,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(Icons.mic,
                      color: colors.neutralsColors!.neutralPalette!.c400),
                ],
              ),
            ),
          ],
        ));
  }
}

part of template;

class ChatsPage extends StatefulWidget {
  static const String routeName = '/chats';
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;

  List<ContactModel> contacts = [
    ContactModel(
        asset: Source.c1,
        title: 'Kate Fisher',
        subTitle: 'Typing...',
        time: '22:00',
        messages: [
          MessageModel(message: 'Hello!', date: '10:24', isOwner: true),
          MessageModel(
              message: 'Let\'s get lunch. How about pizza?',
              date: '10:25',
              isOwner: true),
          MessageModel(
              message: 'Pizza? Sounds great! Where will we meet?',
              date: '10:26'),
        ]),
    ContactModel(
        asset: Source.c2,
        title: 'Alisa Richards',
        subTitle: 'I\'ll be there in 2 mins',
        time: '19:55',
        messages: []),
    ContactModel(
        asset: Source.c3,
        title: 'Cameron Williamson',
        subTitle: 'just ideas for next time',
        time: '16:40',
        messages: []),
    ContactModel(
        asset: Source.c4,
        title: 'Brooklyn Simmons',
        subTitle: 'Haha that\'s terrifying 😂',
        time: '16:25',
        messages: []),
    ContactModel(
        asset: Source.c5,
        title: 'Arlene McCoy',
        subTitle: 'Wow, this is really epic',
        time: '11:10',
        messages: []),
    ContactModel(
        asset: Source.c6,
        title: 'Jacob Jones',
        subTitle: 'How are you?',
        time: '10:30',
        messages: []),
    ContactModel(
        asset: Source.c7,
        title: 'Kristin Watson',
        subTitle: 'omg, this is amazing',
        time: 'Yesterday',
        messages: []),
    ContactModel(
        asset: Source.c8,
        title: 'Ann Hawkins',
        subTitle: 'woohoooo',
        time: 'Yesterday',
        messages: []),
    ContactModel(
        asset: Source.c7,
        title: 'Kristin Watson',
        subTitle: 'omg, this is amazing',
        time: 'Yesterday',
        messages: []),
    ContactModel(
        asset: Source.c8,
        title: 'Ann Hawkins',
        subTitle: 'woohoooo',
        time: 'Yesterday',
        messages: []),
  ];

  Widget contactItem(ContactModel model) {
    return GestureDetector(
        onTap: () {
          rootNavigatorKey.currentState!.pushNamed(
            ChatsDetailsPage.routeName,
            arguments: model,
          );
        },
        child: SprklListItem.custom(
          image: SprklAvatar.assets(
            assets: model.asset,
            size: SprklImageSize.xs,
          ),
          title: model.title,
          subTitle: model.subTitle,
          titleTextStyle: styles.labelM!
              .copyWith(color: colors.neutralsColors!.neutralPalette!.c900),
          subTitleTextStyle: styles.bodyS!
              .copyWith(color: colors.neutralsColors!.neutralPalette!.c400),
          customAction: SizedBox(
            height: 32,
            child: Text(model.time,
                style: styles.bodyS!.copyWith(
                  color: colors.neutralsColors!.neutralPalette!.c400,
                )),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.neutralsColors!.white,
      appBar: AppBar(
          backgroundColor: colors.neutralsColors!.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.more_vert,
                color: colors.neutralsColors!.neutralPalette!.c900),
            onPressed: () {},
          ),
          centerTitle: true,
          title: Text('Chats',
              style: styles.headerXXS!.copyWith(
                  color: colors.neutralsColors!.neutralPalette!.c900)),
          actions: [
            IconButton(
              icon: Icon(Icons.edit_note_outlined,
                  color: colors.neutralsColors!.neutralPalette!.c900),
              onPressed: () {},
            )
          ]),
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 16),
            child: SprklInput.builder(
              size: SprklInputSize.s,
              hasBorder: false,
              prefixIcon: Icon(Icons.search,
                  color: colors.neutralsColors!.neutralPalette!.c400),
              suffixIcon: Icon(Icons.mic,
                  color: colors.neutralsColors!.neutralPalette!.c400),
              hintText: 'Search',
              backgroundColor: colors.neutralsColors!.neutralPalette!.c200,
              normalStateColor: colors.neutralsColors!.neutralPalette!.c200,
              hintTextColor: colors.neutralsColors!.neutralPalette!.c400,
              normalTextColor: colors.neutralsColors!.neutralPalette!.c700,
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: colors.neutralsColors!.neutralPalette!.c200,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: ((context, index) {
                return contactItem(contacts[index]);
              }),
            ),
          )
        ],
      ),
    );
  }
}

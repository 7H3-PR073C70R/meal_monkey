import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/asset_path.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_bar.dart';
import 'package:meal_monkey/src/features/inbox/domain/entities/inbox.dart';
import 'package:meal_monkey/src/features/inbox/presentation/widgets/inbox_card.dart';





class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kh = MediaQuery.of(context).size.height;

    const List<Inbox> _inbox = [
      Inbox(
        text: 'Meal Monkey Promotion ',
        date: 'now',
        isRead: true,
        desc: 'Lorem ipsum dolor sit amet, consectetur ',
      ),
      Inbox(
        text: 'Meal Monkey Promotion ',
        date: '1h ago',
        isRead: false,
         desc: 'Lorem ipsum dolor sit amet, consectetur ',
      ),
      Inbox(
        text: 'Meal Monkey Promotion ',
        date: '3h ago',
        isRead: true,
         desc: 'Lorem ipsum dolor sit amet, consectetur ',
      ),
      Inbox(
        text: 'Meal Monkey Promotion ',
        date: '5h ago',
        isRead: false,
         desc: 'Lorem ipsum dolor sit amet, consectetur ',
      ),
      Inbox(
        text: 'Meal Monkey Promotion ',
        date: '5th Sep 2022',
        isRead: true,
         desc: 'Lorem ipsum dolor sit amet, consectetur ',
      ),
      Inbox(
        text: 'Meal Monkey Promotion ',
        date: '12th Sep 2022',
        isRead: true,
         desc: 'Lorem ipsum dolor sit amet, consectetur ',
      ),
      Inbox(
        text: 'Meal Monkey Promotion ',
        date: '12th Aug 2022',
        isRead: false,
         desc: 'Lorem ipsum dolor sit amet, consectetur ',
      ),
      Inbox(
        text: 'Meal Monkey Promotion ',
        date: '10th Jul 2022',
        isRead: false,
         desc: 'Lorem ipsum dolor sit amet, consectetur ',
      ),
    ];
    return Scaffold(
      body: Column(
        children: [
          const AppCustomAppBar(
            title: AppString.inbox,
            isBackButton: true,
            icon: AssetPath.shoppingCartIcon,
          ),
          SizedBox(
            height: kh * 0.85,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _inbox.length,
              itemBuilder: (context, index) {
                return InboxCard(
                    inboxTitle: _inbox[index].text,
                    inboxTime: _inbox[index].date,
                    inboxRead: _inbox[index].isRead,
                    inboxDesc: _inbox[index].desc,
                    
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}

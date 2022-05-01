import 'package:flutter/material.dart';
import 'package:meal_monkey/src/core/constants/asset_path.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_bar.dart';
import 'package:meal_monkey/src/features/notification/domain/entities/notification.dart';
import 'package:meal_monkey/src/features/notification/presentation/widgets/notification_card.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kh = MediaQuery.of(context).size.height;

    const List<AppNotification> _notification = [
      AppNotification(
          text: 'Your orders has been picked up', date: 'now', isRead: true,),
      AppNotification(
          text: 'Your order has been delivered', date: '1h ago', isRead: false,),
      AppNotification(
          text: 'Lorem ipsum dolor sit amet, consectetur ',
          date: '3h ago',
          isRead: true,),
      AppNotification(
          text: 'Lorem ipsum dolor sit amet, consectetur ',
          date: '5h ago',
          isRead: false,),
      AppNotification(
          text: 'Lorem ipsum dolor sit amet, consectetur ',
          date: '5th Sep 2022',
          isRead: true,),
      AppNotification(
          text: 'Lorem ipsum dolor sit amet, consectetur ',
          date: '12th Sep 2022',
          isRead: true,),
      AppNotification(
          text: 'Lorem ipsum dolor sit amet, consectetur ',
          date: '12th Aug 2022',
          isRead: false,),
      AppNotification(
          text: 'Lorem ipsum dolor sit amet, consectetur ',
          date: '10th Jul 2022',
          isRead: false,),
    ];
    return Scaffold(
      body: Column(
        children: [
          const AppCustomAppBar(
            title: AppString.notification,
            isBackButton: true,
            icon: AssetPath.shoppingCartIcon,
          ),
          SizedBox(
            height: kh * 0.85,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _notification.length,
              itemBuilder: (context, index) {
                return NotificationCard(
                  notificationTitle: _notification[index].text,
                  notificationTime: _notification[index].date,
                  notificationRead: _notification[index].isRead,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

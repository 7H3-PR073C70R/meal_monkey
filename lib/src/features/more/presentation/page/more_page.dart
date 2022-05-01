import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_monkey/src/core/constants/asset_path.dart';
import 'package:meal_monkey/src/core/constants/strings.dart';
import 'package:meal_monkey/src/core/widgets/dummy_widgets/app_bar.dart';
import 'package:meal_monkey/src/features/more/presentation/widgets/more_options_card.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
 final kh = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
         const AppCustomAppBar(
            title: AppString.more,
            isBackButton: false,
            icon: AssetPath.shoppingCartIcon,
          
          ),
          SizedBox(
            height: kh *0.75,
            child: ListView(
              children: [
                MoreOptionCard(
                    text: AppString.paymentDetails,
                    icon: AssetPath.incomeIcon,
                    onTap: () {},),
                MoreOptionCard(
                    text: AppString.myOrder,
                    icon: AssetPath.bagIcon,
                    onTap: () {
                        context.pushNamed('my-order');
                    },),
                MoreOptionCard(
                    text: AppString.notification,
                    icon: AssetPath.notificationIcon,
                    isNotification: true,
                    notificationValue: '5',
                    onTap: () {
                     context.pushNamed('notification');
                    
                    },),
                MoreOptionCard(
                    text: AppString.inbox,
                    icon: AssetPath.mailIcon,
                    onTap: () {},),
                MoreOptionCard(
                    text: AppString.aboutUs,
                    icon: AssetPath.infoIcon,
                    onTap: () {
                       context.pushNamed('about');
                    },),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

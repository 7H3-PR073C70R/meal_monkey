import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meal_monkey/src/features/home/presentation/logic/home_page_state.dart';

class HomePageNotitier extends StateNotifier<HomePageState> {
  HomePageNotitier() : super(HomePageState.initial());
}

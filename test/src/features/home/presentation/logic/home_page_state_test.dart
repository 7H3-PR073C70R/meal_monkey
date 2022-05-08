import 'package:flutter_test/flutter_test.dart';
import 'package:meal_monkey/src/core/utils/view_state.dart';
import 'package:meal_monkey/src/features/home/presentation/logic/home_page_state.dart';

void main() {
  group('Verify update dunction', () {
    test(
        'should return new state with updated viewState',
        (){
      final state = HomePageState.initial();
      final newState = state.updateState(viewState: ViewState.busy);
      expect(newState.viewState, ViewState.busy);
    });
    test('should return new state with updated isSeaching', (){
      final state = HomePageState.initial();
      final newState = state.updateState(isSearching: true);
      expect(newState.isSearching, true);
    });
  });
}

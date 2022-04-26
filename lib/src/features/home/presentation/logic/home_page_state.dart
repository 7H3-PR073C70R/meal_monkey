import 'package:equatable/equatable.dart';
import 'package:meal_monkey/src/core/utils/view_state.dart';

class HomePageState extends Equatable {
  final ViewState viewState;
  final bool isSearching;

  const HomePageState._({
    required this.isSearching,
    required this.viewState,
  });

  factory HomePageState.initial() {
    return const HomePageState._(
      isSearching: false,
      viewState: ViewState.idle,
    );
  }

  HomePageState updateState({
    ViewState? viewState,
    bool? isSearching,
  }) {
    return HomePageState._(
      viewState: viewState ?? this.viewState,
      isSearching: isSearching ?? this.isSearching,
    );
  }

  @override
  List<Object?> get props => [viewState, isSearching];
}

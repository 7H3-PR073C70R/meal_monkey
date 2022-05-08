enum ViewState { idle, busy, error }

extension ViewStateExtension on ViewState {
  bool get isBusy => this == ViewState.busy;
  bool get isIdle => this == ViewState.idle;
  bool get isError => this == ViewState.error;
}

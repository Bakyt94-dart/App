class AddState {
  final bool isInitial;
  final bool isSucceed;

  AddState({
    required this.isInitial,
    required this.isSucceed,
  });

  factory AddState.initial() => AddState(isInitial: true, isSucceed: false);
}
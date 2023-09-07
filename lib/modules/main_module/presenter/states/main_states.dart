sealed class MainState {
  const MainState();
}

class MainErrorState extends MainState {
  final String message;
  const MainErrorState(this.message);
}

class MainLoadingState extends MainState {
  const MainLoadingState();
}

class MainSuccessState extends MainState {
  const MainSuccessState();
}

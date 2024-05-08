import 'package:flutter_bloc/flutter_bloc.dart';

import 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial());

  bool description = true;
  int selectedIndex = 0;
  List listOfColors = [0, 1, 2];
  void displayDescription() {
    description = !description;
    emit(DisplayDescription());
  }

  void changeSelectedBorder({required int currentIndex}) {
    selectedIndex = currentIndex;

    emit(ChangeBorderIndex());
  }
}

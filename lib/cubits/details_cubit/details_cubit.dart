import 'package:flutter_bloc/flutter_bloc.dart';

import 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial());

  bool description = true;

  void displayDescription() {
    description = !description;
    emit(DisplayDescription());
  }
}

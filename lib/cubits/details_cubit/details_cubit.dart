import 'package:flutter_bloc/flutter_bloc.dart';

import 'details_state.dart';

class DetailsCubit extends Cubit<DetailsCubitState> {
  DetailsCubit() : super(DetailsCubitInitial());
}
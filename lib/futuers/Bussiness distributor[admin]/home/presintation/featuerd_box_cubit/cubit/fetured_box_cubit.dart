import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fetured_box_state.dart';

class FeturedBoxCubit extends Cubit<FeturedBoxState> {
  FeturedBoxCubit() : super(FeturedBoxInitial());
}

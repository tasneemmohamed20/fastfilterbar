import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled/Screens/quest.dart';

part 'filter_bar_state.dart';

class FilterBarCubit extends Cubit<FilterBarState> {
  int indexxx=-1;
  int SelectedIndex =-1;
  String SelectedItem='';
  getSelectedItemText(SelectedIndex) {
    switch (index) {
      case 0:
        return 'Text 1';
      case 1:
        return 'Text 2';
      case 2:
        return 'Text 3';
      case 3:
        return 'Text 4';
      case 4:
        return 'Text 5';
      case 5:
        return 'Text 6';
      case 6:
        return 'Text 7';
      case 7:
        return 'Text 8';
      case 8:
        return 'Text 9';
      default:
        return '';
    }
  }

  FilterBarCubit() : super(FilterBarSelectState());
SelectFilterBar( indexxx){
  SelectedIndex = indexxx;
  emit(FilterBarSelectState());
}

SelectedText( indexxx){
SelectedItem= getSelectedItemText(SelectedIndex);

  emit(FilterBarTextState());
}
}


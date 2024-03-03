import 'package:flutter_bloc/flutter_bloc.dart';
import 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  CalendarCubit() : super(CalendarState(currentDate: DateTime.now()));

  void selectDay(int day) {
    emit(state.copyWith(selectedDay: day));
  }

  void previousMonth() {
    final DateTime currentDate = state.currentDate;
    final previousMonthDate =
        DateTime(currentDate.year, currentDate.month - 1, 1);
    emit(state.copyWith(currentDate: previousMonthDate));
  }

  void nextMonth() {
    final DateTime currentDate = state.currentDate;
    final nextMonthDate = DateTime(currentDate.year, currentDate.month + 1, 1);
    emit(state.copyWith(currentDate: nextMonthDate));
  }
}

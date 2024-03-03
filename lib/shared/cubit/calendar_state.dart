import 'package:flutter/material.dart';

@immutable
class CalendarState {
  final DateTime currentDate;
  final int? selectedDay;

  CalendarState({
    required this.currentDate,
    this.selectedDay,
  });

  CalendarState copyWith({
    DateTime? currentDate,
    int? selectedDay,
  }) {
    return CalendarState(
      currentDate: currentDate ?? this.currentDate,
      selectedDay: selectedDay ?? this.selectedDay,
    );
  }
}

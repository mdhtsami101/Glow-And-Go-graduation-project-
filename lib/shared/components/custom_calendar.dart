import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/calendar_cubit.dart';
import '../cubit/calendar_state.dart';

class CustomCalendar extends StatelessWidget {
  final int? selectedDay;
  final String text;

  CustomCalendar({Key? key, this.selectedDay, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalendarCubit(),
      child: CustomCalendarWidget(selectedDay: selectedDay, text: text),
    );
  }
}

class CustomCalendarWidget extends StatelessWidget {
  final int? selectedDay;
  final String text;

  CustomCalendarWidget({Key? key, this.selectedDay, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalendarCubit, CalendarState>(
      builder: (context, state) {
        final DateTime currentDate = state.currentDate;
        final List<String> daysOfWeek = [
          'Mon',
          'Tue',
          'Wed',
          'Thu',
          'Fri',
          'Sat',
          'Sun'
        ];
        final int firstWeekdayOfMonth =
            DateTime(currentDate.year, currentDate.month, 1).weekday;

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 55, right: 55, top: 20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 7,
                        color: Color(0x55000000),
                        offset: Offset.fromDirection(3, 5),
                        spreadRadius: 1.5,
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(15.0),
                      topStart: Radius.circular(15.0),
                      bottomEnd: Radius.circular(15.0),
                      bottomStart: Radius.circular(15.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.9),
                            child: Image(
                              image: AssetImage('assets/images/head.png'),
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.arrow_back_ios,
                                        color: Colors.white),
                                    onPressed: () => context
                                        .read<CalendarCubit>()
                                        .previousMonth(),
                                  ),
                                  Text(
                                    text,
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.arrow_forward_ios,
                                        color: Colors.white),
                                    onPressed: () => context
                                        .read<CalendarCubit>()
                                        .nextMonth(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 10, // Adjusted top padding
                                  bottom: 30,
                                  left: 28,
                                  right: 28,
                                ),
                                child: Text(
                                  "${currentDate.month}/${currentDate.year}",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: daysOfWeek.map((day) {
                                  return Text(
                                    day,
                                    style: TextStyle(fontSize: 12),
                                  );
                                }).toList(),
                              ),
                              SizedBox(height: 10),
                              GridView.builder(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 7,
                                  childAspectRatio: 1.0,
                                  crossAxisSpacing: 4.0,
                                  mainAxisSpacing: 4.0,
                                ),
                                itemCount: DateTime(currentDate.year,
                                            currentDate.month + 1, 0)
                                        .day +
                                    firstWeekdayOfMonth -
                                    1,
                                itemBuilder: (context, index) {
                                  if (index < firstWeekdayOfMonth - 1) {
                                    return Container(); // Empty space for days before the 1st of the month
                                  } else {
                                    final int day =
                                        index - firstWeekdayOfMonth + 2;
                                    return GestureDetector(
                                      onTap: () => context
                                          .read<CalendarCubit>()
                                          .selectDay(day),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: state.selectedDay == day
                                              ? Colors.blue
                                              : Colors.transparent,
                                        ),
                                        child: Center(
                                          child: Text(
                                            '$day',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Visibility(
                visible: state.selectedDay != null,
                child: Padding(
                  padding: const EdgeInsets.only(left: 55, right: 55, top: 20),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7,
                          color: Color(0x55000000),
                          offset: Offset.fromDirection(3, 5),
                          spreadRadius: 1.5,
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(15.0),
                        topStart: Radius.circular(15.0),
                        bottomEnd: Radius.circular(15.0),
                        bottomStart: Radius.circular(15.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'You selected ${state.selectedDay}',
                          textAlign: TextAlign.center,
                        ),
                        ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 2, left: 0.8, right: 10),
                                          child: Text(
                                            'غسيل الاسنان',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Color.fromARGB(
                                                  255, 1, 78, 211),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      height: 20,
                                      thickness: 1,
                                      color: Color.fromARGB(255, 1, 78, 211),
                                      indent: 10,
                                      endIndent: 15,
                                    ),
                                  ],
                                ),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 5.0,
                                ),
                            itemCount: 5),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(color: Colors.blue, width: 2.0),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Color.fromARGB(255, 1, 78, 211),
                              size: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

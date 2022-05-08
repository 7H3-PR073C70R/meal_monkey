import 'package:equatable/equatable.dart';

class AppNotification extends Equatable {
  final String text;
  final String date;
  final bool isRead;
 const  AppNotification({
    required this.text,
    required this.date,
    required this.isRead,
  });

  @override
  List<Object?> get props => [text, date, isRead];
}

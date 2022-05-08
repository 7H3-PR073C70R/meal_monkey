import 'package:equatable/equatable.dart';

class Inbox extends Equatable {
  final String text;
  final String date;
  final bool isRead;
  final String desc;
  const Inbox({
    required this.text,
    required this.date,
    required this.isRead,
    required this.desc,
  });

  @override
  List<Object?> get props => [text, date, isRead];
}

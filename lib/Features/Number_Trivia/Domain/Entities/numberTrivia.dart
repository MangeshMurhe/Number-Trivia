import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
class NumberTrivia extends Equatable {
  final String numberText;
  final int number;

  NumberTrivia({
   required this.numberText,
    required this.number}) : super([numberText, number]);
}
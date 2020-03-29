import 'package:equatable/equatable.dart';

abstract class CoronaEvent extends Equatable {
  const CoronaEvent();

  @override
  List<Object> get props => [];
}

class FetchCorona extends CoronaEvent {}
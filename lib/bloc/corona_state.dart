import 'package:covid19/data/base_response.dart';
import 'package:covid19/data/global_data.dart';
import 'package:equatable/equatable.dart';

abstract class CoronaState extends Equatable {
  const CoronaState();

  @override
  List<Object> get props => [];
}

class CoronaLoading extends CoronaState {}

class CoronaLoaded extends CoronaState {
  final List<BaseResponse> globalDataList;

  CoronaLoaded({this.globalDataList});

  @override
  List<Object> get props => [globalDataList];
}

class CoronaError extends CoronaState {}
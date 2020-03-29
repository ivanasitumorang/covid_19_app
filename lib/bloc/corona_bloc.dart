import 'package:covid19/bloc/corona_event.dart';
import 'package:covid19/bloc/corona_state.dart';
import 'package:covid19/repository/corona_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoronaBloc extends Bloc<CoronaEvent, CoronaState> {

  final CoronaRepository repository;

  CoronaBloc({@required this.repository});

  @override
  CoronaState get initialState => CoronaLoading();

  @override
  Stream<CoronaState> mapEventToState(CoronaEvent event) async* {
    if (event is FetchCorona) {
      yield* _fetchCoronaData();
    }
  }

  Stream<CoronaState> _fetchCoronaData() async* {
    try {
      final response = await repository.getGlobalData();
      print("Response = $response");
      yield CoronaLoaded(globalDataList: response);
    } catch (error) {
      yield CoronaError();
    }
  }

}
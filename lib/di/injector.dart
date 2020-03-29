import 'package:covid19/bloc/corona_bloc.dart';
import 'package:covid19/network/corona_network_service.dart';
import 'package:covid19/repository/corona_repository.dart';
import 'package:kiwi/kiwi.dart';
part 'injector.g.dart';

abstract class Injector {
  static Container container;
  static final resolve = container.resolve;

  static Future<void> setup() async {
    container = Container();
    final injector = _$Injector();
    injector._provideCoronaNetworkService();
    injector._provideCoronaRepository();
    injector._provideCoronaBloc();
  }

  @Register.singleton(CoronaNetworkService, from: CoronaNetworkServiceImpl)
  void _provideCoronaNetworkService();

  void _provideCoronaRepository() {
    container.registerSingleton<CoronaRepository, CoronaRepositoryImpl>(
            (c) => CoronaRepositoryImpl(c.resolve<CoronaNetworkService>()));
  }

  void _provideCoronaBloc() {
    container.registerSingleton((c) => CoronaBloc(repository: c.resolve<CoronaRepository>()));
  }
}
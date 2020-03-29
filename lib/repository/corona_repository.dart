import 'package:covid19/data/base_response.dart';
import 'package:covid19/data/global_data.dart';
import 'package:covid19/network/corona_network_service.dart';

abstract class CoronaRepository {
  Future<List<BaseResponse>> getGlobalData();
}

class CoronaRepositoryImpl implements CoronaRepository {
  CoronaNetworkService _networkService;

  CoronaRepositoryImpl(this._networkService);

  @override
  Future<List<BaseResponse>> getGlobalData() {
    print("Response Repo = ${_networkService.getGlobalData()}");
    return _networkService.getGlobalData();
  }

}
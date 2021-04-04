import 'base_network.dart';


//Datasource from domain
class CovidDataSource{
  static CovidDataSource instance = CovidDataSource();

  Future<Map<String,dynamic>> loadGlobalData(){
    return BaseNetwork.get("");
  }

  Future<Map<String,dynamic>> loadCountries(){
    return BaseNetwork.get("countries");
  }

  Future<Map<String,dynamic>> loadSelectedCountry(iso3){
    return BaseNetwork.get("countries/$iso3");
  }
}
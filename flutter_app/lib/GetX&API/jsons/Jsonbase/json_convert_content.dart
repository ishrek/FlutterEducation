import 'package:flutter_app/GetX&API/jsons/detail_country_entity_helper.dart';
import 'package:flutter_app/GetX&API/jsons/global_entity_helper.dart';
import 'package:flutter_app/GetX&API/model/country_entity.dart';
import 'package:flutter_app/GetX&API/model/detail_country_entity.dart';
import 'package:flutter_app/GetX&API/model/global_entity.dart';

import '../country_entity_helper.dart';

class JsonConvert<T> {
  T fromJson(Map<String, dynamic> json) {
    return _getFromJson<T>(runtimeType, this, json);
  }

  Map<String, dynamic> toJson() {
    return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {
      case DetailCountryEntity:
        return detailCountryEntityFromJson(data as DetailCountryEntity, json)
            as T;
      case DetailCountryConfirmed:
        return detailCountryConfirmedFromJson(
            data as DetailCountryConfirmed, json) as T;
      case DetailCountryRecovered:
        return detailCountryRecoveredFromJson(
            data as DetailCountryRecovered, json) as T;
      case DetailCountryDeaths:
        return detailCountryDeathsFromJson(data as DetailCountryDeaths, json)
            as T;
      case CountryEntity:
        return countryEntityFromJson(data as CountryEntity, json) as T;
      case CountryCountry:
        return countryCountryFromJson(data as CountryCountry, json) as T;
      case GlobalEntity:
        return globalEntityFromJson(data as GlobalEntity, json) as T;
      case GlobalConfirmed:
        return globalConfirmedFromJson(data as GlobalConfirmed, json) as T;
      case GlobalRecovered:
        return globalRecoveredFromJson(data as GlobalRecovered, json) as T;
      case GlobalDeaths:
        return globalDeathsFromJson(data as GlobalDeaths, json) as T;
      case GlobalDailyTimeSeries:
        return globalDailyTimeSeriesFromJson(
            data as GlobalDailyTimeSeries, json) as T;
      case GlobalCountryDetail:
        return globalCountryDetailFromJson(data as GlobalCountryDetail, json)
            as T;
    }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
    switch (type) {
      case DetailCountryEntity:
        return detailCountryEntityToJson(data as DetailCountryEntity);
      case DetailCountryConfirmed:
        return detailCountryConfirmedToJson(data as DetailCountryConfirmed);
      case DetailCountryRecovered:
        return detailCountryRecoveredToJson(data as DetailCountryRecovered);
      case DetailCountryDeaths:
        return detailCountryDeathsToJson(data as DetailCountryDeaths);
      case CountryEntity:
        return countryEntityToJson(data as CountryEntity);
      case CountryCountry:
        return countryCountryToJson(data as CountryCountry);
      case GlobalEntity:
        return globalEntityToJson(data as GlobalEntity);
      case GlobalConfirmed:
        return globalConfirmedToJson(data as GlobalConfirmed);
      case GlobalRecovered:
        return globalRecoveredToJson(data as GlobalRecovered);
      case GlobalDeaths:
        return globalDeathsToJson(data as GlobalDeaths);
      case GlobalDailyTimeSeries:
        return globalDailyTimeSeriesToJson(data as GlobalDailyTimeSeries);
      case GlobalCountryDetail:
        return globalCountryDetailToJson(data as GlobalCountryDetail);
    }
    return data as T;
  }

  //Go back to a single instance by type
  static _fromJsonSingle(String type, json) {
    switch (type) {
      case 'DetailCountryEntity':
        return DetailCountryEntity().fromJson(json);
      case 'DetailCountryConfirmed':
        return DetailCountryConfirmed().fromJson(json);
      case 'DetailCountryRecovered':
        return DetailCountryRecovered().fromJson(json);
      case 'DetailCountryDeaths':
        return DetailCountryDeaths().fromJson(json);
      case 'CountryEntity':
        return CountryEntity().fromJson(json);
      case 'CountryCountry':
        return CountryCountry().fromJson(json);
      case 'GlobalEntity':
        return GlobalEntity().fromJson(json);
      case 'GlobalConfirmed':
        return GlobalConfirmed().fromJson(json);
      case 'GlobalRecovered':
        return GlobalRecovered().fromJson(json);
      case 'GlobalDeaths':
        return GlobalDeaths().fromJson(json);
      case 'GlobalDailyTimeSeries':
        return GlobalDailyTimeSeries().fromJson(json);
      case 'GlobalCountryDetail':
        return GlobalCountryDetail().fromJson(json);
    }
    return null;
  }

  //empty list is returned by type
  static _getListFromType(String type) {
    switch (type) {
      case 'DetailCountryEntity':
        return List<DetailCountryEntity>();
      case 'DetailCountryConfirmed':
        return List<DetailCountryConfirmed>();
      case 'DetailCountryRecovered':
        return List<DetailCountryRecovered>();
      case 'DetailCountryDeaths':
        return List<DetailCountryDeaths>();
      case 'CountryEntity':
        return List<CountryEntity>();
      case 'CountryCountry':
        return List<CountryCountry>();
      case 'GlobalEntity':
        return List<GlobalEntity>();
      case 'GlobalConfirmed':
        return List<GlobalConfirmed>();
      case 'GlobalRecovered':
        return List<GlobalRecovered>();
      case 'GlobalDeaths':
        return List<GlobalDeaths>();
      case 'GlobalDailyTimeSeries':
        return List<GlobalDailyTimeSeries>();
      case 'GlobalCountryDetail':
        return List<GlobalCountryDetail>();
    }
    return null;
  }

  static M fromJsonAsT<M>(json) {
    String type = M.toString();
    if (json is List && type.contains("List<")) {
      String itemType = type.substring(5, type.length - 1);
      List tempList = _getListFromType(itemType);
      json.forEach((itemJson) {
        tempList
            .add(_fromJsonSingle(type.substring(5, type.length - 1), itemJson));
      });
      return tempList as M;
    } else {
      return _fromJsonSingle(M.toString(), json) as M;
    }
  }
}

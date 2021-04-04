import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:core';
import 'dart:developer' as developer;
import 'package:flutter_app/mvp/model/Contact.dart';
import 'package:flutter_app/mvp/networks/FetchDataException.dart';

import 'ContactRepository.dart';

class RandomUserRepository implements ContactRepository {

  static const _kRandomUserUrl = 'http://api.randomuser.me/?results=15';
  final JsonDecoder _decoder = new JsonDecoder();

  @override
  Future<List<Contact>> fetch() async {
    final response = await http.get(_kRandomUserUrl);
    final jsonBody = response.body;
    final statusCode = response.statusCode;

    if(statusCode < 200 || statusCode >= 300 || jsonBody == null) {
      throw new FetchDataException("Error while getting contacts [StatusCode:$statusCode, Error:${response.reasonPhrase}]");
    }

    final contactsContainer = _decoder.convert(jsonBody);
    final List contactItems = contactsContainer['results'];
    developer.log('fetch data', name: 'RandomUserRepository');
    return contactItems.map( (contactRaw) => Contact.fromMap(contactRaw) )
        .toList();
  }

}
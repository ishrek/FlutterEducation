import 'package:flutter_app/mvp/model/Contact.dart';

abstract class ContactRepository {
  Future<List<Contact>> fetch();
}
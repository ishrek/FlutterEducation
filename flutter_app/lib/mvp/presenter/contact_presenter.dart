import 'package:flutter_app/mvp/model/Contact.dart';

abstract class ContactListViewContract {
  void onLoadContactsComplete(List<Contact> items);
  void onLoadContactsError();

}
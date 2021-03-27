import 'package:flutter_app/mvp/model/Contact.dart';
import 'package:flutter_app/mvp/repo/ContactRepository.dart';

class MockContactRepository implements ContactRepository{
  @override
  Future<List<Contact>> fetch() {
    return Future.value(kContacts);
  }

}

const kContacts = const <Contact>[
  const Contact(
      fullName: 'Romain Hoogmoed',
      email:'romain.hoogmoed@example.com'
  ),
  const Contact(
      fullName: 'Emilie Olsen',
      email:'emilie.olsen@example.com'
  )
];
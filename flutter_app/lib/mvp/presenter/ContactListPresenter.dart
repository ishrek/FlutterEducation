import 'package:flutter_app/mvp/libs/dependency_%E1%BB%8Bneccttiionn.dart';
import 'package:flutter_app/mvp/presenter/contact_presenter.dart';
import 'package:flutter_app/mvp/repo/ContactRepository.dart';

class ContactListPresenter {
  ContactListViewContract _view;
  ContactRepository _repository;

  ContactListPresenter(this._view){
    _repository = new Injector().contactRepository;
  }

  void loadContacts(){
    assert(_view != null);

    _repository.fetch()
        .then((contacts) => _view.onLoadContactsComplete(contacts))
        .catchError((onError) {
      print(onError);
      _view.onLoadContactsError();
    });
  }

}
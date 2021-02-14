// The reducer : Khi nhận được Action:  Increment, thì biến số state sẽ thay đổi- tăng lên 1
import 'actions.dart';

int counterReducer(int state, dynamic action) {
  if (action == actions.ReduxIncrement) {
    return state + 1;
  }

  return state;
}
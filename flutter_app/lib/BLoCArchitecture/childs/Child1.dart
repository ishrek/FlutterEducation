import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../BlocProvider.dart';
import '../BloCModel/ColorBloc.dart';

class Child1 extends StatelessWidget {
  ColorBloc colorBloc;
  @override
  Widget build(BuildContext context) {
    //geeting the instance of our model created at Parent
    colorBloc = BlocProvider.of(context);
    return Column(
      children: <Widget>[
        Container(
          //StreamBuilder liên tục lắng nghe sự thay đổi của stream mà nó đăng ký lắng nghe đến và với mỗi thay đổi của stream nó sẽ cập nhật Widget tương ứng
          child: StreamBuilder(
            initialData: Colors.red,
            stream: colorBloc.colorStream,
            builder: (BuildContext context, snapShot) => Center(
              child: Container(
                height: 200.0,
                width: 200.0,
                color: snapShot.data,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
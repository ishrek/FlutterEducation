import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'FutureProviderPage.dart';
import 'LoadDataFromJson.dart';
import 'NumberStream.dart';
import 'StreamProviderPage.dart';

/*
* https://baoflutter.com/nghe-thuat-flutter-futureprovider-streamprovider/?unapproved=33&moderation-hash=58366755fb392249561556d15a1b80ae#comment-33
*
* */
class DemoFutureProviderWithStreamProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: MultiProvider(
            providers: [
              FutureProvider(create: (_) => LoadDataFromJson().loadUserData()),
              StreamProvider(create: (_) => NumberStream().intStream(), initialData: 0)
            ],
            child: DefaultTabController(
                length: 2,
                child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text("Advanced Provider"),
                      bottom: TabBar(
                        tabs: [
                          Tab(child: Text("FutureProvider"),),
                          Tab(child: Text("StreamProvider"),),
                        ],
                      ),
                    ),
                    body: TabBarView(
                      children: [
                        FutureProviderPage(),
                        StreamProviderPage((value) {
                          print('StreamProviderPage : ' + value);
                          return;
                        }, () {
                          print("Count was selected.");
                        },),
                      ],
                    ),
                  ),
                )
            )
        ),
    );
  }
}
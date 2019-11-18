import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'increment-controller.dart';

class IncremnetWidget extends StatefulWidget {
  @override
  _IncremnetWidgetState createState() => _IncremnetWidgetState();
}

class _IncremnetWidgetState extends State<IncremnetWidget> {
  final IncrementController bloc = BlocProvider.getBloc<IncrementController>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: bloc.decrement,
          )
        ],
      ),
      body: Center(
          child: StreamBuilder(
              stream: bloc.outCounter,

              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return Text("Você clicou no botão ${snapshot.data} vezes");
              })),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: bloc.increment,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2.0,
          centerTitle: true,
          title: Text('APP BANCARIO '),
        ),
        body: Column(
          children: [
            titleSection,
            tarjeta(),
            SizedBox(height: 30.0),
            botones,
            SizedBox(height: 30.0),
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2(),
            SizedBox(height: 30.0),
            _cardTipo3(),
          ],
        ));
  }
}

Widget botones = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    FlatButton(
      child: Text('Historial'),
      color: Colors.blueAccent,
      onPressed: () {},
    ),
    FlatButton(
      child: Text('Transferir'),
      onPressed: () {},
    ),
    FlatButton(
      child: Text('Recargas'),
      onPressed: () {},
    ),
    FlatButton(
      child: Text('Ajustes'),
      onPressed: () {},
    )
  ],
);

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Mostrar Saldo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'S/15000',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      )
    ],
  ),
);

Widget tarjeta() {
  return Container(
      height: 150,
      width: 350,
      child: Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("XXX-XXX-XXX")],
        ),
      ));
}

Widget _cardTipo1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.card_giftcard, color: Colors.blue),
          title: Text('Recarga'),
          subtitle: Text('Visa ***\n12-05-20'),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: <Widget>[
        //     FlatButton(
        //       child: Text('Cancelar'),
        //       onPressed: () {},
        //     ),
        //     FlatButton(
        //       child: Text('Ok'),
        //       onPressed: () {},
        //     )
        //   ],
        // )
      ],
    ),
  );
}

Widget _cardTipo2() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.card_giftcard, color: Colors.blue),
          title: Text('Plaza Vea'),
          subtitle: Text('Shooping ***\n10 Enero - 10:37'),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: <Widget>[
        //     FlatButton(
        //       child: Text('Cancelar'),
        //       onPressed: () {},
        //     ),
        //     FlatButton(
        //       child: Text('Ok'),
        //       onPressed: () {},
        //     )
        //   ],
        // )
      ],
    ),
  );
}

Widget _cardTipo3() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.card_giftcard, color: Colors.blue),
          title: Text('Recarga'),
          subtitle: Text('Visa ***\n1 Enero - 12:07'),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: <Widget>[
        //     FlatButton(
        //       child: Text('Cancelar'),
        //       onPressed: () {},
        //     ),
        //     FlatButton(
        //       child: Text('Ok'),
        //       onPressed: () {},
        //     )
        //   ],
        // )
      ],
    ),
  );
}

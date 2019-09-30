import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componente de entradas de dados',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Componente de entradas de dados'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _stateCheck = false;
  bool _stateCheck2 = false;

  bool _stateSwithc = false;

  double _stateSlider = 5;
  double  _sliderText = 5;

  String _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: "Digite seu Email"),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Senha"),
              maxLength: 6,
              maxLengthEnforced: false,
              obscureText: true,
            ),
            /*Checkbox(
              value: this._stateCheck,
              onChanged: (bool valor) {
                setState(() {
                  _stateCheck = valor;
                });
              },
            ),*/
            CheckboxListTile(
                title: Text("Comida brasileira"),
                subtitle: Text("Voce gosta?"),
                activeColor: Colors.blue,
                secondary: Icon(Icons.all_inclusive),
                selected: this._stateCheck,
                value: this._stateCheck,
                onChanged: (bool valor) {
                  setState(() {
                    _stateCheck = valor;
                  });
                }),
            CheckboxListTile(
                title: Text("Comida Mexicana"),
                subtitle: Text("Voce gosta?"),
                activeColor: Colors.amberAccent,
                secondary: Icon(Icons.ac_unit),
                selected: this._stateCheck2,
                value: this._stateCheck2,
                onChanged: (bool valor) {
                  setState(() {
                    _stateCheck2 = valor;
                  });
                }),
            RadioListTile(
                title: Text("Maculino"),
                value: "M",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }),
            RadioListTile(
                title: Text("Feminino"),
                value: "F",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha) {
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                }),
            SwitchListTile(
              title: Text("Receber notificações"),
              subtitle: Text("email ativos"),
              value: this._stateSwithc,
              activeColor: Colors.green,
              selected: this._stateSwithc,
              onChanged: (bool valor) {
                setState(() {
                  _stateSwithc = valor;
                });
              },
              secondary: Icon(Icons.access_alarm),
            ),
            Slider(
                label: this._sliderText.toString(),
                divisions: 10,
                value: this._stateSlider,
                min: 0,
                max: 10,
                onChanged: (value){
                  setState(() {
                    _stateSlider = value;
                    _sliderText = value;
                  });
                },

            )
          ],
        ),
      ),
    );
  }
}

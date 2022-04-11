import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: brinquedoelista(),
      debugShowCheckedModeBanner: false,
    ));

class brinquedoelista extends StatefulWidget {
  @override
  State<brinquedoelista> createState() => _brinquedoelistaState();
}

class _brinquedoelistaState extends State<brinquedoelista> {
  double value = 50;
  double value1 = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/favicon-lovepeople.png',
          ),
        ),
        title: Text(
          "Montanha-Russa",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Container(
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/montanha.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  'Insira sua idade:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      '5',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Slider(
                          value: value,
                          min: 5,
                          max: 90,
                          divisions: 90,
                          thumbColor: Colors.blue,
                          activeColor: Colors.blue[400],
                          inactiveColor: Colors.blue[100],
                          label: value.round().toString(),
                          onChanged: (newvalue) {
                            setState(() {
                              value = newvalue;
                            });
                          }),
                    ),
                    Text(
                      '90',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Insira sua altura(em cm):',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                child: Row(
                  children: [
                    Text(
                      '100',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Slider(
                          value: value1,
                          min: 100,
                          max: 210,
                          divisions: 210,
                          thumbColor: Colors.blue,
                          activeColor: Colors.blue[400],
                          inactiveColor: Colors.blue[100],
                          label: value1.round().toString(),
                          onChanged: (newvalue) {
                            setState(() {
                              value1 = newvalue;
                            });
                          }),
                    ),
                    Text(
                      '210',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 110),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size.fromWidth(0),
                            primary: Colors.black,
                            backgroundColor: Colors.blue[300],
                            side: BorderSide(width: 1, color: Colors.black),
                          ),
                          onPressed: () {
                            if (value1 < 150) {
                              dialogo4();
                            } else if (value < 18) {
                              dialogo2();
                            } else if (value > 60) {
                              dialogo3();
                            } else {
                              dialogo1();
                            }
                          },
                          child: Container(
                            height: 20,
                            width: 120,
                            child: Text(
                              'Garantir ingresso!',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future dialogo1() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Column(
            children: [
              Text(
                'Boa diversão, ingresso garantido!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/feliz.png'),
              ),
            ],
          ),
        ),
      );
  Future dialogo2() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Column(
            children: [
              Center(
                child: Text(
                  'Infelizmente esse brinquedo é exclusivo para maiores de idade.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/triste.png'),
              ),
            ],
          ),
        ),
      );
  Future dialogo3() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Column(
            children: [
              Center(
                child: Text(
                  'Infelizmente esse brinquedo não é permitido para pessoas com mais de 60 anos.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/choroidoso.jpg'),
              ),
            ],
          ),
        ),
      );
  Future dialogo4() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Column(
            children: [
              Center(
                child: Text(
                  'Infelizmente esse brinquedo não é permitido para pessoas abaixo de 1,5m.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/baixo.png'),
              ),
            ],
          ),
        ),
      );
}

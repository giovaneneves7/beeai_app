import 'dart:async';  // Para usar Timer
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HiveDataScreen extends StatefulWidget {
  @override
  _HiveDataScreenState createState() => _HiveDataScreenState();
}

class _HiveDataScreenState extends State<HiveDataScreen> {
  
  String weight = "Carregando...";
  String temperature = "Carregando...";

  Timer? _timer; 

  @override
  void initState() {
    super.initState();
    
    // Inicializando timer para buscar o peso a cada 2 segundos
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      fetchWeight();
    });
  }

  @override
  void dispose() {
    
    // Cancelando timer quando o widget é destruído
    
    _timer?.cancel();
    super.dispose();
  }

  Future<void> fetchWeight() async {
    try {

      // Fazendo requisição para o ESP8266 
      final response = await http.get(Uri.parse('http://192.168.4.1/'));

      if (response.statusCode == 200) {

        // Usamos RegExp para buscar o valor do peso no HTML retornado
        
        RegExp regExp = RegExp(r'Peso: (\d+\.?\d*) kg');
        RegExp tempExp = RegExp(r'Temperatura: (\d+\.?\d*) °C');

        var match = regExp.firstMatch(response.body);
        var tempMatch = tempExp.firstMatch(response.body);
        
        if (match != null) {
          setState(() {
            weight = "${match.group(1)} kg";
          });
        } else {
          setState(() {
            weight = "Erro ao obter peso";
          });
        }

        if(tempMatch != null){
          
          temperature = "${tempMatch.group(1)} °C";
        
        } else{

          temperature = "Erro ao obter a temperatura!";

        }

      } else {
        setState(() {
          weight = "Erro na conexão";
        });
      }
    } catch (e) {
      setState(() {
        weight = "Falha na requisição";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Col345'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.orange,
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.hive, size: 40, color: Colors.white),
                    SizedBox(height: 8),
                    Text(
                      'Col345\n(Ativa)',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Total de Abelhas:',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '156',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.location_on, size: 24, color: Colors.white),
                    SizedBox(height: 4),
                    Text(
                      'Localização:',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '6.66719, -14.98771',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dados Da Colmeia',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('Temperatura:'),
                          SizedBox(height: 4),
                          Text(
                            temperature,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Peso:'),
                          SizedBox(height: 4),
                          Text(
                            weight, 
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

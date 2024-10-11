import 'package:flutter/material.dart';

class HiveDataScreen extends StatefulWidget {
  @override
  _HiveDataScreenState createState() => _HiveDataScreenState();
}

class _HiveDataScreenState extends State<HiveDataScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Col345'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {

            },
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
                            '29°C',
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
                            '80kg',
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
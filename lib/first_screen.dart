import 'package:flutter/material.dart';

class PrimeraClass extends StatefulWidget {
  @override
  _PrimeraClassState createState() => new _PrimeraClassState();
}

class _PrimeraClassState extends State<PrimeraClass> {
  String maritalStatus = 'single';
  bool termsChecked = true;

  List<String> locations = ['A', 'B', 'C', 'D'];
  String? selectedLocation; // Variable para controlar el estado del Dropdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        title: Center(
          child: Text(''),
        ),
        actions: <Widget>[
          Icon(Icons.settings),
        ],
        // bottom: PreferredSize(
        //   preferredSize: Size.fromHeight(40.0),
        //   child: Text('This is a text in appbar'),
        // ),
      ),
      body: Material(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter Name', 
                      hintText: 'Name',
                    ),
                  ), // TextFormField
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Age', 
                      labelText: 'Enter Age',
                    ),
                    keyboardType: TextInputType.number,
                  ), // TextFormField
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password', 
                      labelText: 'Enter Password',
                    ), // InputDecoration
                  ), // TextFormField
                  DropdownButton<String>(
                    hint: Text('Please choose the city you live in'),
                    value: selectedLocation,
                    items: locations.map((location) {
                      return DropdownMenuItem<String>(
                        child: new Text(location),
                        value: location,
                      ); // DropdownMenuItem
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        selectedLocation = newValue;
                      });
                    },
                  ), // DropdownButton
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(
                        child: RadioListTile<String>(
                          title: const Text('Single'),
                          value: 'single',
                          groupValue: maritalStatus,
                          onChanged: (newValue) {
                            setState(() {
                              maritalStatus = newValue!;
                            });
                          },
                        ), // RadioListTile // Expanded
                      ),
                      Expanded(
                        child: RadioListTile<String>(
                          title: const Text('Married'),
                          value: 'married',
                          groupValue: maritalStatus,
                          onChanged: (newValue) {
                            setState(() {
                              maritalStatus = newValue!;
                            });
                          },
                        ), // RadioListTile // Expanded
                      ),
                    ], // <Widget>[]
                  ), // Row
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    value: termsChecked,
                    title: new Text(
                      'Sign up for the newspaper and related articles',
                    ), // Text
                    onChanged: (bool? newValue) {
                      setState(() {
                        termsChecked = newValue ?? false;
                      });
                    },
                  ), // CheckboxListTile
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // color: Colors.blue
                      foregroundColor: Colors.white, // textColor: Colors.white
                    ),
                    onPressed: () {
                      // Acción del botón Register
                    },
                    child: new Text('Register'),
                  ), // ElevatedButton
                ], // <Widget>[]
              ), // Column
            ), // Form
          ), // Container
        ), // SingleChildScrollView
      ), // Material
    ); // Scaffold
  }
}
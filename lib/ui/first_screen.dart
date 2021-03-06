import 'dart:io';
import 'package:flutter/material.dart';
import './detail_screen.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class FirstScreen extends StatefulWidget {
  int num = 0;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FirstSceenState();
  }
}

class FirstSceenState extends State {
  List<String> _passengers = ["", "1", "2", "3", "4", "5"];
  String _passenger = "1";
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
          _image = image;
        });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: (){
          getImage();
        },
      ),
        appBar: AppBar(
          title: Text("First Screen"),
        ),
        body: Form(
          child: ListView(
            children: <Widget>[
              _image == null ? Text("No image selected") : Image.file(_image),
              InputDecorator(
                decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  labelText: "Passenger"
                ),
                isEmpty: true,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isDense: true,
                    value: _passenger,
                    onChanged: (String value) {
                      setState(() {
                          _passenger = value;
                      });
                    },
                    items: _passengers.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              DateTimePickerFormField(
                inputType: InputType.date,
                format: DateFormat("yyyy-MM-dd"),
                decoration: InputDecoration(labelText: "Date"),
              )
            ],
          ),
        ));
  }
}

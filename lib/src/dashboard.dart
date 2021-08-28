import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:gamify/src/controller.dart';
import 'package:gamify/src/drawer.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class Dashboard extends StatelessWidget {
  // const Dashboard({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormBuilderState>();
  final form = FormGroup({
  'name': FormControl<String>(value: 'John Doe'),
  'email': FormControl<String>(value: 'johndoe@email.com'),
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text("AGAPP"),
      
      ),
      drawer: MyDrawer(),
      
      body: ReactiveForm(
                formGroup: this.form,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Master Info Registration',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 30),
                    ReactiveTextField(
                      formControlName: 'vehicle_origination',
                      decoration: InputDecoration(
                        hintText: 'Vehicle Origination',
                        filled: true,
                        fillColor: Color(0xFFDBEDFF),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ReactiveTextField(
                      formControlName: 'owner',
                      decoration: InputDecoration(
                        hintText: 'Unit Owner',
                        filled: true,
                        fillColor: Color(0xFFDBEDFF),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ReactiveTextField(
                      formControlName: 'build_id',
                      decoration: InputDecoration(
                        hintText: 'Build ID',
                        filled: true,
                        fillColor: Color(0xFFDBEDFF),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ReactiveTextField(
                      formControlName: 'modified_by',
                      decoration: InputDecoration(
                        hintText: 'Modified by',
                        filled: true,
                        fillColor: Color(0xFFDBEDFF),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(height: 20),
                    ReactiveFormConsumer(builder: (context, form, child) {
                      return ElevatedButton(
                        onPressed: () async {
                          Get.offAllNamed('/vehicle-inventory/new-application');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                        ),
                        child: Text('Submit'),
                      );
                    })
                  ],
                )),
      
      
      
      
    );
  }
}
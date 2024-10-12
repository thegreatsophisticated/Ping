// import 'package:expenses/models/widgets/expenseslist.dart';

import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:intl/intl.dart';
// import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';

// var dateformat = DateFormat.yMd();
// final _user = FirebaseAuth.instance;
// final User user = _user.currentUser!;
// final uuid = user.uid;

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() {
    return _EditProfileState();
  }
}

class _EditProfileState extends State<EditProfile> {
  // String _enteredEmail = '';
  // String _enteredUsername = '';
  // String _enteredPhone = '';
  final _enteredUsername = TextEditingController();
  final _enteredPhone = TextEditingController();

  String _pickedimageurl = '';
  var _pickedimage;
  File? _pickedImageFile;
  // void _pickImage() async {
  //   _pickedimage = await ImagePicker().pickImage(
  //     source: ImageSource.camera,
  //     // imageQuality: 50,
  //     // maxWidth: 150,
  //   );
  //   if (_pickedimage == null) {
  //     return;
  //   }
  //   setState(() {
  //     _pickedImageFile = File(_pickedimage.path);
  //   });
  // }

  final _form = GlobalKey<FormState>();
  void editprof() async {
    // final isValid = _form.currentState!.validate();

    // if (!isValid) {
    //   return;
    // }
    // try {
    //   // if (_pickedimage == null) {
    //   //   return;
    //   // } else {
    //   //   final ref = FirebaseStorage.instance.ref().child('images');
    //   //   await ref.putFile(_pickedimage);
    //   //   _pickedimageurl = await ref.getDownloadURL();
    //   // }
    //   // print('PICKED IMAGE$_pickedimageurl');
    //   // await FirebaseFirestore.instance.collection('users').doc(uuid).set({
    //   //   'username': _enteredUsername.text,
    //   //   'phone': _enteredPhone.text,
    //   //   'profileurl': "photoURL",
    //   //   'email': "a@a.com",
    //   //   'id': uuid,
    //   // });
    //   _form.currentState!.save();
    // } on FirebaseAuthException catch (error) {
    //   if (error.code == 'email-already-in-use') {
    //     //....
    //   }
    //   ScaffoldMessenger.of(context).clearSnackBars();
    //   ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(content: Text(error.message ?? 'Authentication failed.')));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(0, 242, 193, 253),
            Color.fromARGB(0, 137, 45, 151),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Edit Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    foregroundImage: _pickedImageFile != null
                        ? FileImage(_pickedImageFile!)
                        : null,
                  ),

                  // IconButton(
                  //   onPressed: _pickImage,
                  //   icon: const Icon(Icons.add_a_photo_outlined),
                  // ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add_a_photo_outlined),
                      label: Text(
                        "Upload a profile photo",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      )),
                ],
              ),
            ),
            TextFormField(
              controller: _enteredUsername,
              decoration: const InputDecoration(labelText: 'Username'),
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.none,
              autocorrect: false,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please enter a valid Username';
                }
                return null;
              },
              // onSaved: (value) {
              //   _enteredUsername = value!;
              // },
            ),
            // TextFormField(
            //   decoration: const InputDecoration(labelText: 'Email Address'),
            //   keyboardType: TextInputType.emailAddress,
            //   textCapitalization: TextCapitalization.none,
            //   autocorrect: false,
            //   validator: (value) {
            //     if (value == null ||
            //         value.trim().isEmpty ||
            //         !value.contains('@')) {
            //       return 'Please enter a valid email address';
            //     }
            //     return null;
            //   },
            //   onSaved: (value) {
            //     _enteredEmail = value!;
            //   },
            // ),
            TextFormField(
              controller: _enteredPhone,
              decoration: const InputDecoration(label: Text("Phone")),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value.toString().length < 10 || value.toString().isEmpty) {
                  return 'Please enter a valid phone number';
                }
                return null;
              },
              // onSaved: (value) {
              //   _enteredPhone = value!;
              // },
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Cancel"),
                ),
                OutlinedButton(
                    onPressed: () {
                      editprof();
                      // Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      "Save",
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

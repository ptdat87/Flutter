//import 'package:firebase/firestore.dart';
//import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:siam_demo/style/controlStyle.dart';
import 'package:siam_demo/view/account/retailerList.dart';
import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  File _image;
  final FirebaseStorage _storage =
  FirebaseStorage(storageBucket: 'gs://demo2-b7bfe.appspot.com');
  StorageUploadTask _uploadTask;

  Future _getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  void _startUpload() {

    /// Unique file name for the file
    String filePath = 'images/${DateTime.now()}.png';

    setState(() {
      _uploadTask = _storage.ref().child(filePath).putFile(_image);
    });
  }

//  Future uploadPic(BuildContext context) async {
//    FirebaseStorage _storage =
//    FirebaseStorage(storageBucket: 'gs://demo2-b7bfe.appspot.com');
//    String fileName = basename(_image.path);
////    StorageReference storageReference = FirebaseStorage.instance.ref().child('gs://demo2-b7bfe.appspot.com');
//
////    StorageUploadTask storageUploadTask = storageReference.putFile(_image);
//    StorageUploadTask storageUploadTask = _storage.ref().child(fileName).putFile(_image);
//
//        StorageTaskSnapshot taskSnapshot = await storageUploadTask.onComplete;
//    final String url = (await taskSnapshot.ref.getDownloadURL());
//    print('URL Is $url');
//  }


  @override
  Widget build(BuildContext context) {
    ImageProvider imageProvider = _image == null?  NetworkImage(
                           // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJbkuoOkNfFiMIe8Q5rVKmyOwwmTseM8SLvDHoMjjDNGO_epxY&s'
         'https://firebasestorage.googleapis.com/v0/b/fir-de29d.appspot.com/o/IMG_5316JPG.jpg?alt=media&token=8608e08e-6ae0-4a18-a74b-c04e022628e1'
                        ): FileImage(_image);

    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Đăng Ký Tài Khoản'),
//          actions: <Widget>[
//            FlatButton.icon(
//              icon: Icon(Icons.save,color: Colors.white,
//              ),
//              label: Text('Lưu',style: TextStyle(
//                color: Colors.white
//              ),),
//              color: Colors.transparent,
//              onPressed: (){},
//            )
//          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(
                  top: 20.0, right: 25.0, left: 25.0, bottom: 20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 30.0),
                    child: InkWell(
                      child:     CircleAvatar(
                        maxRadius: 50.0,
                        backgroundImage: imageProvider,
                      ),

                      onTap: () {
                        print('tap me');
                        _getImage();
                        },
                    ),

                  ),

                  //Ten
                  Row(
                    children: <Widget>[
                      Text(
                        'Tên',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Expanded(
                        child: Container(
                           // color: Colors.red,
                            height: 30.0,
                            margin: const EdgeInsets.only(top: 0.0),
//child: Text('123'),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Nhập họ tên',
                                  contentPadding: EdgeInsets.only(top: 11.0, bottom: 0.0),
                                  border: InputBorder.none,
                                  counter: Offstage(),
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.normal)
                              ,isDense: true
                              ),
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.right,
                              maxLength: 30,

                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.lightBlue[800],
                                  fontWeight: FontWeight.bold,
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                  Divider(
                    indent: 2.0,
                    endIndent: 2.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Mật khẩu',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Expanded(
                        child: Container(
                            height: 30.0,
                            margin: const EdgeInsets.only(top: 0.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Nhập mật khẩu',
                                  contentPadding: EdgeInsets.all(5.0),
                                  border: InputBorder.none,
                                  counter: Offstage(),
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.normal)
//                                suffixIcon: IconButton(
//                                  onPressed: () => (){},
//                                  icon: Icon(Icons.visibility,),
//                                  padding: EdgeInsets.only(top: 0.0),
//                                  iconSize: 20.0,
//                                ),
                                  ),
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.right,
                              maxLength: 30,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.lightBlue[800],
                                  fontWeight: FontWeight.bold),
                              obscureText: true,
                            )),
                      )
                    ],
                  ),
                  Divider(
//                    color: Colors.black,
                    indent: 2.0,
                    endIndent: 2.0,
//                    thickness: 1.0,
//                    height: 1.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Xác nhận mật khẩu',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Expanded(
                        child: Container(
                            height: 30.0,
                            margin: const EdgeInsets.only(top: 0.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Nhập xác nhận mật khẩu',
                                  contentPadding: EdgeInsets.all(5.0),
                                  border: InputBorder.none,
                                  counter: Offstage(),
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.normal)),
                              keyboardType: TextInputType.text,
                              textAlign: TextAlign.right,
                              maxLength: 30,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.lightBlue[800],
                                  fontWeight: FontWeight.bold),
                              obscureText: true,
                            )),
                      )
                    ],
                  ),
                  Divider(
                    indent: 2.0,
                    endIndent: 2.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Số điện thoại',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Expanded(
                        child: Container(
                            height: 30.0,
                            margin: const EdgeInsets.only(top: 0.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Nhập số điện thoại',
                                  contentPadding: EdgeInsets.all(5.0),
                                  border: InputBorder.none,
                                  counter: Offstage(),
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.normal)),
                              keyboardType: TextInputType.phone,
                              textAlign: TextAlign.right,
                              maxLength: 12,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.lightBlue[800],
                                  fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  ),
                  Divider(
                    indent: 2.0,
                    endIndent: 2.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Email',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Expanded(
                        child: Container(
                            height: 30.0,
                            margin: const EdgeInsets.only(top: 0.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Nhập email',
                                  contentPadding: EdgeInsets.all(5.0),
                                  border: InputBorder.none,
                                  counter: Offstage(),
                                  hintStyle:
                                      TextStyle(fontWeight: FontWeight.normal)),
                              validator: validateEmail,
                              keyboardType: TextInputType.emailAddress,
                              textAlign: TextAlign.right,
                              maxLength: 40,
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.lightBlue[800],
                                  fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  ),
                  Divider(
                    indent: 2.0,
                    endIndent: 2.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Cửa hàng mặc định     ',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      Expanded(
                        child: Container(
                          height: 30.0,
                          child: MyStatefulWidget(),
                          alignment: Alignment.centerRight,
                        ),
                      )
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30.0),
                      child: Row(children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            color: Colors.red,
                            textColor: Colors.white,
                            child: Text('Save'),
                            onPressed: _startUpload,
                            //onPressed: (){uploadPic(context);},
                          ),
                        ),
                      ]))
                ],
              ),
            )
          ],
        ),

//          bottomSheet: Row(children: <Widget>[
//            Expanded(
//                child: Padding(
//                    padding: EdgeInsets.only(left:5.0 ,right: 5.0),
//                    child: RaisedButton(
//                      color: Colors.deepOrange,
//                      textColor: Colors.white,
//                      child: Text('Save'),
//                      onPressed: () {},
//                    ))),
//            Expanded(
//                child: Padding(
//                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
//                    child: RaisedButton(
//                      color: Colors.deepOrange,
//                      textColor: Colors.white,
//                      child: Text('Exit'),
//                      onPressed: () {},
//                    ))),
//          ])

//        bottomNavigationBar: BottomNavigationBar(
//          items: const <BottomNavigationBarItem>[
//            BottomNavigationBarItem(
//              icon: Icon(Icons.home),
//              title: Text('Home'),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.business),
//              title: Text('Business'),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(Icons.school),
//              title: Text('School'),
//            ),
//          ],
////          currentIndex: _selectedIndex,
//          selectedItemColor: Colors.amber[800],
//          onTap: (int i){},
//        ),
      ),
    );
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }
}

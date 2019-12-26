import 'package:flutter/material.dart';
import 'package:siam_demo/style/controlStyle.dart';

class Account_2 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Account_2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Đăng ký tài khoản'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: const EdgeInsets.only(
                  top: 100.0, right: 40.0, left: 40.0, bottom: 500.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 42.0,
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: myBoxDecoration(),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        hintText: 'TÊN ĐĂNG NHẬP/SỐ ĐIỆN THOẠI',
                        contentPadding: EdgeInsets.only(top: 12.0),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    height: 42.0,
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: myBoxDecoration(),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.blue,
                          ),
                          hintText: 'MẬT KHẨU',
                          contentPadding: EdgeInsets.only(top: 12.0),
                          border: InputBorder.none),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  ),
                  Container(
                    height: 42.0,
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: myBoxDecoration(),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.blue,
                        ),
                        hintText: 'NHẬP LẠI MẬT KHẨU',
                        contentPadding: EdgeInsets.only(top: 12.0),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                  ),
                  Container(
                    height: 42.0,
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: myBoxDecoration(),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.blue,
                        ),
                        hintText: 'SỐ ĐIỆN THOẠI',
                        contentPadding: EdgeInsets.only(top: 12.0),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    height: 42.0,
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: myBoxDecoration(),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Colors.blue,
                        ),
                        hintText: 'ĐỊA CHỈ EMAIL',
                        contentPadding: EdgeInsets.only(top: 12.0),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    height: 42.0,
                    margin: const EdgeInsets.only(top: 10.0),
                    decoration: myBoxDecoration(),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.store,
                          color: Colors.blue,
                        ),
                        hintText: 'CHỌN CỬA HÀNG MẶC ĐỊNH',
                        contentPadding: EdgeInsets.only(top: 12.0),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

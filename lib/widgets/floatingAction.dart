import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:upai_app/provider/selectTabProvider.dart';
import 'package:upai_app/views/pages/qrCode.dart';

class FloatWidget extends StatefulWidget {
  const FloatWidget({Key? key}) : super(key: key);

  @override
  _FloatWidgetState createState() => _FloatWidgetState();
}

class _FloatWidgetState extends State<FloatWidget> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFFFF6B00),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Image.asset('assets/img/iconCenter.png'),
      ),
      onPressed: (){
        Provider.of<SelectTabProvider>(context,listen: false).toggleSelect(QR_Page(),5);
      }
    );
  }
}

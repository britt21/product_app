import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/ui/product_details_screen.dart';
import '../storage/app_storage.dart';



class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child:ElevatedButton(
          onPressed: () {
            AppStorage.saveUserLogin(true);

       Get.to(()=> ProductDetailScreen());
          },
          child: Text('Login'),
        ),

      ),
    );
  }
}

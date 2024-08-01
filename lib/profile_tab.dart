import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
   ProfileTab({super.key});

  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.white
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Name",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white),
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.edit,color: Colors.white,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Phone Number",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white),
            ),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.phone,color: Colors.white,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Email",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.email,color: Colors.white,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Password",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white),
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.password,color: Colors.white,),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(style: BorderStyle.solid,width: 5,color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

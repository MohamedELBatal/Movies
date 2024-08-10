import 'package:flutter/material.dart';
import 'package:movies_app/features/login/presentation/pages/login.dart';

class ProfileTab extends StatelessWidget {
  ProfileTab({super.key});

  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.grey,
                        size: 200,
                      ),
                    ),
                    Positioned(
                      bottom: -1,
                      right: 2,
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            isDismissible: true,
                            enableDrag: true,
                            isScrollControlled: true,
                            elevation: 0,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            context: context,
                            builder: (context) => Container(
                              color: Colors.grey,
                              height: MediaQuery.of(context).size.height *0.2,
                              width: MediaQuery.of(context).size.width ,
                              child:  Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: (){},
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Camera",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                          Icon(Icons.camera_alt_outlined,size: 25)
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 30,),
                                    InkWell(
                                      onTap: (){},
                                      child: const Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Gallery",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                                          Icon(Icons.photo_library_outlined,size: 25,)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.white,width: 2),
                          ),
                          child: const Icon(
                            Icons.photo_camera,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                "Name",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white),
              ),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.text,
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
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
                    fontSize: 18,
                    color: Colors.white),
              ),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.phone,
                controller: phoneController,
                decoration: InputDecoration(
                  hintText: "+201017469538",
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: const Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
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
                    fontSize: 18,
                    color: Colors.white),
              ),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.text,
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "example@ex.com",
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: const Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
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
                    fontSize: 18,
                    color: Colors.white),
              ),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.text,
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: const Icon(
                    Icons.password,
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                        style: BorderStyle.solid,
                        width: 5,
                        color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  child: const Text(
                    "Log Out",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Login2Screen extends StatelessWidget {
  const Login2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            left_Right_Buttons(),

            Container(
              width: 150.0,
              height: 150.0,
              decoration:  const BoxDecoration(
                shape: BoxShape.circle,
                image:  DecorationImage(
                  fit: BoxFit.fill,
                  image:  NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZo1jKYBhaoz4WaCe3f_vUxE7f_W5JP79k7KsC6Aj3F7YIx1eV9SOZXxkbahNJbxaXo4M&usqp=CAU"
                  )
                )
              )
            ),

            const SizedBox(height: 50,),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue)
              ),
              child: SizedBox(
                height: 80,
                width: 400,
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(width: 20),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return  containerCircle();
                  },
                  scrollDirection: Axis.horizontal,
                  
                  
                ),
              ),
            ),
            const SizedBox(height: 50),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: const[
                  
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'NOMBRE',
                    
                    ),
                  ),

                  SizedBox(height: 18),

                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'CONTRASEÑA',
                    
                    ),
                  )
                  
                ],
              ),
            ),

            const SizedBox(height: 30),

            TextButton(
              onPressed: () => {}, 
              child: const Text('ACEPTAR', style: TextStyle(color: Colors.white),), 
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: const Size(300, 50),
              )
            ),
            const SizedBox(height: 70,),
            left_Right_Buttons(),

          ],
        ),
      )
    );
  }

  Padding left_Right_Buttons() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                button_circle(),
                 button_circle()
              ],
            ),
          );
  }

  SizedBox button_circle() {
    return SizedBox(
                    height: 70,
                    width: 70,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.indigo
                      ),
                      child: IconButton(
                        onPressed: () => {}, 
                        icon: const Icon(Icons.add_business_outlined)
                      ),
                    ),
                  );
  }

  SizedBox containerCircle() {
    return SizedBox(
                    height: 70,
                    width: 70,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.indigo
                      ),
                    ),
                  );
  }
}
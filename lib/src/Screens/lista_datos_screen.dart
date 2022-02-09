import 'package:flutter/material.dart';

class ListaDatosScreen extends StatelessWidget {
  const ListaDatosScreen({Key? key}) : super(key: key);
  final options = const ['QUÍMICA', 'GEOGRAFÍA', 'HISTORIA', 'ESPAÑOL', ' MATEMÁTICAS', 'QUÍMICA', 'GEOGRAFÍA', 'HISTORIA', 'ESPAÑOL', ' MATEMÁTICAS', 'QUÍMICA', 'GEOGRAFÍA', 'HISTORIA', 'ESPAÑOL', ' MATEMÁTICAS'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    resizeToAvoidBottomInset: false,
    appBar: AppBar(
      title: const Text('LISTA DE DATOS'),
      centerTitle: true,
      elevation: 0.0,
    ),
    
    body: Center(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 30.0)),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue)
            ),
            child: SizedBox(
              height: 200,
              width: 400,
              child: ListView(
                children: [
                  ...options.map(
                    (materias) => ListTile(
                      title: Text(materias),
                    )
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 50),
          Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue)
              ),
              child: SizedBox(
                height: 80,
                width: 400,
                child: ListView.separated(                 
                  separatorBuilder: (context, index) =>  const SizedBox(width: 30), 
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => button_circle(), 
                ),
              ),
            ),
          const SizedBox(height: 270),
          SizedBox(
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                    child: TextButton(onPressed: () => {}, child: const Text('1')),
                  ),
                ),

                SizedBox(
                  height: 70,
                  width: 70,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                    child: TextButton(onPressed: () => {},child: const Text('1')),
                  ),
                ),

                SizedBox(
                   height: 70,
                  width: 70,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                    child: TextButton(onPressed: () => {},child: const Text('1')),
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

  SizedBox button_circle() {
    return SizedBox(
                    height: 70,
                    width: 70,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.indigo
                      ),
                      child: TextButton(onPressed: () => {}, child: const Text('CLICK')),
                    ),
                  );
  }
}
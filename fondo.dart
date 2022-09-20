import 'package:flutter/material.dart';

class RegexForm extends StatefulWidget {
  const  RegexForm({Key? key}) : super(key: key);
  
  @override
  _RegexFormState createState() => _RegexFormState();

}

class _RegexFormState extends State<RegexForm>{

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  final emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final passwordValid = RegExp(r"^[a-z0-9]{8,16}");
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //body: Padding(
      //  padding: const EdgeInsets.all(35.0),
        child: Column(

        children:[
            _basic(),
          TextField(
            controller: emailController,
            maxLines: 1,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email, color: Colors.white,),
                labelText: 'Email',
                helperText: 'No olvides el @',
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.white),

            ),
            ),
          ),
          const SizedBox( height: 20,),
          TextField(
            controller: passwordController,
            maxLines: 1,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.password, color: Colors.white,),
                labelText: "Contraseña",
                helperText: "Recuerda que minimo 8 caracteres y maximo 16",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),

              ),
            ),
            ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              ElevatedButton(

                  child: const Text("INICIAR SESION"),
                  onPressed: (){
                    if(emailValid.hasMatch(emailController.text.toString())){
                      print("Email correcto");

                    }else{
                      print("Verifica que este bien escrito tu correo");
                    }
                    if(passwordValid.hasMatch(passwordController.text.toString())){
                     print("Contraseña correcta");
                    }else{
                      print("La contraseña no cumple con los parametros");

                    }
                    iniciar(context);


                  }),
              const SizedBox(height: 100,),
            ],
          )
        ],
      ),
    );

  }
}


_basic(){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 150.0,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(
            Radius.circular(82)
        ),
        image: DecorationImage(
          image: AssetImage('assets/MAC.png'),
        ),
      ),
    ),
  );

}

iniciar (BuildContext context){
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context){

       return AlertDialog(
        title: const Text("Estas Iniciando sesion"),
         content: const Text("Recuerda que debes tener los datos correctos"),
          actions: [
            TextButton(
              child: const Text("Aceptar"),
              onPressed: (){
                print("Aceptar");

                Navigator.pop(context);
              }),
              TextButton(
                child: Text("Cancelar"),
                  onPressed: (){
                    Navigator.pop(context);
                    print("Cancelar");
                    },
              )
          ],
        );
      }
  );
}
















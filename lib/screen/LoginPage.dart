import 'package:cooper_agro/screen/HomePage.dart';
import 'package:cooper_agro/screen/ForgotPasswordPage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  final String email;

  const LoginPage({super.key, this.email = ''});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  void _login() {
    String email = emailController.text;
    String password = passwordController.text;

    //TODO - Implementar a lógica de login, por enquanto somente um teste
    if (email == 'admin@admin.com' && password == 'admin') {
      Fluttertoast.showToast(
        msg: 'Login efetuado com sucesso',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      Fluttertoast.showToast(
        msg: 'E-mail ou senha incorretos',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    emailController.text = widget.email;
    passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/logo.png',
                  width: 200.0,
                  height: 200.0,
                ),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 16.0),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 12.0),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                    );
                  },
                  child: const Text('Esqueceu a senha?'),
                ),
                const SizedBox(height: 12.0),
                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(230.0, 54.0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27.0),
                      ),
                    ),
                  ),
                  onPressed: _login,
                  child: const Text('Entrar'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Não é cadastrado?'),
                    TextButton(
                      onPressed: () {
                        // Implemente a lógica para cadastro
                        print('Cadastre-se!');
                      },
                      child: const Text('Cadastre-se!'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}







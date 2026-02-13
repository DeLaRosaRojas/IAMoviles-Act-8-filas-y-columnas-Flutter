import 'package:flutter/material.dart';

void main() => runApp(AppParisina());

class AppParisina extends StatelessWidget {
  const AppParisina({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parisina De La Rosa',
      home: TelasFilaColumna(),
      debugShowCheckedModeBanner: false,
    );
  }
} //Fin Clase Parisina

class TelasFilaColumna extends StatelessWidget {
  const TelasFilaColumna({super.key});

  // --- ESTA ES LA FUNCIÓN QUE FALTABA PARA QUE EL CÓDIGO FUNCIONE ---
  Widget _crearTarjetaTela(String titulo, String subtitulo, Color colorFondo) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10.0), // Separación entre contenedores
        decoration: BoxDecoration(
          color: colorFondo,
          borderRadius: BorderRadius.circular(25.0), // Bordes redondeados
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(0, 0, 0, 0.05), // Fixed: Replaced withOpacity with Color.fromRGBO
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFF2C0B0B), // Color café para el texto
              ),
            ),
            Text(
              subtitulo,
              style: const TextStyle(
                fontSize: 12,
                color: Color.fromARGB(255, 88, 21, 21),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Nav
      appBar: AppBar(
        title: const Text(
          "Parisina De La Rosa",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 87, 16, 16), // Rojo Oscuro
        actions: const [
          Icon(Icons.content_cut, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.checkroom, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),

      // SafeArea para proteger el contenido de muescas y bordes
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          child: Column(
            children: [
              // Fila 1
              Expanded(
                child: Row(
                  children: [
                    _crearTarjetaTela("Seda", "Suavidad Pura", const Color(0xFFFAB8B8)),
                    _crearTarjetaTela("Encaje", "Detalle Fino", const Color(0xFFFACDB8)),
                  ],
                ),
              ),
              // Fila 2
              Expanded(
                child: Row(
                  children: [
                    _crearTarjetaTela("Lino", "Fresco y Natural", const Color(0xFFFAF9B8)),
                    _crearTarjetaTela("Tweed", "Estilo Clásico", const Color(0xFFD8FAB8)),
                  ],
                ),
              ),
              // Fila 3
              Expanded(
                child: Row(
                  children: [
                    _crearTarjetaTela("Satín", "Brillo Elegante", const Color(0xFFB8FAF1)),
                    _crearTarjetaTela("Tafetán", "Estructura", const Color(0xFFE2B8FA)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} //Fin Clase FilaColumna
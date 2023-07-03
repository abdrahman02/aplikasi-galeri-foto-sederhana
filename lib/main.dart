import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri Foto',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: GaleriFoto(),
    );
  }
}

class GaleriFoto extends StatelessWidget {
  final List<String> foto = [
    'https://source.unsplash.com/random/300x200',
    'https://source.unsplash.com/random/300x200',
    'https://source.unsplash.com/random/300x200',
    'https://source.unsplash.com/random/300x200',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeri Foto'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemCount: foto.length,
          itemBuilder: ((context, index) {
            return Image.network(foto[index]);
          })),
    );
  }
}

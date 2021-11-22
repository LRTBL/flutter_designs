import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> listContent = [
      'Nisi magna enim do aute commodo.Nisi magna enim do aute commodo. Nisi magna enim do aute commodo. Nisi magna enim do aute commodo. ',
      'Nisi magna enim do aute commodo.Nisi magna enim do aute commodo. Nisi magna enim do aute commodo. Nisi magna enim do aute commodo. ',
      'Nisi magna enim do aute commodo.Nisi magna enim do aute commodo. Nisi magna enim do aute commodo. Nisi magna enim do aute commodo. ',
      'Nisi magna enim do aute commodo.Nisi magna enim do aute commodo. Nisi magna enim do aute commodo. Nisi magna enim do aute commodo. ',
      'Nisi magna enim do aute commodo.Nisi magna enim do aute commodo. Nisi magna enim do aute commodo. Nisi magna enim do aute commodo. ',
      'Nisi magna enim do aute commodo.Nisi magna enim do aute commodo. Nisi magna enim do aute commodo. Nisi magna enim do aute commodo. ',
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, 'scroll'),
        child: const Icon(Icons.arrow_forward),
      ),
      body: ListView(
        children: [
          const Image(image: AssetImage("assets/landscape.jpg")),
          Container(
            // color: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Title(),
                const Buttons(),
                for (var title in listContent) Content(title: title)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Text(title),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[
          Button(
            title: 'CALL',
            icon: Icons.phone,
          ),
          Button(
            title: 'ROUTE',
            icon: Icons.request_quote_outlined,
          ),
          Button(
            title: 'SHARE',
            icon: Icons.share,
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String title;
  final IconData icon;
  const Button({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blueAccent, size: 30),
        const SizedBox(height: 5),
        Text(title, style: const TextStyle(color: Colors.blueAccent)),
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
              'Oeszhin Lake Compeground',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 7),
            Text('Kargek, Swidoers', style: TextStyle(color: Colors.black38)),
          ],
        ),
        Row(
          children: const <Widget>[
            Icon(Icons.star_outlined, color: Colors.red),
            Text('41'),
          ],
        )
      ],
    );
  }
}

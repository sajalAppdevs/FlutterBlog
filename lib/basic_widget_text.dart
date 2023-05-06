import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BasicWidgetText extends StatelessWidget {
  const BasicWidgetText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 300,
        color: Colors.grey.shade100,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              const Text(
                'This text is center aligned.',
                textAlign: TextAlign.center,
              ),
              const Divider(),
              const Text(
                'This is a very long text that will wrap around the edges of the container if the softWrap property is set to true.',
                softWrap: true,
              ),
              const Divider(),
              const Text(
                'This text will be truncated with an ellipsis at the end if it overflows the container.',
                overflow: TextOverflow.ellipsis,
              ),
              const Divider(),
              const Text(
                'مرحبا بالعالم', // Arabic text
                textDirection: TextDirection.rtl,
              ),
              const Divider(),
              const Text(
                ' The spacing between letters in the text',
                style: TextStyle(letterSpacing: 2.0),
              ),
              const Divider(),
              const Text(
                ' The spacing between lines in the text',
                style: TextStyle(height: 5.0),
              ),
              const Divider(),
              Text(
                'This text will use the headline6 text theme.',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Divider(),
              Semantics(
                label: 'This is a button',
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Accessibility Button'),
                ),
              ),
              const Divider(),
              RichText(
                text: const TextSpan(
                  text: 'Hello ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                  children: [
                    TextSpan(
                      text: 'world',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              RichText(
                  text:
                  TextSpan(text : 'I am agree to the ', style: Theme.of(context).textTheme.labelSmall,
                      children:  [
                        TextSpan(text: 'Term',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // do something
                            },),
                        const TextSpan(text: ' and '),
                        TextSpan(text: 'Privacy',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = (){

                              })
                      ]
                  )
              ),
              const Divider(),
              const Text(
                'This text has a shadow',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 3,
                    ),
                  ],
                ),
              ),
              const Divider(),
              const Material(
                textStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                child: Text(
                  'This text will use the custom textStyle defined in the Material widget',
                ),
              ),
              const Divider(),
              const SelectableText(
                'This text can be selected',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const Divider(),
              Row(
                children: const [
                  Flexible(
                    child: Text(
                      'This text will wrap if it is too long to fit on one line',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Icon(Icons.star),
                ],
              ),
              const Divider(),
              //Using a TextSpan to add multiple styles to text:
              const Text.rich(
                TextSpan(
                  text: 'This text is ',
                  style: TextStyle(fontSize: 18),
                  children: [
                    TextSpan(
                      text: 'bold',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'underlined',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const Text(
                'This text uses a custom font',
                style: TextStyle(
                  fontFamily: 'Jost',
                  fontSize: 18,
                ),
              ),
              const Divider(),
              const Text.rich(
                TextSpan(
                  text: 'This is ',
                  style: TextStyle(fontSize: 18),
                  children: [
                    TextSpan(
                      text: 'bold',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'red',
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              const Divider(),
              DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                child: Column(
                  children: const [
                    Text('This text will inherit the default style'),
                    Text(
                      'This text will also inherit the default style, but it is bold',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const GradientText(
                text: "Hello World!",
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              const Divider(),
            ]),
      ),
    ));
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;

  const GradientText({super.key, required this.text, required this.gradient});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

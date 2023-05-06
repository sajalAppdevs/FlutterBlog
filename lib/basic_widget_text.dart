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

                  /* Creates a Text widget with the text "This text is center aligned
              and aligns it to the center using the textAlign property.
               */
                  const Text(
                    'This text is center aligned.',
                    textAlign: TextAlign.center,
                  ),
                  const Divider(),

                  /*
               This is a Text widget that displays a long string of text that will
               wrap around the edges of the container the softWrap property is
               set to true, meaning that the text will be wrapped to the
               next line instead of overflowing.
               */
                  const Text(
                    'This is a very long text that will wrap around the edges of the container if the softWrap property is set to true.',
                    softWrap: true,
                  ),
                  const Divider(),

                  /*
              This creates a Text widget that will truncate the text with an
              ellipsis at the end if it overflows the container.
              The text content is defined in a string and the
              TextOverflow.ellipsis property is used to enable truncation
               */
                  const Text(
                    'This text will be truncated with an ellipsis at the end if it overflows the container.',
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Divider(),

                  /*
              This is a Text widget that displays an Arabic text "مرحبا بالعالم" with
              right-to-left text direction specified by
              textDirection: TextDirection.rtl.
               */
                  const Text(
                    'مرحبا بالعالم', // Arabic text
                    textDirection: TextDirection.rtl,
                  ),
                  const Divider(),

                  /* It applies a TextStyle to the text, which sets the letterSpacing
              property to 2.0.The letterSpacing property adjusts the
              space between each letter in the text.*/
                  const Text(
                    ' The spacing between letters in the text',
                    style: TextStyle(letterSpacing: 2.0),
                  ),
                  const Divider(),

                  /*This creates a Text widget that displays the given string with a
               height of 5.0 between each line of text.*/
                  const Text(
                    ' The spacing between lines in the text',
                    style: TextStyle(height: 5.0),
                  ),
                  const Divider(),

                  /*Create a Text widget with a specific style from the current theme*/
                  Text(
                    'This text will use the headline6 text theme.',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Divider(),

                  /*This code creates a button with accessibility features.
              The Semantics widget is used to add a label for the button
              that describes its purpose to assistive technologies.

              The label property is set to 'This is a button'.
              The TextButton widget is used to create the button,
              with the text 'Accessibility Button' as its child and an empty onPressed function.*/
                  Semantics(
                    label: 'This is a button',
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Accessibility Button'),
                    ),
                  ),
                  const Divider(),

                  /*This code creates a RichText widget that displays styled text.
               The text consists of three parts: "Hello", "world", and "!".*/
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
                      text: TextSpan(
                          text: 'I am agree to the ',
                          style: Theme.of(context).textTheme.labelSmall,
                          children: [
                            TextSpan(
                              text: 'Term',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // do something
                                },
                            ),
                            const TextSpan(text: ' and '),
                            TextSpan(
                                text: 'Privacy',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()..onTap = () {})
                          ])),
                  const Divider(),

                  /*This code displays a Text widget with the text "This text has a shadow".
               The text has a shadow effect applied to it using the TextStyle widget,
               which includes a single Shadow object.
               The Shadow object defines the color, offset, and blur radius of the shadow.*/
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


                  /*This code creates a SelectableText widget that displays the text "This text can be selected".
              The widget allows the user to select and copy the text.*/
                  const SelectableText(
                    'This text can be selected',
                  ),
                  const Divider(),

                  /*This code displays a Row widget with two children: a Flexible widget containing a Text widget,
              and an Icon widget.
              The Text widget has a fixed font size of 18 and is wrapped inside a
              Flexible widget to allow the text to wrap to the next line if it is too long to fit on one line.
              The Icon widget displays the "star" icon.*/
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

                  /*
              This code displays a Text widget using the Text.rich constructor,
              which allows for the creation of a rich text with multiple styles within a single Text widget.
               */
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

                  /*If you need to display a simple rich text with multiple styles,
              Text.rich might be easier and more concise to use. On the other hand,
              if you need to create a more complex rich text layout with multiple child
              TextSpan widgets, RichText would be the better choice.*/
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

                  /*This code displays a Text widget that uses a custom font named 'Jost'.
              The font family is specified in the TextStyle widget using the 'fontFamily' property,
              while the font size is set to 18.*/
                  const Text(
                    'This text uses a custom font',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 18,
                    ),
                  ),
                  const Divider(),

                  /*This code defines a DefaultTextStyle widget that sets the default text style
              for all of its child widgets and
              it will also inherit the default style but overrides the font weight to make the text bold.*/
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

                  /* This code displays a GradientText widget that renders text with
              a gradient effect.*/
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




/// A widget that displays text with a gradient color effect.
class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;

  const GradientText({super.key, required this.text, required this.gradient});

  @override
  Widget build(BuildContext context) {
    // Create a ShaderMask widget with a gradient shader that will be applied to the text.
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      // Display the text with a bold white font color.
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
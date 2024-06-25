import 'package:flutter/material.dart';

class CustomDialog extends StatefulWidget {
  final String title;
  final String content;
  final VoidCallback onOkPressed;

  CustomDialog({
    required this.title,
    required this.content,
    required this.onOkPressed,
  });

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: Offset(0.0, 1.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: AlertDialog(
        title: Text(widget.title),
        content: Text(widget.content),
        actions: [
          TextButton(
            onPressed: () {
              _controller.reverse().then((_) {
                widget.onOkPressed();
                Navigator.of(context).pop();
              });
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}

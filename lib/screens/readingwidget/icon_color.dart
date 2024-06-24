import 'package:flutter/material.dart';

class IconColor extends StatefulWidget {
  final void Function(Color color, IconData icon) onSelectionChanged;

  const IconColor({Key? key, required this.onSelectionChanged}) : super(key: key);

  @override
  _IconColorState createState() => _IconColorState();
}

class _IconColorState extends State<IconColor> {
  Color? _selectedColor;
  IconData? _selectedIcon;

  List<IconData> _icons = [
    Icons.home,
    Icons.star,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.camera,
    Icons.mail,
    Icons.notifications,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            _showIconSelectionDialog();
          },
          child: Row(
            children: [
              Image(
                image: AssetImage("assets/images/book.png"),
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 8),
              Text(
                "Icon",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: "work-sans",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Row(
          children: [
            _buildColorBox(const Color(0xFFE5D1FA)),
            _buildColorBox(const Color(0xffECF2FF)),
            _buildColorBox(const Color(0xffE3DFFD)),
          ],
        ),
      ],
    );
  }

  Widget _buildColorBox(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedColor = color;
        });
        widget.onSelectionChanged(_selectedColor ?? Colors.black, _selectedIcon ?? Icons.home);
      },
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: color,
          border: _selectedColor == color
              ? Border.all(color: Color(0xFFAA77FF), width: 2)
              : null,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 4),
      ),
    );
  }

  void _showIconSelectionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select an Icon'),
          content: Container(
            width: double.maxFinite,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
              itemCount: _icons.length,
              itemBuilder: (BuildContext context, int index) {
                final icon = _icons[index];
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIcon = icon;
                    });
                    Navigator.of(context).pop();
                    widget.onSelectionChanged(_selectedColor ?? Colors.black, icon);
                  },
                  child: Icon(
                    icon,
                    size: 32,
                    color: _selectedIcon == icon ? Colors.blue : Colors.black,
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

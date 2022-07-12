import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnable
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          // Checkbox(
          //   value: _sliderEnable,
          //   onChanged: (value) {
          //     _sliderEnable = value ?? true;
          //     setState(() {});
          //   },
          // ),

          // CheckboxListTile(
          //   activeColor: AppTheme.primary,
          //   title: const Text('Habilitar slider'),
          //   value: _sliderEnable,
          //   onChanged: (value) {
          //     _sliderEnable = value ?? true;
          //     setState(() {});
          //   },
          // ),

          // Switch(
          //   value: _sliderEnable,
          //   onChanged: (value) {
          //     _sliderEnable = value;
          //     setState(() {});
          //   },
          // ),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value;
              setState(() {});
            },
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://camo.githubusercontent.com/40bbb4fa3fcd67e208bd8cb6a35cd1175fe87568a8b364765218ea54c4640851/687474703a2f2f692e696d6775722e636f6d2f716a65596271582e706e67'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

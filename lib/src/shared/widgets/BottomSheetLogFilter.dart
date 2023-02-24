import 'package:flutter/material.dart';
import 'package:test_flutter/src/shared/themes/color_schemes.g.dart';

class BottomSheetLogFilter extends StatelessWidget {
  const BottomSheetLogFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),topRight: Radius.circular(20),
        ),
        child: Container(
        color: lightColorScheme.surface,
        height: 320,
        padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                    backgroundColor: lightColorScheme.primary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                onPressed: () => {},
                child: const Text(
                  "Aplicar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
      ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  final ImageProvider profileImage;
  final double width;
  final double height;
  final Widget? child;

  const ProfileContainer({
    super.key,
    required this.profileImage,
    this.width = 300,
    this.height = 230,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          // ⬜ Área branca com recorte + imagem de fundo clipada
          ClipPath(
            clipper: CutoutClipper(),
            child: Container(
              color: const Color(0xFFEDEDED),
              child: SizedBox.expand(child: child),
            ),
          ),

          // 👤 Imagem menor no recorte
          Positioned(
            top: height * 0.02,
            left: width * 0.025,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                image: profileImage,
                width: width * 0.23,
                height: height * 0.27,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CutoutClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;
    final path = Path();

    path.moveTo(0, h - 30);
    path.quadraticBezierTo(0, h, 30, h);

    path.lineTo(w - 30, h);
    path.quadraticBezierTo(w, h, w, h - 30);

    path.lineTo(w, 30);
    path.quadraticBezierTo(w, 0, w - 30, 0);

    path.lineTo(0.3 * w, 0); // Topo até início do recorte

    path.lineTo(0.3 * w, 0.18 * h); // Desce vertical no recorte
    path.lineTo(0.3 * w, 0.36 * h); // Profundidade
    path.lineTo(0.09 * w, 0.36 * h); // Base do recorte
    path.quadraticBezierTo(0, 0.36 * h, 0, 0.46 * h); // Canto inferior recorte

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:velocity_x/velocity_x.dart';

class PDFScreen extends StatefulWidget {
   final String filePath;
  const PDFScreen({required this.filePath,super.key});
  

  @override
  State<PDFScreen> createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {
  late PdfViewerController _pdfViewerController;
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 217, 45, 45),
        title: "MMDU".text.xl4.textStyle(GoogleFonts.lilitaOne()).make(),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Vx.red500,
        ),
        child: SfPdfViewer.asset(widget.filePath,
        scrollDirection: PdfScrollDirection.vertical,
        enableDoubleTapZooming: true,
        controller: _pdfViewerController,
      ),
      ),
    );
  }
}

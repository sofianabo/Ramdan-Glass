import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future<void> printImageWithText(String imagePath, String text) async {
  final doc = pw.Document();
  final image = await imageFromAssetBundle(imagePath);
//TODO edit the font as you have in your assets
  doc.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Column(
          children: [
            pw.Image(image),
            pw.Text(
              'Hello World',
            ),
          ],
        );
      },
    ),
  );
  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => doc.save());
}

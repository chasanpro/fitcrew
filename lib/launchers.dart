import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch ';
  }
}

Uri instagram =
    Uri.parse('https://instagram.com/nani_aesthetic__999?igshid=YmMyMTA2M2Y=');
Uri youtube = Uri.parse('https://www.youtube.com/c/FITCREW');
Uri facebook =
    Uri.parse('https://www.facebook.com/people/Gorle-Mohan/100004644195173/');
Uri whatsapp = Uri.parse('https://wa.me/+917032805185?');
Uri whatsapptext = Uri.parse('https://wa.me/+917032805185?');
Uri gmail = Uri.parse(
    'mailto:gorlemohan6264@gmail.com?subject=Interested in your Fitness Coaching');

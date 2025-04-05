import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Demoprovider extends ChangeNotifier {
  DateTime dateTime = DateTime.now();
  String? dateformat;

  updatetime() {
    dateTime = DateTime.now();
    dateformat = DateFormat('hh:mm:ss a').format(dateTime);
    notifyListeners();
  }
//    Future<void> uploadimagefile(String memberidno, File imagefile) async {
//     final url = Uri.parse(
//         "http://buymatrimony.com/webservices/services/edit_profile_details");

//     final bytes = await imagefile.readAsBytes();
//     final base64Image = base64Encode(bytes);

//     final body = jsonEncode({
//       'member_id': "${memberidno}",
//       ''
//           'secret_key': "U5Ga0Z1aaNlYHp0MjdEdXJ1aKVVVB1TP",
//       'media_type': 'jpg',
//       'old_photo': '${profileslist2[0].photo}',
//       'media_data': base64Image,
//       "name": "khajal",
//       "last_name": "Agarwal",
//       "date_of_birth": "1998-02-01",
//       "age_in_years": "25"
//     });
//     final response = await http.post(url,
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: body);

//     if (response.statusCode == 201) {
//       print('Profile image uploaded successfully');
//       print(response.statusCode);
//       print(base64Image);
//       //print(pickedimagefromcamera!.path);
//       print(profileslist2[0].photo);
//       setState(() {
//         Navigator.of(context).pushAndRemoveUntil(
//             MaterialPageRoute(builder: (ctx) => Editprofilesc()),
//             (route) => false);
//       });
//     } else {
//       print('Failed to upload image: ${response.statusCode}');
//     }
//   }
}

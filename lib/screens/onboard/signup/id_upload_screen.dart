import 'dart:developer';
import 'dart:io';
import 'package:finance_app/components/components.dart';
import 'package:finance_app/extension/context.extension.dart';
import 'package:finance_app/screens/onboard/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:go_router/go_router.dart';

class IdUploadScreen extends HookWidget {
  const IdUploadScreen({super.key});
  static const String id = 'idUploadScreen';

  @override
  Widget build(BuildContext context) {
    final image = useState<File?>(null);
    Future<void> _pickImageFromGallery() async {
      final picker = ImagePicker();
      final pickedfile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedfile != null) {
        image.value = File(pickedfile.path);
        log('$pickedfile this imaeg was picked');
      }
    }

    return Scaffold(
      body: DecoratedContainerTwo(
        resize: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              SizedBox(height: context.topPadding),
              CustomBackButton(
                avatarColor: Color(0XFF27282B),
                arrowColor: Color(0XFF8791A7),
              ),
              SizedBox(height: 58.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0XFF4D84FF),
                    radius: 80.sp,
                    child:
                        image.value == null
                            ? Image.asset('assets/images/jpegs/id.png')
                            : Image.file(image.value!),
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    textAlign: TextAlign.center,
                    'Upload a government issued ID card',
                    style: context.textTheme.displayMedium!.copyWith(
                      fontFamily: 'CircularStd',
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    textAlign: TextAlign.center,
                    'You can either upload; your Drivers\nLicense, National ID Card, Voters Card\nor International Passport',
                    style: context.textTheme.bodyMedium!.copyWith(
                      fontFamily: 'CircularStd',
                      color: Color(0XFF8791A7),
                    ),
                  ),
                  SizedBox(height: 70.h),
                  TextButton.icon(
                    icon: Icon(
                      Icons.file_upload_outlined,
                      color: Color(0XFF4D84FF),
                    ),
                    onPressed: () {
                      _pickImageFromGallery();
                    },
                    label: Text(
                      'Upload',
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontFamily: 'CircularStd',
                        color: Color(0XFF4D84FF),
                      ),
                    ),
                  ),
                  SizedBox(height: 95.h),
                  ReusableButton(
                    color: Color(0XFF4D84FF),
                    height: 55.h,
                    width: double.infinity,
                    borderRadius: 4.h,
                    onTap: () {
                      context.pushNamed(SetPinScreen.id);
                    },
                    child: Text(
                      'Continue',
                      style: context.textTheme.headlineSmall!.copyWith(
                        fontFamily: 'CircularStd',
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Skip Identity Upload',
                      style: context.textTheme.bodyLarge!.copyWith(
                        fontFamily: 'CircularStd',
                        color: Color(0XFF8791A7),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}













// if (image.value != null) {
//                         context.pushNamed(SetPinScreen.id);
//                       } else {
//                         // Optionally show a snackbar or alert
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text('Please upload an ID first')),
//                         );
//                       }




















// class imageSelector extends StatefulWidget {
//   const imageSelector({super.key});

//   @override
//   State<imageSelector> createState() => _imageSelectorState();
// }

// class _imageSelectorState extends State<imageSelector> {
  
//   File? image;

// Future<void> _pickImageFromGallery() async {
//     final picker =  ImagePicker();
//     final pickedImage = await picker.pickImage(source: ImageSource.gallery);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
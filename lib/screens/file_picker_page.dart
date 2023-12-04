import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilePickerPage extends StatefulWidget {
  const FilePickerPage({super.key});

  @override
  State<FilePickerPage> createState() => _FilePickerState();
}

class _FilePickerState extends State<FilePickerPage> {
  @override
  File file = File('/data/user/0/com.example.newprojectt/cache/file_picker/images.png');
  @override
  Widget build(BuildContext context) {
    return  Center(child: ListView(
      children: [
        Image.file(file),
        ElevatedButton(onPressed: (){
          filePick();
        }, child: const Text('pickFile'))
      ],
    ));
  }

  void filePick() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,allowMultiple: false
    );
    if(result!=null){
      setState(() {
        file = File(result.files.single.path??'');
        print(file);
      });
    }
  }
}

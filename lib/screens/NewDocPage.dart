import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewDocPage extends StatefulWidget {
  @override
  _NewDocPageState createState() => _NewDocPageState();
}

class _NewDocPageState extends State<NewDocPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Doc"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.camera_alt), onPressed: fnTakePhoto,),
        ],
        ),

         bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
            
              Column(
                children: <Widget>[
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      // fnConfig(context, _docIdController.text);
                    },
                  ),
                  Text(
                    "Config",
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.save),
                    onPressed: () {
                      // fnSave(context, _docIdController.text);
                    },
                  ),
                  Text(
                    "Save",
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.send),
                    onPressed: () {
                      // fnSaveSubmit(context, _docIdController.text);
                    },
                  ),
                  Text(
                    "Save & Submit",
                  )
                ],
              ),
            ],
          ),
        ),
      ),

      body: ListView(children: <Widget>[
        Text("Test Text"),
        Text("Test Text"),
        Text("Test Text"),
        widgetUmage(),
        widgetBodyText,
      ],),
    );
  }
}

Future fnTakePhoto() async {
    await ImagePicker.pickImage(source: ImageSource.camera).then((image) {
      // setState(() {
      //   _image = image;
      // });
    });
  }

Widget widgetUmage() => 
Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/bg01.jpg', width: 300, height: 200, fit: BoxFit.cover),
        );

 Widget widgetBodyText = Container(
  child: Padding(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Container(
                  child: Text(
                    "This is a book",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Text(
                "Mr. Kandersteg Switzerland",
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              )
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text("41"),
      ],
    ),
  ),
);
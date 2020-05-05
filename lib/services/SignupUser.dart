import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:pare01/services/ShowNotification.dart';
import 'LoggerService.dart';
 
//==================================================================================
// FUNCTION: SIGNUP USER
//==================================================================================  
Future<void> signupUser(
  //================================================================================
  // 1) PARAMETER: (1) PARA1: DATA, PARA2: DOCUMENT
  //================================================================================    
  BuildContext context, Map<String, dynamic> data, String documentName){
    //==============================================================================
    // 2) RETURN 
    //==============================================================================       
    return
    //==============================================================================
    // 3) CALL SET DATA (INSERT)
    //==============================================================================       
    Firestore.instance.collection("catalog").document(documentName).setData(data).then((returnData) {
      //============================================================================
      // 4) SHOW MESSAGE AFTER SUCCESS
      //============================================================================         
      showMessageBox(context, "success", "Register User($documentName) to Firestore Database completely", actions: [dismissButton(context)]);
      logger.i("setData Success");
      //============================================================================
      //5)SHOW MESSAGE IF ERROR
      //============================================================================         
      }).catchError((e){
        logger.e("setData Error");
        logger.e(e);
      });
    }
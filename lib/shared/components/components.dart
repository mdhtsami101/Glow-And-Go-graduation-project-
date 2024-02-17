

import 'package:flutter/material.dart';
import 'package:glow/shared/styles/colors.dart';



Widget defaultButton({
  double width = double.infinity ,
  double radius = 0.0 ,
  Color background=Colors.blue ,
  bool isUpperCase = true,
  required Function  ,
  required String text ,
}) =>
    Container(
      width: width,
      height: 40.0,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        onPressed:   Function ,
        child: Text(
          isUpperCase? text.toUpperCase():text,
          style: TextStyle(
              color: defaultTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),
        ),
      ),
    );


Widget defaultTextButton({
  required Function ,
  required String text ,
})=>TextButton(
  onPressed:Function,
  child: Text(
    text.toUpperCase(),
    style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.black
    ),
  ),
);




Widget defaultFormField ({
  required TextEditingController controller,
  required TextInputType type,
  onSubmit,
  onChange,
  onTap,
  required  validat,
  bool isPassword = false,
  required String lable ,
   IconData ?prefix,
  IconData? suffix ,
  suffixPressed,

})=>
    TextFormField(

      controller: controller,
      keyboardType: type ,
      onFieldSubmitted:onSubmit ,
      onChanged: onChange,
      validator: validat,
      onTap: onTap,

      obscureText: isPassword,
      decoration: InputDecoration(

        labelText:lable, //hintText: 'Email Address'
        border: UnderlineInputBorder(),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        labelStyle: TextStyle(
            color: Colors.white
        ),
        prefixIcon: Icon(
          prefix,
          color: Colors.white,
        ),
        suffixIcon: suffix != null ? IconButton(
          onPressed:suffixPressed ,
          icon: Icon(
            suffix,
            color: Colors.white,
          ),
        ) : null,
      ),
    );

// Widget buildTaskItem(Map model,context)=>Dismissible(
//   key: Key(model['id'].toString()),
//   child:Padding(
//
//     padding: const EdgeInsets.all(20.0),
//
//     child: Row(
//
//       children: [
//
//         CircleAvatar(
//
//           radius: 40.0,
//
//           child: Text(
//
//             '${model['time']}',
//
//           ),
//
//         ),
//
//         SizedBox(
//
//           width: 20.0,
//
//         ),
//
//         Expanded(
//
//           child: Column(
//
//             mainAxisSize: MainAxisSize.min,
//
//             crossAxisAlignment: CrossAxisAlignment.start,
//
//             children: [
//
//               Text(
//
//                 '${model['title']}',
//
//                 style: TextStyle(
//
//                   fontSize: 18.0,
//
//                   fontWeight: FontWeight.bold,
//
//                 ),
//
//               ),
//
//               Text(
//
//                 '${model['data']}',
//
//                 style: TextStyle(
//
//                   color: Colors.grey,
//
//                 ),
//
//               ),
//
//             ],
//
//           ),
//
//         ),
//
//         SizedBox(
//
//           width: 20.0,
//
//         ),
//
//         IconButton(
//
//             onPressed: (){
//
//               AppCubit.get(context).updateData(status: 'done', id: model['id']);
//
//             },
//
//             icon:Icon(
//
//               Icons.check_box,
//
//               color: Colors.green,
//
//             ),
//
//         ),
//
//         IconButton(
//
//             onPressed: (){
//
//               AppCubit.get(context).updateData(status: 'archived', id: model['id']);
//
//             },
//
//             icon:Icon(
//
//               Icons.archive,
//
//               color: Colors.black45,
//
//             ),
//
//         ),
//
//       ],
//
//     ),
//
//   ),
//   onDismissed: (direction){
//     AppCubit.get(context).deleteData(id: model['id']);
//   },
// );


// Widget buildArticlesItem(article,context)=>InkWell(
//   onTap: (){
//     navigateTo(context, WebViewScreen(article['url']));
//   },
//   child:   Padding(
//
//     padding: const EdgeInsets.all(20.0),
//
//     child: Row(
//
//       children: [
//
//         Container(
//
//           width: 120.0,
//
//           height: 120.0,
//
//           decoration: BoxDecoration(
//
//               borderRadius: BorderRadius.circular(10.0,),
//
//               image:DecorationImage(
//
//                 image: NetworkImage('${article['urlToImage']}'),
//
//                 fit:BoxFit.cover,
//
//               )
//
//           ),
//
//         ),
//
//         SizedBox(
//
//           width: 20.0,
//
//         ),
//
//         Expanded(
//
//           child: Container(
//
//             height: 120.0,
//
//             child: Column(
//
//               crossAxisAlignment: CrossAxisAlignment.start,
//
//               mainAxisAlignment: MainAxisAlignment.start,
//
//               children: [
//
//                 Expanded(
//
//                   child: Text(
//
//                     '${article['title']}',
//
//                     style:Theme.of(context).textTheme.bodyText1,
//
//                     maxLines:3,
//
//                     overflow: TextOverflow.ellipsis,
//
//                   ),
//
//                 ),
//
//                 Text(
//
//                   '${article['publishedAt']}',
//
//                   style: TextStyle(
//
//                       color: Colors.grey
//
//                   ),
//
//                 ),
//
//               ],
//
//             ),
//
//           ),
//
//         ),
//
//       ],
//
//     ),
//
//   ),
// );


Widget myDivider()=>Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 20.0,
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: defaultTextColor,
  ),
);

// Widget articleBuilder(list,context, {isSearch=false})=>ConditionalBuilder(
//   condition: list.length>0 ,
//   builder:(context) => ListView.separated(
//       physics: BouncingScrollPhysics(),
//       itemBuilder: (context , index)=>buildArticlesItem(list[index],context) ,
//       separatorBuilder: (context , index)=>myDivider(),
//       itemCount: list.length
//   ) ,
//   fallback:(context) => isSearch?Container() :Center(child: CircularProgressIndicator()) ,
//
// );

void navigateTo(context , widget)=> Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context)=>widget,
  ),
);

void navigateAndFinish (context , widget)=> Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context)=>widget,
  ),
      (Route<dynamic>route) => false,
);

// void showToast({
//   required String text,
//   required ToastStates state,
// })=> Fluttertoast.showToast(
//
//     msg: text,
//     toastLength: Toast.LENGTH_LONG,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb: 5,
//     backgroundColor: chooseToastColor(state),
//     textColor: Colors.white,
//     fontSize: 16.0
// );
//
// enum ToastStates {SUCCESS , ERROR , WARNING}
//
// Color chooseToastColor( ToastStates state){
//   Color color ;
//   switch(state){
//     case ToastStates.SUCCESS:
//       color= Colors.green;
//       break;
//     case ToastStates.ERROR:
//       color= Colors.red;
//       break;
//     case ToastStates.WARNING:
//       color= Colors.amber;
//       break;
//   }
//
//   return color;
//
// }

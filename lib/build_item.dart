
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_53_maadi/data_model.dart';

class BuilderItem extends StatelessWidget {
  Articles data;
   BuilderItem({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
        // image: DecorationImage(
        //   image: data.urlToImage !=null ? NetworkImage("${data.urlToImage}"):
        //       NetworkImage(""),
        //
        // )
      ),
      child: ListTile(
        leading: data.urlToImage !=null ? Image.network("${data.urlToImage}"):
        CircularProgressIndicator() ,
        title: Text(data.title ?? "null"),
        subtitle: Text(data.description ?? "No data") ,
      ),
    );
  }
}

Widget listItem (List listData){
  return ListView.separated(
      separatorBuilder: (context,index)=>SizedBox(height: 20,),
      itemBuilder: (context, index){
        return BuilderItem(data: listData[index],);
      },
      itemCount: listData.length);
}
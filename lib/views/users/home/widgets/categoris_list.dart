import 'package:flutter/material.dart';
import 'package:html_unescape/html_unescape.dart';

import '../../../../core/utils/constant.dart';
import '../../../../models/stores_model.dart';
import '../../../../service/backend/store_servic.dart';

class CategorisList extends StatelessWidget {


  String removeHtmlTags(String htmlString) {
    final unescape = HtmlUnescape();
    String noHtml = unescape.convert(htmlString); // Decode HTML entities
    return noHtml.replaceAll(RegExp(r'<[^>]*>'), ''); // Remove HTML tags
  }



  final Function()? onTap;
  const CategorisList({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final StoreService storeService = StoreService();
    final Future<List<StoreModel>> storis = storeService.getStores();
    return Expanded(
      flex: 2,
      child: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              height: 30,
              child: const Expanded(
                flex: 1,
                child: Text(
                  "اختر المتجر",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child:  FutureBuilder<List<StoreModel>>(
                future: storis,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  } else if (snapshot.hasData) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        StoreModel store = snapshot.data![index];
                      String note= removeHtmlTags(store.notes);
                        return CardStoreis(activeColor: store.status=="active"?Colors.blue : Colors.red,name: store.name,notes: note,onTap: ()=>Navigator.pushNamed(context, "/homeCategory"),);
                           
                          
                        
                      },
                    );
                  } else {
                    return Center(child: Text("No data available"));
                  }
                },
              ),

            ),
          ],
        ),
      ),
    );
  }
}

class CardStoreis extends StatelessWidget {
  const CardStoreis({
    super.key,
    required this.onTap,  required this.notes, required this.name, required this.activeColor,
    
  });

  final Function()? onTap;

  final String notes;
  final String name;
 final  Color activeColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(5),

          decoration: BoxDecoration(border: Border.all(color: ConstantStayles.kPrimColor),borderRadius: BorderRadius.circular(5)
         , color: Colors.white38),
          child: Column(
            children: [

              Icon(Icons.store,size: 50,color: activeColor,),
              const SizedBox(height: 5),
              Text(name,style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),),
               Text(
                notes,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

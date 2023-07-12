import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled16/model/catogry_model.dart';
import '../../constant/constance.dart';
import '../../model/product_model.dart';


class FirebaseFirestoreHelper{
  static FirebaseFirestoreHelper instance=FirebaseFirestoreHelper();
  final FirebaseFirestore _firebaseFirestore=FirebaseFirestore.instance;
  Future<Iterable<CatogryModel>>getCatogry()async{
    try{
      QuerySnapshot<Map<String,dynamic>>querySnapshot=
      await _firebaseFirestore.collection("category").get();
      Iterable<CatogryModel>categoryList=querySnapshot.docs.map((e)=>CatogryModel.fromJson(e.data())).toList();
      return categoryList;
    }catch(e){
      showMessege(e.toString());
      return[];
    }
  }
  Future<Iterable<ProductModel>>getbestProducts()async{
    try{
      QuerySnapshot<Map<String,dynamic>>querySnapshot=
      await _firebaseFirestore.collectionGroup("products").get();
      Iterable<ProductModel>productModelList=querySnapshot.docs.map((e)=>ProductModel.fromJson(e.data())).toList();
      return productModelList;
    }catch(e){
      showMessege(e.toString());
      return[];
    }
  }
}
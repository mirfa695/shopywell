import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService{
  final CollectionReference collection;

  FirestoreService({
    required String collectionName,
  }) : collection = FirebaseFirestore.instance.collection(collectionName);

  Future<String> create(Map<String,dynamic> item) async {
    try {
      final docRef = await collection.add({
        ...item,
        'createdAt': FieldValue.serverTimestamp(),
      });
      return docRef.id;
    } catch (e) {
      throw Exception('Failed to create document: $e');
    }
  }

 Future<List<Map<String, dynamic>>> getAll({int? limit,String? field,
  dynamic isEqualTo,}) async {
  Query query = collection;
  if (field != null && isEqualTo != null) {
    query = query.where(field, isEqualTo: isEqualTo);
  }
  if (limit != null) {
    query = query.limit(limit);
  }

  final snapshot = await query.get();
  return snapshot.docs.map((doc) {
    return doc.data() as Map<String, dynamic>;
  }).toList();
}
  Future<Map<String,dynamic>?> getById(String id) async {
    try {
      final doc = await collection.doc(id).get();
      if (doc.exists) {
        return doc.data() as Map<String, dynamic>;
      }
      return null;
    } catch (e) {
      throw Exception('Failed to get document: $e');
    }
  }

  Future<void> update(String id, Map<String,dynamic> item) async {
    try {
      await collection.doc(id).update({
        ...item,
        'updatedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw Exception('Failed to update document: $e');
    }
  }


  Future<void> delete(String id) async {
    try {
      await collection.doc(id).delete();
    } catch (e) {
      throw Exception('Failed to delete document: $e');
    }
  }

  Future<int> count() async {
    try {
      final snapshot = await collection.count().get();
      return snapshot.count??0;
    } catch (e) {
      throw Exception('Failed to count documents: $e');
    }
  }
}


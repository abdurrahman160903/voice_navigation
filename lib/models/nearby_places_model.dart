class NearbyPlacesModel {
  int? id;
  String? titleKey;
  String? image;

  NearbyPlacesModel({this.id, this.titleKey, this.image});

  NearbyPlacesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titleKey = json['title_key'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title_key'] = this.titleKey;
    data['image'] = this.image;
    return data;
  }
}

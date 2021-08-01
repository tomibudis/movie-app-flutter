class CarouselModel {
  String image;

  CarouselModel(this.image);
}

List<CarouselModel> carousels =
    carouselsData.map((item) => CarouselModel(item['image'])).toList();

var carouselsData = [
  {"image": "assets/images/avanger.png"},
  {"image": "assets/images/up-movie.png"},
  {"image": "assets/images/oblivion.png"},
];

class Categories {
  final String title;
  final int id;
  final List<SubCategories> subCat;

  Categories({this.title, this.id, this.subCat});
}

class SubCategories {
  final String title;
  final int id;

  SubCategories({this.title, this.id});
}

List<Categories> categories = [
  Categories(
    title: 'Camera',
    id: 0,
    subCat: [
      SubCategories(id: 0, title: 'DSLR'),
      SubCategories(id: 1, title: 'Point And Shoot'),
      SubCategories(id: 2, title: 'Action Camera'),
      SubCategories(id: 3, title: 'Mirror Camera'),
      SubCategories(id: 4, title: 'Mirror less Camera'),

    ],
  ),
  Categories(
    title: 'Lens',
    id: 1,
    subCat: [
      SubCategories(id: 0, title: "14-55 mm"),
      SubCategories(id: 1, title: "55-100 mm"),
      SubCategories(id: 2, title: "70-120 mm"),

    ],
  ),
  Categories(
    title: 'Battery',
    id: 2,
    subCat: [
      SubCategories(id: 0, title: "Lithium ion"),
      SubCategories(id: 1, title: "Carbon"),
      SubCategories(id: 2, title: "Non rechargable"),

    ],
  ),
  Categories(
    title: 'Camera bag',
    id: 3,
    subCat: [
      SubCategories(id: 0, title: "Leather"),
      SubCategories(id: 1, title: "Cloth"),

    ],
  ),
  Categories(
    title: 'Gimbal',
    id: 4,
    subCat: [
      SubCategories(id: 0, title: "Mechanical"),
      SubCategories(id: 1, title: "Non mechanical"),

    ],
  ),
];
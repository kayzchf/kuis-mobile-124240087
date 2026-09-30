class Menu {
  int id;
  String name;
  String category;
  String price;
  String image;
  String description;

  Menu({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.image,
    required this.description
  });
}

final List<Menu> menu = [
  Menu(
    id: 1,
    name: "Mie Gacoan",
    category: "Mie",
    price: "10000",
    description: "Mie dengan sensasi pedas manis dijamin bakal bikin kamu ketagihan! Bisa pilih tingkat kepedasan",
    image: "https://media.indozone.id/crop/photo/indizone/2022/11/30/6gspXbn/daftar-harga-mie-gacoan-lengkap-dengan-menunya-terbaru-202288.jpg"
  ),
  Menu(
    id: 2,
    name: "Mie Hompimpa",
    category: "Mie",
    price: "10000",
    description: "Menu wajib bagi pecinta mie rasa pedas gurih. Makin nikmat pilih sendiri tingkat kepedasannya.",
    image: "https://ik.trn.asia/uploads/2023/02/1676023134675.jpeg"
  ),
  Menu(
    id: 3,
    name: "Udang Keju",
    category: "Dimsum",
    price: "9100",
    description: "Leleah keju lembut dalam adonan daging udang dan ayam, dibalut tepung roti yang renyah.",
    image: "https://blog.alfagift.id/wp-content/uploads/2024/12/resep-udang-keju-Gacoan-1.jpg"
  ),
  Menu(
    id: 4,
    name: "Udang Rambutan",
    category: "Dimsum",
    price: "9100",
    description: "Garing di luar, lembut di dalam. Dijamin bikin nagih!",
    image: "https://image.popmama.com/post/20260223/upload_b14a0b3e9aaf66a6d85fd43a15a2dcb5_7f24c091-a117-4caa-a39a-4dfeea9effa5.jpg"
  ),
  Menu(
    id: 5,
    name: "Pangsit Goreng",
    category: "Dimsum",
    price: "10000",
    description: "Paling cocok dinikmati dengan mie pedas. Bisa buat ngemil bareng temen juga!",
    image: "https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/70c1fa16-7f81-4d94-b3e7-b8b594566de4_MNU_125_20251031170526.jpg"
  ),
  Menu(
    id: 6,
    name: "Tea",
    category: "Beverage",
    price: "4500",
    description: "Teh Segar cocok buat menikmati mie pedasmu!",
    image: "https://bimg.akulaku.net/goods/spu/395465d61f1c413ebd3cbbd046643d0f7558.png?w=726&q=80&fit=1"
  ),
  Menu(
    id: 7,
    name: "Green Thai Tea",
    category: "Beverage",
    price: "8200",
    description: "Teh dengan rasa manis dan creamy, cocok buat kamu yang goodmood!",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJtCQBvUDVzYM68C-UOUJcIV3U0vZqdpFEUiPotVo7xAnPC2CHIkVMxU_t&s=10"
  ),
  Menu(
    id: 8,
    name: "Es Gobak Sodor",
    category: "Beverage",
    price: "9100",
    description: "Perpaduan nata de coco, jelly, irisan strawbeery dan belimbing dijamin bikin mood mu asik!",
    image: "https://miegacoansintang.org/wp-content/uploads/2025/09/Screenshot_57.png"
  ),
];

class User {
    String username;
    String password;

    User({
        required this.username,
        required this.password
    });
}

final List<User> users = [
    User(
        username: "kayneza",
        password: "1720"
    )
];
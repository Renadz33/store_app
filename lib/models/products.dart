class Product{

   final int id ;
   final String price,title, subTitle,description,image;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.description,
});
}

List<Product> products = [
   Product(
     id: 1,
     price: 'price:100\$',
     title: 'AirPod',
     subTitle: 'High quality sound',
     image: 'lib/images/airpod.png',
     description: 'Bluetooth, Built-in Microphone, Wireless,for ipad/iphone/ipod, Unisex, USB Rechargeable Built- in Battery, H1 Chip, Battery life: 24 Hours',
   ),
  Product(
    id: 2,
    price: 'price:1500\$',
    title: 'iphone',
    subTitle: 'Has become powerful',
    image: 'lib/images/iphone.png',
    description: 'Size: 6.7 , Cam Resolution: Night Mode Time - 2X Optical zoom, Hexa Core, Smart phone, Wi-Fi/Bluetooth, Wired/Wireless Charging',
  ),
  Product(
    id: 3,
    price: 'price:1200\$',
    title: 'Laptop',
    subTitle: 'High screen resolution',
    image: 'lib/images/Laptop-Notebook-PNG-HD.png',
    description: 'NVIDIA GeForce M450 (2GB), FHD TN AG 250N, Size 15.6, Windows 11, 64 bit, 2.8 GHz, 16GB RAM, WiFi/Bluetooth, HDMI/USB 3.2/USB-C, 720p HD Camera',
  ),
  Product(
    id: 4,
    price: 'price:50\$',
    title: 'HeadPhones',
    subTitle: 'Noise Cancelling',
    image: 'lib/images/headphones_PNG7645 (2).png',
    description: 'For any device ,USB charging, AC Rechargeable Built-in Battery , 20 Hours Battery, Spatial audio, Active noise cancelling, Unisex, Bluetooth',
  ),
];
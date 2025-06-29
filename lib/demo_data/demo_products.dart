import 'package:shopywell/models/pricing_model.dart';
import 'package:shopywell/models/product_model.dart';

final List<ProductModel> demoProducts = [
  ProductModel(
    id: 'PRD1',
    image: 'https://example.com/images/product-1.jpg',
    productName: 'Nike Air Max 90',
    overview: 'Nike Air Max 90 is a popular product in its category.',
    description: 'The Nike Air Max 90 offers top features and excellent value for money.',
    rating: 4.8,
    pricing: [
        PricingModel(id: '1_std', variant: 'Standard', price: 1593.8),
        PricingModel(id: '1_prem', variant: 'Premium', price: 1693.8)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD2',
    image: 'https://example.com/images/product-2.jpg',
    productName: 'Samsung Galaxy S23',
    overview: 'Samsung Galaxy S23 is a popular product in its category.',
    description: 'The Samsung Galaxy S23 offers top features and excellent value for money.',
    rating: 4.2,
    pricing: [
        PricingModel(id: '2_std', variant: 'Standard', price: 1449.09),
        PricingModel(id: '2_prem', variant: 'Premium', price: 1549.09)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD3',
    image: 'https://example.com/images/product-3.jpg',
    productName: 'MacBook Pro 14',
    overview: 'MacBook Pro 14 is a popular product in its category.',
    description: 'The MacBook Pro 14 offers top features and excellent value for money.',
    rating: 4.3,
    pricing: [
        PricingModel(id: '3_std', variant: 'Standard', price: 1529.98),
        PricingModel(id: '3_prem', variant: 'Premium', price: 1629.98)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD4',
    image: 'https://example.com/images/product-4.jpg',
    productName: 'Sony WH-1000XM5',
    overview: 'Sony WH-1000XM5 is a popular product in its category.',
    description: 'The Sony WH-1000XM5 offers top features and excellent value for money.',
    rating: 4.3,
    pricing: [
        PricingModel(id: '4_std', variant: 'Standard', price: 1296.53),
        PricingModel(id: '4_prem', variant: 'Premium', price: 1396.53)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD5',
    image: 'https://example.com/images/product-5.jpg',
    productName: 'Philips Digital Air Fryer',
    overview: 'Philips Digital Air Fryer is a popular product in its category.',
    description: 'The Philips Digital Air Fryer offers top features and excellent value for money.',
    rating: 4.7,
    pricing: [
        PricingModel(id: '5_std', variant: 'Standard', price: 838.31),
        PricingModel(id: '5_prem', variant: 'Premium', price: 938.31)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD6',
    image: 'https://example.com/images/product-6.jpg',
    productName: 'Instant Pot Duo',
    overview: 'Instant Pot Duo is a popular product in its category.',
    description: 'The Instant Pot Duo offers top features and excellent value for money.',
    rating: 4.0,
    pricing: [
        PricingModel(id: '6_std', variant: 'Standard', price: 1974.07),
        PricingModel(id: '6_prem', variant: 'Premium', price: 2074.0699999999997)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD7',
    image: 'https://example.com/images/product-7.jpg',
    productName: 'Logitech MX Master 3S',
    overview: 'Logitech MX Master 3S is a popular product in its category.',
    description: 'The Logitech MX Master 3S offers top features and excellent value for money.',
    rating: 3.9,
    pricing: [
        PricingModel(id: '7_std', variant: 'Standard', price: 35.94),
        PricingModel(id: '7_prem', variant: 'Premium', price: 135.94)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD8',
    image: 'https://example.com/images/product-8.jpg',
    productName: 'Apple Watch Series 9',
    overview: 'Apple Watch Series 9 is a popular product in its category.',
    description: 'The Apple Watch Series 9 offers top features and excellent value for money.',
    rating: 4.2,
    pricing: [
        PricingModel(id: '8_std', variant: 'Standard', price: 895.9),
        PricingModel(id: '8_prem', variant: 'Premium', price: 995.9)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD9',
    image: 'https://example.com/images/product-9.jpg',
    productName: 'Canon EOS R50',
    overview: 'Canon EOS R50 is a popular product in its category.',
    description: 'The Canon EOS R50 offers top features and excellent value for money.',
    rating: 3.5,
    pricing: [
        PricingModel(id: '9_std', variant: 'Standard', price: 1438.04),
        PricingModel(id: '9_prem', variant: 'Premium', price: 1538.04)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD10',
    image: 'https://example.com/images/product-10.jpg',
    productName: 'JBL Charge 5 Speaker',
    overview: 'JBL Charge 5 Speaker is a popular product in its category.',
    description: 'The JBL Charge 5 Speaker offers top features and excellent value for money.',
    rating: 3.6,
    pricing: [
        PricingModel(id: '10_std', variant: 'Standard', price: 1378.04),
        PricingModel(id: '10_prem', variant: 'Premium', price: 1478.04)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD11',
    image: 'https://example.com/images/product-11.jpg',
    productName: 'HP Envy x360',
    overview: 'HP Envy x360 is a popular product in its category.',
    description: 'The HP Envy x360 offers top features and excellent value for money.',
    rating: 3.7,
    pricing: [
        PricingModel(id: '11_std', variant: 'Standard', price: 357.14),
        PricingModel(id: '11_prem', variant: 'Premium', price: 457.14)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD12',
    image: 'https://example.com/images/product-12.jpg',
    productName: 'Xiaomi Mi Smart Band 8',
    overview: 'Xiaomi Mi Smart Band 8 is a popular product in its category.',
    description: 'The Xiaomi Mi Smart Band 8 offers top features and excellent value for money.',
    rating: 4.3,
    pricing: [
        PricingModel(id: '12_std', variant: 'Standard', price: 1889.74),
        PricingModel(id: '12_prem', variant: 'Premium', price: 1989.74)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD13',
    image: 'https://example.com/images/product-13.jpg',
    productName: 'Google Pixel 8 Pro',
    overview: 'Google Pixel 8 Pro is a popular product in its category.',
    description: 'The Google Pixel 8 Pro offers top features and excellent value for money.',
    rating: 4.4,
    pricing: [
        PricingModel(id: '13_std', variant: 'Standard', price: 1758.0),
        PricingModel(id: '13_prem', variant: 'Premium', price: 1858.0)
    ],
    similiarItems: ['PRD14'],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD14',
    image: 'https://example.com/images/product-14.jpg',
    productName: 'Dell XPS 13',
    overview: 'Dell XPS 13 is a popular product in its category.',
    description: 'The Dell XPS 13 offers top features and excellent value for money.',
    rating: 4.8,
    pricing: [
        PricingModel(id: '14_std', variant: 'Standard', price: 1136.06),
        PricingModel(id: '14_prem', variant: 'Premium', price: 1236.06)
    ],
    similiarItems: ['PRD13'],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD15',
    image: 'https://example.com/images/product-15.jpg',
    productName: 'Fitbit Versa 4',
    overview: 'Fitbit Versa 4 is a popular product in its category.',
    description: 'The Fitbit Versa 4 offers top features and excellent value for money.',
    rating: 4.2,
    pricing: [
        PricingModel(id: '15_std', variant: 'Standard', price: 1732.78),
        PricingModel(id: '15_prem', variant: 'Premium', price: 1832.78)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD16',
    image: 'https://example.com/images/product-16.jpg',
    productName: 'Lenovo IdeaPad Slim',
    overview: 'Lenovo IdeaPad Slim is a popular product in its category.',
    description: 'The Lenovo IdeaPad Slim offers top features and excellent value for money.',
    rating: 4.1,
    pricing: [
        PricingModel(id: '16_std', variant: 'Standard', price: 533.96),
        PricingModel(id: '16_prem', variant: 'Premium', price: 633.96)
    ],
    similiarItems: ["PRD13","PRD14"],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD17',
    image: 'https://example.com/images/product-17.jpg',
    productName: 'Kindle Paperwhite',
    overview: 'Kindle Paperwhite is a popular product in its category.',
    description: 'The Kindle Paperwhite offers top features and excellent value for money.',
    rating: 4.5,
    pricing: [
        PricingModel(id: '17_std', variant: 'Standard', price: 184.81),
        PricingModel(id: '17_prem', variant: 'Premium', price: 284.81)
    ],
    similiarItems: ["PRD10","PRD19"],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD18',
    image: 'https://example.com/images/product-18.jpg',
    productName: 'Anker Power Bank 20K',
    overview: 'Anker Power Bank 20K is a popular product in its category.',
    description: 'The Anker Power Bank 20K offers top features and excellent value for money.',
    rating: 4.4,
    pricing: [
        PricingModel(id: '18_std', variant: 'Standard', price: 704.38),
        PricingModel(id: '18_prem', variant: 'Premium', price: 804.38)
    ],
    similiarItems: ["PRD10","PRD12"],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD19',
    image: 'https://example.com/images/product-19.jpg',
    productName: 'TP-Link WiFi 6 Router',
    overview: 'TP-Link WiFi 6 Router is a popular product in its category.',
    description: 'The TP-Link WiFi 6 Router offers top features and excellent value for money.',
    rating: 3.8,
    pricing: [
        PricingModel(id: '19_std', variant: 'Standard', price: 318.89),
        PricingModel(id: '19_prem', variant: 'Premium', price: 418.89)
    ],
    similiarItems: ["PRD17"],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD20',
    image: 'https://example.com/images/product-20.jpg',
    productName: 'Dyson V11 Vacuum',
    overview: 'Dyson V11 Vacuum is a popular product in its category.',
    description: 'The Dyson V11 Vacuum offers top features and excellent value for money.',
    rating: 4.8,
    pricing: [
        PricingModel(id: '20_std', variant: 'Standard', price: 748.69),
        PricingModel(id: '20_prem', variant: 'Premium', price: 848.69)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD21',
    image: 'https://example.com/images/product-21.jpg',
    productName: 'Samsung 55" QLED TV',
    overview: 'Samsung 55" QLED TV is a popular product in its category.',
    description: 'The Samsung 55" QLED TV offers top features and excellent value for money.',
    rating: 4.4,
    pricing: [
        PricingModel(id: '21_std', variant: 'Standard', price: 759.49),
        PricingModel(id: '21_prem', variant: 'Premium', price: 859.49)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD22',
    image: 'https://example.com/images/product-22.jpg',
    productName: 'ASUS ROG Gaming Laptop',
    overview: 'ASUS ROG Gaming Laptop is a popular product in its category.',
    description: 'The ASUS ROG Gaming Laptop offers top features and excellent value for money.',
    rating: 3.7,
    pricing: [
        PricingModel(id: '22_std', variant: 'Standard', price: 588.14),
        PricingModel(id: '22_prem', variant: 'Premium', price: 688.14)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: 'PRD23',
    image: 'https://example.com/images/product-23.jpg',
    productName: 'Sony PlayStation 5',
    overview: 'Sony PlayStation 5 is a popular product in its category.',
    description: 'The Sony PlayStation 5 offers top features and excellent value for money.',
    rating: 4.9,
    pricing: [
        PricingModel(id: '23_std', variant: 'Standard', price: 1438.78),
        PricingModel(id: '23_prem', variant: 'Premium', price: 1538.78)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '24',
    image: 'https://example.com/images/product-24.jpg',
    productName: 'Xbox Series X',
    overview: 'Xbox Series X is a popular product in its category.',
    description: 'The Xbox Series X offers top features and excellent value for money.',
    rating: 4.5,
    pricing: [
        PricingModel(id: '24_std', variant: 'Standard', price: 1948.27),
        PricingModel(id: '24_prem', variant: 'Premium', price: 2048.27)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '25',
    image: 'https://example.com/images/product-25.jpg',
    productName: 'GoPro HERO11',
    overview: 'GoPro HERO11 is a popular product in its category.',
    description: 'The GoPro HERO11 offers top features and excellent value for money.',
    rating: 4.4,
    pricing: [
        PricingModel(id: '25_std', variant: 'Standard', price: 1029.41),
        PricingModel(id: '25_prem', variant: 'Premium', price: 1129.41)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '26',
    image: 'https://example.com/images/product-26.jpg',
    productName: 'Bose QuietComfort Earbuds II',
    overview: 'Bose QuietComfort Earbuds II is a popular product in its category.',
    description: 'The Bose QuietComfort Earbuds II offers top features and excellent value for money.',
    rating: 3.9,
    pricing: [
        PricingModel(id: '26_std', variant: 'Standard', price: 1680.11),
        PricingModel(id: '26_prem', variant: 'Premium', price: 1780.11)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '27',
    image: 'https://example.com/images/product-27.jpg',
    productName: 'Apple iPad Air (5th Gen)',
    overview: 'Apple iPad Air (5th Gen) is a popular product in its category.',
    description: 'The Apple iPad Air (5th Gen) offers top features and excellent value for money.',
    rating: 3.7,
    pricing: [
        PricingModel(id: '27_std', variant: 'Standard', price: 591.95),
        PricingModel(id: '27_prem', variant: 'Premium', price: 691.95)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '28',
    image: 'https://example.com/images/product-28.jpg',
    productName: 'LG Ultragear Monitor',
    overview: 'LG Ultragear Monitor is a popular product in its category.',
    description: 'The LG Ultragear Monitor offers top features and excellent value for money.',
    rating: 4.8,
    pricing: [
        PricingModel(id: '28_std', variant: 'Standard', price: 1332.24),
        PricingModel(id: '28_prem', variant: 'Premium', price: 1432.24)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '29',
    image: 'https://example.com/images/product-29.jpg',
    productName: 'Razer BlackWidow V4',
    overview: 'Razer BlackWidow V4 is a popular product in its category.',
    description: 'The Razer BlackWidow V4 offers top features and excellent value for money.',
    rating: 3.9,
    pricing: [
        PricingModel(id: '29_std', variant: 'Standard', price: 1113.62),
        PricingModel(id: '29_prem', variant: 'Premium', price: 1213.62)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '30',
    image: 'https://example.com/images/product-30.jpg',
    productName: 'BenQ 4K Projector',
    overview: 'BenQ 4K Projector is a popular product in its category.',
    description: 'The BenQ 4K Projector offers top features and excellent value for money.',
    rating: 3.5,
    pricing: [
        PricingModel(id: '30_std', variant: 'Standard', price: 1579.55),
        PricingModel(id: '30_prem', variant: 'Premium', price: 1679.55)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '31',
    image: 'https://example.com/images/product-31.jpg',
    productName: 'Beats Studio Pro',
    overview: 'Beats Studio Pro is a popular product in its category.',
    description: 'The Beats Studio Pro offers top features and excellent value for money.',
    rating: 4.7,
    pricing: [
        PricingModel(id: '31_std', variant: 'Standard', price: 1988.52),
        PricingModel(id: '31_prem', variant: 'Premium', price: 2088.52)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '32',
    image: 'https://example.com/images/product-32.jpg',
    productName: 'DJI Mini 3 Drone',
    overview: 'DJI Mini 3 Drone is a popular product in its category.',
    description: 'The DJI Mini 3 Drone offers top features and excellent value for money.',
    rating: 3.6,
    pricing: [
        PricingModel(id: '32_std', variant: 'Standard', price: 1729.76),
        PricingModel(id: '32_prem', variant: 'Premium', price: 1829.76)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '33',
    image: 'https://example.com/images/product-33.jpg',
    productName: 'Eufy RoboVac 11S',
    overview: 'Eufy RoboVac 11S is a popular product in its category.',
    description: 'The Eufy RoboVac 11S offers top features and excellent value for money.',
    rating: 4.3,
    pricing: [
        PricingModel(id: '33_std', variant: 'Standard', price: 1260.2),
        PricingModel(id: '33_prem', variant: 'Premium', price: 1360.2)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '34',
    image: 'https://example.com/images/product-34.jpg',
    productName: 'NutriBullet Blender Pro',
    overview: 'NutriBullet Blender Pro is a popular product in its category.',
    description: 'The NutriBullet Blender Pro offers top features and excellent value for money.',
    rating: 4.1,
    pricing: [
        PricingModel(id: '34_std', variant: 'Standard', price: 358.65),
        PricingModel(id: '34_prem', variant: 'Premium', price: 458.65)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '35',
    image: 'https://example.com/images/product-35.jpg',
    productName: 'Tile Mate Tracker',
    overview: 'Tile Mate Tracker is a popular product in its category.',
    description: 'The Tile Mate Tracker offers top features and excellent value for money.',
    rating: 4.5,
    pricing: [
        PricingModel(id: '35_std', variant: 'Standard', price: 572.64),
        PricingModel(id: '35_prem', variant: 'Premium', price: 672.64)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '36',
    image: 'https://example.com/images/product-36.jpg',
    productName: 'Oral-B Electric Toothbrush',
    overview: 'Oral-B Electric Toothbrush is a popular product in its category.',
    description: 'The Oral-B Electric Toothbrush offers top features and excellent value for money.',
    rating: 3.5,
    pricing: [
        PricingModel(id: '36_std', variant: 'Standard', price: 986.87),
        PricingModel(id: '36_prem', variant: 'Premium', price: 1086.87)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '37',
    image: 'https://example.com/images/product-37.jpg',
    productName: 'Nespresso VertuoPlus',
    overview: 'Nespresso VertuoPlus is a popular product in its category.',
    description: 'The Nespresso VertuoPlus offers top features and excellent value for money.',
    rating: 3.9,
    pricing: [
        PricingModel(id: '37_std', variant: 'Standard', price: 257.74),
        PricingModel(id: '37_prem', variant: 'Premium', price: 357.74)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '38',
    image: 'https://example.com/images/product-38.jpg',
    productName: 'KitchenAid Stand Mixer',
    overview: 'KitchenAid Stand Mixer is a popular product in its category.',
    description: 'The KitchenAid Stand Mixer offers top features and excellent value for money.',
    rating: 4.0,
    pricing: [
        PricingModel(id: '38_std', variant: 'Standard', price: 255.13),
        PricingModel(id: '38_prem', variant: 'Premium', price: 355.13)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '39',
    image: 'https://example.com/images/product-39.jpg',
    productName: 'Ring Video Doorbell Pro',
    overview: 'Ring Video Doorbell Pro is a popular product in its category.',
    description: 'The Ring Video Doorbell Pro offers top features and excellent value for money.',
    rating: 4.7,
    pricing: [
        PricingModel(id: '39_std', variant: 'Standard', price: 208.73),
        PricingModel(id: '39_prem', variant: 'Premium', price: 308.73)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '40',
    image: 'https://example.com/images/product-40.jpg',
    productName: 'Nest Learning Thermostat',
    overview: 'Nest Learning Thermostat is a popular product in its category.',
    description: 'The Nest Learning Thermostat offers top features and excellent value for money.',
    rating: 4.0,
    pricing: [
        PricingModel(id: '40_std', variant: 'Standard', price: 1369.55),
        PricingModel(id: '40_prem', variant: 'Premium', price: 1469.55)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '41',
    image: 'https://example.com/images/product-41.jpg',
    productName: 'WD My Passport SSD',
    overview: 'WD My Passport SSD is a popular product in its category.',
    description: 'The WD My Passport SSD offers top features and excellent value for money.',
    rating: 4.3,
    pricing: [
        PricingModel(id: '41_std', variant: 'Standard', price: 1577.46),
        PricingModel(id: '41_prem', variant: 'Premium', price: 1677.46)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '42',
    image: 'https://example.com/images/product-42.jpg',
    productName: 'Sandisk Extreme SD Card',
    overview: 'Sandisk Extreme SD Card is a popular product in its category.',
    description: 'The Sandisk Extreme SD Card offers top features and excellent value for money.',
    rating: 4.8,
    pricing: [
        PricingModel(id: '42_std', variant: 'Standard', price: 143.36),
        PricingModel(id: '42_prem', variant: 'Premium', price: 243.36)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '43',
    image: 'https://example.com/images/product-43.jpg',
    productName: 'TCL Android TV 43"',
    overview: 'TCL Android TV 43" is a popular product in its category.',
    description: 'The TCL Android TV 43" offers top features and excellent value for money.',
    rating: 4.8,
    pricing: [
        PricingModel(id: '43_std', variant: 'Standard', price: 692.95),
        PricingModel(id: '43_prem', variant: 'Premium', price: 792.95)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '44',
    image: 'https://example.com/images/product-44.jpg',
    productName: 'Amazon Echo Dot (5th Gen)',
    overview: 'Amazon Echo Dot (5th Gen) is a popular product in its category.',
    description: 'The Amazon Echo Dot (5th Gen) offers top features and excellent value for money.',
    rating: 4.2,
    pricing: [
        PricingModel(id: '44_std', variant: 'Standard', price: 473.13),
        PricingModel(id: '44_prem', variant: 'Premium', price: 573.13)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '45',
    image: 'https://example.com/images/product-45.jpg',
    productName: 'Fire TV Stick 4K Max',
    overview: 'Fire TV Stick 4K Max is a popular product in its category.',
    description: 'The Fire TV Stick 4K Max offers top features and excellent value for money.',
    rating: 3.5,
    pricing: [
        PricingModel(id: '45_std', variant: 'Standard', price: 399.34),
        PricingModel(id: '45_prem', variant: 'Premium', price: 499.34)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '46',
    image: 'https://example.com/images/product-46.jpg',
    productName: 'Roku Streaming Stick+',
    overview: 'Roku Streaming Stick+ is a popular product in its category.',
    description: 'The Roku Streaming Stick+ offers top features and excellent value for money.',
    rating: 4.5,
    pricing: [
        PricingModel(id: '46_std', variant: 'Standard', price: 1464.22),
        PricingModel(id: '46_prem', variant: 'Premium', price: 1564.22)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '47',
    image: 'https://example.com/images/product-47.jpg',
    productName: 'Garmin Forerunner 265',
    overview: 'Garmin Forerunner 265 is a popular product in its category.',
    description: 'The Garmin Forerunner 265 offers top features and excellent value for money.',
    rating: 3.8,
    pricing: [
        PricingModel(id: '47_std', variant: 'Standard', price: 682.54),
        PricingModel(id: '47_prem', variant: 'Premium', price: 782.54)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '48',
    image: 'https://example.com/images/product-48.jpg',
    productName: 'Oculus Quest 3',
    overview: 'Oculus Quest 3 is a popular product in its category.',
    description: 'The Oculus Quest 3 offers top features and excellent value for money.',
    rating: 5.0,
    pricing: [
        PricingModel(id: '48_std', variant: 'Standard', price: 1818.97),
        PricingModel(id: '48_prem', variant: 'Premium', price: 1918.97)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '49',
    image: 'https://example.com/images/product-49.jpg',
    productName: 'Steam Deck 512GB',
    overview: 'Steam Deck 512GB is a popular product in its category.',
    description: 'The Steam Deck 512GB offers top features and excellent value for money.',
    rating: 3.8,
    pricing: [
        PricingModel(id: '49_std', variant: 'Standard', price: 1777.0),
        PricingModel(id: '49_prem', variant: 'Premium', price: 1877.0)
    ],
    similiarItems: [],
    similiarProducts: [],
  ),
  ProductModel(
    id: '50',
    image: 'https://example.com/images/product-50.jpg',
    productName: 'Bose Smart Soundbar 900',
    overview: 'Bose Smart Soundbar 900 is a popular product in its category.',
    description: 'The Bose Smart Soundbar 900 offers top features and excellent value for money.',
    rating: 5.0,
    pricing: [
        PricingModel(id: '50_std', variant: 'Standard', price: 327.04),
        PricingModel(id: '50_prem', variant: 'Premium', price: 427.04)
    ],
    similiarItems: [],
    similiarProducts: [],
  )
];
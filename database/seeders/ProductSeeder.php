<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('products')->insert([
            // [
            //     'name'=>'Dell Inspiron 15 3511',
            //     "price"=>"48500",
            //     "description"=>"Dell Inspiron 15 3511 Laptop comes with Intel Intel Core i3-1115G4 Processor   ",
            //     "category"=>"Laptop",
            //     "gallery"=>"https://www.startech.com.bd/image/cache/catalog/laptop/dell/inspiron-15-3511/inspiron-15-3511-88989-500x500.jpg"
            // ],
            // [
            //     'name'=>'InFocus IN1004 3100 ',
            //     "price"=>"38000",
            //     "description"=>"The InFocus IN1004 Projector features cutting-edge display technology!  ",
            //     "category"=>"Projector",
            //     "gallery"=>"https://www.startech.com.bd/image/cache/catalog/projector/infocus/in1004/in1004-4-500x500.jpg"
            // ],
            // [
            //     'name'=>'Deli 4122 Digital Safe Box',
            //     "price"=>"33000",
            //     "description"=>"Deli 4122 Fingerprint & Digital Safe comes with PIN Code.",
            //     "category"=>"Locker",
            //     "gallery"=>"https://www.startech.com.bd/image/cache/catalog/security/digital-safe/4122/4122-1-500x500.jpg"
            // ],
            // [
            //     'name'=>'Lenovo D19-10 18.5 Inch',
            //     "price"=>"9500",
            //     "description"=>"The Lenovo D19-10 is a simple and affordable display solution. ",
            //     "category"=>"Monitor",
            //     "gallery"=>"https://www.startech.com.bd/image/cache/catalog/monitor/lenovo/d19-10/d19-10-01-500x500.jpg"
            // ],
            // [
            //     'name'=>'Fantech HG11',
            //     "price"=>"3200",
            //     "description"=>"Fantech HG11 Sakura Edition Stereo Gaming Headphone comes with Virtual 7.1 Ch Surround Sound. ",
            //     "category"=>"Headphone",
            //     "gallery"=>"https://www.startech.com.bd/image/cache/catalog/headphone/fantech/hg11/hg11-001-500x500.jpg"
            // ],
            // [
            //     'name'=>'Cudy M1800 AX1800',
            //     "price"=>"5990",
            //     "description"=>"The Cudy M1800 AX1800 Whole Home Mesh WiFi Router features High-Performance Dual Core CPU with 32MB Flash and 256MB DDR3. ",
            //     "category"=>"Router",
            //     "gallery"=>"https://www.startech.com.bd/image/cache/catalog/router/cudy/m1800/m1800-500x500.webp"
            // ],
            
            // [
            //     'name'=>'TP-Link Tapo C200 2MP',
            //     "price"=>"3090",
            //     "description"=>"TP-Link Tapo C200 Wi-Fi Dome IP Camera comes with High Definition Video, that Capture every detail in crystal-clear 1080p definition. ",
            //     "category"=>"IP Camera",
            //     "gallery"=>"https://www.startech.com.bd/image/cache/catalog/ip-camera/tp-link/tapo-c200/tapo-c200-1-500x500.jpg"
            // ],
            
            // [
            //     'name'=>'Huawei Watch GT 2',
            //     "price"=>"18690",
            //     "description"=>"39'' AMOLED HD touch color screen flaunts a 454x454 goal, along these lines you can see more and see better. ",
            //     "category"=>"Smart Watch",
            //     "gallery"=>"https://www.startech.com.bd/image/cache/catalog/watch/huawei/gt2/gt2-sports-edition-500x500.jpg"
            // ],
            [
                'name'=>'Brother JA1450NT ',
                "price"=>"10800",
                "description"=>"The Brother JA1450NT is a low-cost entry-level sewing machine with a variety of functions.  ",
                "category"=>" Sewing Machine",
                "gallery"=>"https://www.startech.com.bd/image/cache/catalog/sewing-machine/brother/ja1450nt/ja1450nt-01-500x500.jpg"
            ],
            [
                'name'=>'Corsair T1 Race',
                "price"=>"21600",
                "description"=>"The Corsair T1 Race 2018 Gaming Chair is a sophisticated gaming chair from Corsair that provides you with the best relaxing feeling. ",
                "category"=>"Gaming Chair",
                "gallery"=>"https://www.startech.com.bd/image/cache/catalog/gaming-chair/corsair/t1-race-2018/t1-race-black-blue-500x500.jpg"
            ],
            [
                'name'=>'Logitech 10M Mini',
                "price"=>"10600",
                "description"=>"Easily customize your conference room setup with the Logitech GROUP 10m Extended Cable.  ",
                "category"=>"Cable",
                "gallery"=>"https://www.startech.com.bd/image/cache/catalog/cable/logitech/group-10m-extended-cable-500x500.jpg"
            ],
            [
                'name'=>'Apple 87W Type C',
                "price"=>"3000",
                "description"=>"The 87W USB-C Power Adapter offers fast, efficient charging at home, in the office, or on the go. ",
                "category"=>"Adapter",
                "gallery"=>"https://www.startech.com.bd/image/cache/catalog/Accessories/Laptop%20Accsories/apple-type-c-500x500.jpg"
            ]
            
        ]);
    }
}

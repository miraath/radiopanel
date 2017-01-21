# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' } { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#["id", "streaming_url", "name", "logo", "description", "active", "online", "created_at", "updated_at", "logo_file_name", "logo_content_type", "logo_file_size", "logo_updated_at", "json_url", "slug", "language", "weigth"]
Radiostation.create({
  "id": 0,
  "slug": "miraath1",
  "name": "إذاعة ميراث الأنبياء الرئيسية",
  "streaming_url": "http://178.32.57.87:7000/stream",
  "json_url": "http://miraath.ddns.net:2199/rpc/miraath1/streaminfo.get",
  "description": "تسهر على بث الدروس العلمية لكبار العلماء وطلبة العلم، والتلاوات القرآنية على مدار الساعة.",
  "logo": "http://mone.irth.fr/service/uploads/00a7457d1a9e8fec2dab3cd03f1f0904.png",
  "logo_file_name": "miraath1.png",
  "online": true,
  "active": true,
  "language": "ar"
})

Radiostation.create({
  "id": 1,
  "slug": "miraath2",
  "name": "إذاعة ميراث الأنبياء الثانية",
  "streaming_url": "http://178.32.57.87:7010/stream",
  "json_url": "http://miraath.ddns.net:2199/rpc/miraath2/streaminfo.get",
  "description": " للاستماع إلى الدروس المباشرة المتعارضة مع الإذاعة الرئيسية ( تعمل وقت البث المباشر فقط )",
  "logo": "http://mone.irth.fr/service/uploads/65fc9dbd976fa02a9f4359666c347384.png",
  "logo_file_name": "miraath2.png",
  "online": false,
  "active": true,
  "language": "ar"
})
Radiostation.create({
  "id": 2,
  "slug": "miraath3",
  "name": "إذاعة ميراث الأنبياء الثالثة",
  "streaming_url": "http://178.32.57.87:7080/stream",
  "json_url": "http://miraath.ddns.net:2199/rpc/miraath3/streaminfo.get",
  "description": "الإذاعة الثالثة: للسماح للإخوة المستمعين بمتابعة الدروس المتعارضة من الدورات الشرعية",
  "logo": "http://mone.irth.fr/service/uploads/1f62fa97e5d67ef5781ca10af832ea68.png",
  "logo_file_name": "miraath3.png",
  "online": false,
  "active": true,
  "language": "ar"
})
Radiostation.create({
  "id": 3,
  "slug": "quran",
  "name": "إذاعة القرآن الكريم",
  "streaming_url": "http://178.32.57.87:7020/stream",
  "json_url": "http://miraath.ddns.net:2199/rpc/quran/streaminfo.get",
  "description": "إذاعة القران الكريم بموقع ميراث الأنبياء ( تلاوات على مدار الساعة )",
  "logo": "http://mone.irth.fr/service/uploads/85ba643e53a23894923c315e692fbbd8.png",
  "logo_file_name": "quran.png",
  "online": true,
  "active": true,
  "language": "ar"
})
Radiostation.create({
  "id": 4,
  "slug": "majaliss",
  "name": "مجالس ميراث الأنبياء التأصيلية",
  "streaming_url": "http://178.32.57.87:7030/stream",
  "json_url": "http://miraath.ddns.net:2199/rpc/majaliss/streaminfo.get",
  "description": "مجالس ميراث الأنبياء التأصيلية",
  "logo": "http://mone.irth.fr/service/uploads/8e9d97964973626370acf1ccb5e77faf.png",
  "logo_file_name": "majaliss.png",
  "online": true,
  "active": true,
  "language": "ar"
})

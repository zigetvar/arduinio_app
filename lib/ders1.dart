import 'package:flutter/material.dart';

import 'component/header.dart';
import 'component/imageEvent.dart';
import 'component/longtext.dart';

class Ders1 extends StatelessWidget {
  const Ders1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 228, 186, 3)),
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                header("ARDUINO NEDİR? NE DEĞİLDİR?", 30),
                longText(
                    "Arduino, programlanabilir bir elektronik karttır ve yazdığınız programa göre hareket eder. Çizgi izleyen robot mu yapmak istiyorsunuz, ya da hava karadığında perdeleri kapatıp ışığı yakan bir sistem, ya da güneşi takip eden bir güneş pili? Tüm bu sistemlerin beyni olarak Arduino’yu kullanabilirsiniz. Akıllı elektronik cihazlarda sensörlerden gelen verileri okuyup, yorumlayan, kararlar verip, buna göre motor gibi cihazlara sinyal gönderen, kısacası adeta beyin gibi çalışan üniteler bulunur. İşte Arduino’yu da bu tarz bir ünite olarak kullanabilirsiniz."),
                imageEvent("Assets/images/ders1.jpg",
                    "Arduino Uno R3’ün mikrodenetleyicisi ATMEL ATMEGA328P"),
                longText(
                    "Arduino’lar çeşit çeşit olduğu halde (Uno, Mega, Mini gibi), her birinin üzerinde bir adet mikrodenetleyici bulunur. Kurduğumuz sistemlerde beyin işlevi gören ve programlanabilir olan kısım aslında bu parçadır. Yani Arduino bir mikrodenetleyici değildir, üzerinde mikrodenetleyici içeren bir karttır. Fakat, hem donanımı hem de yazılımı ile üzerindeki mikrodenetleyiciyi daha kolay kontrol edilebilir hale getirir."),
                longText(
                    "Arduino üzerinde gördüğümüz diğer parçalar genelde arayüz işlevi görür. Bu parçaları Arduino’ya bilgisayardan program yüklemek, reset atmak, “shield” adı verilen ek kartları bağlamak ve kendi kuruduğumuz devreyi bağlamak için kullanırız."),
                imageEvent("Assets/images/ders1.2.jpg",
                    "Arduino ve EasyPIC v7 kartları"),
                longText(
                    "Daha önce PIC’lerle çalıştıysanız, geliştirme kartlarının üzerinde gördüğünüz LCD, 7 segment, buton, LED vs. gibi parçaları Arduino kartları üzerinde göremezsiniz. Arduino sade bir karttır, dış devreyi kendiniz kurar denersiniz. Üzerinde sadece test amaçlı bir tane LED vardır."),
                imageEvent("Assets/images/ders1.3.jpg", "Arduino Programı"),
                longText(
                    "Arduino’yu programlamak oldukça basittir. Ücretsiz, kolay kullanılır ve kendi gibi sade bir C tabanlı derleyicisi bulunur. Çok hızlı bir şekilde yayıldığından ve kolay erişilebilir olduğundan, internette oldukça fazla örnek ve proje bulabilirsiniz."),
                longText(
                    "Arduino’yu programladıktan sonra gücü kessek dahi içinde yüklü olan program silinmez. Yıllar sonra tekrar güç verdiğimizde, son yüklü olan programın çalıştığını görebiliriz."),
                longText(
                    "Şimdi Arduino denilen kartın çeşitlerine bir göz atalım."),
                header("ARDUINO ÇEŞİTLERİ NELERDİR?", 30),
                imageEvent("Assets/images/ders1.4.jpg",
                    "Arduino MEGA, UNO R3 ve MINI"),
                longText(
                    "Piyasada Arduino’nun bir çok çeşidiyle karşılaşmak mümkündür. Yukarıdaki fotoğrafta MEGA, UNO R3 ve MINI’yi görüyoruz. Bunların dışında farklı çeşitleri de mevcuttur. Bu çeşitlerin boyut, fiyat ve kapasiteleri birbirlerinden farklıdır. Fakat, tüm bu çeşitlerin kodlaması aşağı yukarı aynıdır. Birini öğrendiğiniz zaman, diğerlerinden herhangi birine alışmanız çok kısa sürer."),
                imageEvent("Assets/images/ders1.5.jpg", "Arduino UNO R3"),
                longText(
                    "Genelde Arduino denilince Arduino Uno anlaşıldığından, bu yazı dizisinde Arduino Uno R3 kullanıyoruz. Uno’nun portlarını dış devreye bağlamak ve bilgisayardan program atmak Nano, Micro, Mini, ve Pro Mini’ye göre biraz daha kolaydır. Fiyat olarak da Mega ve Leonardo’dan daha uygundur. Bu nedenlerle, biz de Arduino öğrenmek için en iyi seçimin Arduino Uno R3 olduğunu düşünüyoruz."),
                header("ARDUINO UNO’NUN GENEL ÖZELLİKLERİ NELERDİR?", 30),
                longText(
                    "Satın aldığımızda, Arduino Uno R3, aşağıda gösterilen paket içerisinde geliyor."),
                imageEvent(
                    "Assets/images/ders1.6.jpg", "Arduino UNO R3 paketi"),
                longText(
                    "Pakette Arduino Uno R3 kartının dışında bir kaç etiket ve küçük bir broşürle karşılaşıyoruz."),
                imageEvent(
                    "Assets/images/ders1.5.jpg", "Arduino UNO R3 paketi"),
                longText(
                    "Paket içerisinde çıkanlar, maalesef Arduino’yu kullanmak için yeterli olmuyor. Bize bir de Micro USB kablosu gerekiyor. Değişik renk ve uzunluklarda satılan bu kabloyu, çok büyük ihtimalle Arduino aldığınız yerden bulabilirsiniz."),
                imageEvent("Assets/images/ders1.8.jpg",
                    "Arduino ile birlikte satın almanız gereken Micro USB kablosu"),
                longText("Şimdi Arduino üzerindeki bazı parçalara bakalım"),
                header("Adaptör ve Micro USB Girişleri", 20),
                imageEvent("Assets/images/ders1.9.jpg",
                    "Adaptör ve Micro USB Girişleri"),
                longText(
                    "İlk olarak, üstteki iki girişe dikkat edelim. Bunlardan sağdaki Micro USB bağlantısı, soldaki ise adaptör girişidir."),
                longText(
                    "Micro USB bağlantısı sayesinde Arduino’yu bilgisayara bağlıyor, program atıyor ve bilgisayar ile haberleştiriyoruz. Arduino’yu programladıktan sonra eğer bilgisayarla haberleşmesi gerekmiyorsa, Micro USB girişi sadece Arduino’nun çalışması için gereken gücü sağlamaya yarıyor."),
                longText(
                    "Eğer programlama yaptıktan sonra, Arduino’nun bilgisayarla ilişkisini tamamen kesmek istiyorsak, solda görülen adaptör girişine 7 ila 12V arası bir adaptör bağlayabiliriz. Böylece, Arduino'nun gerekli gücü adaptörden alıp, bilgisayardan bağımsız bir şekilde çalışmasını sağlayabiliriz."),
                header("Dijital ve Analog Portlar", 20),
                imageEvent(
                    "Assets/images/ders1.10.jpg", "Arduino giriş ve çıkışları"),
                longText(
                    "Kartın üzerinde solda ve sağda dişi girişler görüyoruz. Arduino üzerindeki bu girişlerin her birinin yanında, ne olduklarına dair yazılar bulunuyor. Sağda 0’dan başlayıp 13’e kadar giden sayılar Arduino’nun dijital portlarının (yani dijital giriş-çıkış ünitelerinin) sayılarıdır. Haberleşme, motor çalıştırmak için sinyal gönderme ve bazı sensörleri okuma gibi işlevler bu portlar üzerinden gerçekleşir. Bu portlar bu anlamda Arduino’nun dış dünyaya açılan kapılarıdır. Dijital olmaları bu portların veri alırken ve gönderirken her şeyi 0 ve 1’ler yoluyla anladığını gösteriyor. Örneğin, uygulamamızda bir LED yakmamız gerekiyorsa, LED'in bağlı olduğu dijital porta 1 göndeririz. Bu LED'i söndürmemiz gerekiyorsa aynı porta 0 göndeririz. Dijital portlar için bu ikisinin arası bulunmamaktadır. Elektriksel olarak bakacak olursak, Arduino’nun dijital portunun 1 olması, bu porttaki çıkış voltajının 5 V olması anlamına gelir. Digital portun 0 olması ise bu portun çıkışının 0 V olduğunu işaret eder. Bir dijital port, bu iki voltaj değerinden birini gönderebilir. Veri okurken de aynı şey geçerlidir. Gelen voltaj değerine göre porttaki değeri 0 ya da 1 olarak algılar. Giriş voltajı belli bir değerin üzerinde gelirse, dijital port için bu durum 1'e, altında gelirse 0’a eşittir."),
                longText(
                    "Ara değerler için yardımımıza solda gördüğümüz A0’dan A5’e kadar olan portlar koşuyor. Buradaki girişlerin her biri de birer porttur; ama sağdakilerin aksine analog portlardır. Analog portlar yardımıyla Arduino 0V ile 5V arasındak değerleri de okuyabilir. Bir çok sensör devresinden bu iki değer arasında voltajlar gelir. Örneğin, LM35 isimli sicaklık sensöründen, sicaklık ile doğru orantılı olarak bir voltaj çıkışı olur. Ortam sıcaklığı 50 derece olduğunda LM35’ten 0.5 V; 100 derece olduğunda 1 V çıkış olur. Eğer bu sensörü direk olarak bir dijital porta bağlarsak, her iki voltaj değeri de düşük olduğundan bu port iki değeri de 0 olarak algılar, ama analog porta bağlarsak, sicaklık değerini yaklaşık olarak anlayabiliriz."),
                header("5V ve GND", 20),
                imageEvent("Assets/images/ders1.11.jpg",
                    "5V ve Toprak (GND) çıkışları"),
                longText(
                    "Şu an için önemli olan diğer girişler ise, yanında GND ve 5 V yazanlardır. GDN’den sağda 1, solda 2 tane görebiliriz. 3 GND de kart üzerindeki su yollarıyla birbirine bağlıdır, devrenizde hangisini kullandığınız farketmez. Burası Arduino’nun toprak bağlantısıdır. Başka bir değişle sabit 0 V çıkışıdır. 5 V yazan yerden ise, tahmin edebileceğiniz gibi sabit 5 V çıkışı olur. Bu iki bağlantı, genellikle Arduino’nun dışına onunla beraber çalışması için kurduğumuz devrelerde işe yarar."),
                header("Reset Butonu ve LED", 20),
                imageEvent("Assets/images/ders1.12.jpg", "Reset Butonu ve LED"),
                longText(
                    "Kart üzerinde, sağ üstte micro USB girişinin hemen yanındaki buton, Reset butonu olarak işlev görür. Eğer programın yeni yüklenmiş gibi baştan çalışmasını istiyorsak bu butona basabiliriz."),
                longText(
                    "Ayrıca, 13 numaralı dijital portun yanındaki küçük bir LED görüyoruz. Bu LED’i bazı programları test etmek için yakıp, söndürebiliriz."),
                header("Mikrodenetleyici", 20),
                imageEvent("Assets/images/ders1.13.jpg",
                    "Arduino UNO R3 mikrodenetleyicisi"),
                longText(
                    "Arduino UNO R3 üzerinde ATMEL ATMEGA328P kullanılır. 16 MHz hızında çalışan bu mikroişlemcinin 32 KB pogram hafızası ve 2 KB RAM’i bulunur. Bilgisayarınızla karşılaştırdığınızda bu değerler sizi hüsrana uğrattıysa hemen söyleyelim, bu düşük hız ve hafıza bile, birçok uygulama için oldukça yeterlidir, hatta bazıları için oldukça fazladır."),
                header("ARDUINO’YU BİLGİSAYARA NASIL BAĞLARIM?", 30),
                longText(
                    "Arduino Uno R3’ü bilgisayara bağlamak için gerekli olan şeyler, sadece aşağıda fotoğrafı gösterilen kablo ve bilgisayarın USB girişidir."),
                imageEvent("Assets/images/ders1.14.jpg", "MicroUSB Kablosu"),
                longText(
                    "Kablonun bir tarafında Micro USB, diğer tarafında ise USB girişi bulunmaktadır. Micro USB tarafı Arduino’ya, USB tarafı ise bilgisayara bağlanır."),
                imageEvent("Assets/images/ders1.15.jpg",
                    "Arduino’yu bilgisayara bağlama"),
                longText(
                    "Arduino’yu yeni aldığımızda, üzerindeki çipte basit bir program yüklü olarak gelir. Arduino’yu bağlar bağlamaz, USB kablosundan güç aldığı için, içerisindeki program çalışmaya başlar. 13’üncü dijital portun yanındaki ufak LED yanıp söner."),
                imageEvent("Assets/images/ders1.16.jpg",
                    "Arduino ile yüklü gelen program"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

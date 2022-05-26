import 'package:arduinio_app/component/header.dart';
import 'package:arduinio_app/component/imageEvent.dart';
import 'package:arduinio_app/component/longtext.dart';
import 'package:flutter/material.dart';

class Ders7 extends StatelessWidget {
  const Ders7({ Key? key }) : super(key: key);

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

                 header("LDR VE IŞIK", 30),
                 longText("Bu derste, Arduino kullanarak, karanlık olduğunda bir LED’i yakan ve aydınlık olduğunda ise söndüren bir devre yapıyoruz. İlk olarak, LDR’ın ne olduğu ile başlıyoruz. Daha sonra ise, LDR ile kuracağımız devreyi inceliyoruz. Son olarak da, Arduino içerisine atacağımız programın kodlarını oluşturuyoruz."),
                 header("GEREKLİ MALZEMELER", 25),
                 longText("Öncelikle, bu derste hangi malzemeleri kullanacağımızı görelim."),
                 imageEvent("Assets/images/ders7.png", ""),
                 header("LDR NEDİR?",25),
                 longText("LDR, İngilizce “Light Dependent Resistor” (yani, ışığa bağlı direnç) isminin kısaltmasıdır. LDR için Fotodirenç (photoresistor) ismi de kullanılır. LDR’nin en önemli özelliği, ortamdaki ışığın şiddetine göre direncinin değişmesidir. Bu sayede, ortam ışığını ölçmeye veya tespit etmeye yarayan bir sensör olarak kullanılabilir."),
                 imageEvent("Assets/images/ders7.2.jpg", ""),
                 longText("Piyasada 5 mm ve 10 mm boylarında LDR’larla karşılaşabilirsiniz. Her ikisinin de fiyatı oldukça uygun. Farklı boyutlardaki bu LDR’lerin aynı ışık altındaki dirençleri birbirlerinden farklı. Devrenizde daha düşük direnç değerleri ile çalışmak istiyorsanız 10 mm LDR’lerden kullanabilirsiniz."),
                 longText("Bu iki LDR türü için yaptığımız kaba ölçümlerde aşağıdaki direnç değerlerini elde ediyoruz."),
                 imageEvent("Assets/images/ders7.3.png", "Tablo 1-LDR direnci"),
                 longText("Görüldüğü gibi, ortamdaki ışık seviyesi azaldıkça LDR’nin direnci artıyor. Karanlıkta ise bu direnç MegaOhm’lar düzeyine çıkıyor."),
                 longText("Loş ışık, karanlık gibi kavramlar öznel olduğundan, kendi ölçümleriniz bizimkilerden biraz farklı olabilir."),
                 header("LDR Devresi", 25),
                 longText("Yukarıdaki tablolarda ortamdaki ışık miktarına göre LDR direncinin nasıl değiştiğini gördük. Eğer, Arduino’da direk olarak direnç ölçebileceğimiz bir port veya özellik olsaydı, LDR’ı bu porta bağlar, ölçümü yapar ve ortamdaki ışık şiddetini tahmin edebilirdik. Fakat, maalesef Arduino’da böyle bir port veya özellik yok. Ama neyseki, voltaj değerlerini okuyabilen analog portlar mevcut. Analog bir porttan LDR direncini tahmin edebilmemiz için, LDR’ın direncine bağlı olarak çıkış voltajı değişen bir devre kurmamız gerekiyor. Bunun en kolay yolu ise, LDR’a seri bir sabit direnç (R) bağlayarak, aşağıdaki gibi bir voltaj bölücü oluşturmaktır."),
                 imageEvent("Assets/images/ders7.4.jpg", ""),
                 longText("Bu devrede, LDR ve R aynı tel üzerinde olduğundan, üzerlerinden eşit miktarda akım geçer. Eğer LDR’nin direncine RLDR dersek, bu akımı"),
                 imageEvent("Assets/images/ders7.5.png", ""),
                 longText("olarak buluruz. Bu durumda,VR ile gösterilen noktadaki voltaj"),
                 imageEvent("Assets/images/ders7.6.png", ""),
                 longText("olur. Ortamdaki ışık şiddeti arttıkça, LDR direnci düşer ve yukarıdaki formüle göre RLDR’nin düşmesi VR’nin artması anlamına gelir. Yani, ışık şiddeti artınca VR artar. ortam karanlıklaşınca ise(RLDR artacağınan) VR düşer.Aşağıdaki grafikte R = 10kΩ için VR değerindeki değişimleri görebiliriz."),
                 imageEvent("Assets/images/ders7.7.jpg", ""),
                 longText("Şimdi, yukarıda kurduğumuz devrenin Arduino ile bağlantısını yapalım. 5 V ve toprak için Arduino üzerindeki çıkışları kullanıyoruz.VR voltajını ölçebilmek için ise, dirençlerin birleşme noktasını A0 portuna bağlıyoruz. Aslında, böyle bir bağlantı yaparak (A0’a doğru da bir akım oluşacağından) ilk devrenin voltaj bölücü özelliğini ortadan kaldırmış oluyoruz.Fakat, bir port giriş durumundayken iç direnci çok yüksektir. Bu da, A0’a doğru olan akımın çok küçük olacağı anlamına geldiğinden, devrenin halen voltaj bölücü gibi hareket ettiğini düşünebiliriz."),
                 imageEvent("Assets/images/ders7.8.jpg", ""),
                 longText("Son olarak, R için bir değer seçmemiz gerekiyor. Bu değer tamamen LED’in ne düzeyde karanlık olan bir ortamda yanmasını istediğimizle ilintili. Eğer, LED’in tam yanıp yanmama sınırında olduğunu düşündüğünüz bir ışık seviyesinde, kullanacağımız LDR’ın direncini ölçersek işlerimiz oldukça kolaylaşacaktır. Biz, 10 mm LDR’nin yaklaşık 10 kΩ dirence sahip olduğu ışık şiddetini sınır olarak belirliyoruz."),
                 longText("Eğer yukarıdaki formülde bu değeri yerine koyarsak, A0’daki voltaj"),
                 imageEvent("Assets/images/ders7.9.png", ""),
                 longText("olur. Yani,R için seçtiğimiz değere göre sınır noktamızdaki voltaj da değişecektir. Eğer R için 10kΩ değerini seçersek, yukarıdaki formüle göre LED’in yanıp yanmama sınırında VR = 2.5V oluyor."),
                 longText("Seçtiğimiz değerlere göre, Arduino ile VR direncini ölçüp, belirlediğimiz 2.5V sınırından düşük olduğu durumlarda LED’i yakıp, 2.5V’tan yüksek değerlerde söndürmemiz gerekiyor."),
                 longText("LED’i yakıp söndürmek için, 2 numaralı dijital portu kullanıyoruz ve üzerinden 20mA akım geçmesini istediğimizden, önceki derslerde olduğu gibi 150Ω’luk bir direnci LED’e seri olarak bağlıyoruz."),
                 longText("Aşağıda, kurulmuş gerçek devreyi görebilirsiniz."),
                 imageEvent("Assets/images/ders7.10.jpg", ""),
                 header("Analog Portlar", 25),
                 longText("LDR devresinden gelen voltajı ölçebilmek için, Arduino’nun analog portlarını kullanıyoruz."),
                 imageEvent("Assets/images/ders7.11.jpg", ""),
                 longText("Analog portlar sol tarafta, yanında A0, A1, A2, A3, A4 ve A5 yazan portlar. Sağ taraftakiler ise hatırlayacağınız gibi dijital olan portlar."),
                 longText("Dijital portlar için belli bir eşik voltaj değerimiz var. Eğer gelen voltaj eşik değerini geçiyorsa Arduino bunu 1, eğer eşik değerinin altındaysa 0 olarak algılar. Bu nedenle, 0 V ile 5 V arasında gelen voltaj değerini dijital bir port ile algılayamayız."),
                 longText("Analog portlar 0 V ile 5 V arasını 1024 eşit aralığa böler ve gelen voltajın bu aralıklardan hangisinde olduğunu anlayabilir. Bu sayede, yaklaşık da olsa, gelen voltajın değerini ölçebiliyoruz."),
                 longText("Arduino’nun mikrodenetleyicisinde ADC (Analog to Digital Converter) isminde bir ünite bulunmakta. ADC ünitesi 0 V ile 5 V arasını 1024 eşit parçaya bölüyor. En düşüğü 0’a ve en yükseği 1023’e karşılık gelecek şekilde her bir parçaya bir numara veriyor. Gelen voltajın kaç numaralı aralıkta olduğunu bulup, hafızaya çıkış olarak bu sayıyı gönderiyor. Örneğin, ADC’den 0 gelmesi, gelen analog voltajın 0 V olduğunu, 512 gelmesi analog voltajımızın 2.5 V olduğunu ve 1023 gelmesi analog voltajın 5 V olduğunu gösteriyor. Biz de, ADC’nin hafızada oluşturduğu sayıya bakarak ölçülen voltajın ne olduğunu tahmin edebiliyoruz."),
                 imageEvent("Assets/images/ders7.12.jpg", ""),
                 longText("Kısacası, analog porttan voltaj ölçtüğümüzde karşımıza direk olarak 2.34 V, 3.82 V gibi değerler çıkmıyor. Bunun yerine 0 ile 1023 arasında bir sayı elde ediyoruz."),
                 longText("Ama basit bir oranlamayla, ADC’den gelen sayıya göre voltaj değerini tahmin edebiliriz. Bu tahminde, aşağıdaki formülü kullanabiliriz."),
                 longText("Analog voltaj = (ADC sayısı) × (4.88 mV)"),
                 longText("Örneğin, ADC’den 100 sayısı geliyorsa, bu analog voltajımızın yaklaşık olarak 100 × 4,88 mV = 488 mV = 0.488 V olduğunu gösteriyor. 500 sayısı ise 500 × 4.88 mV = 2.44 V analog girişimizin olduğunu gösteriyor"),
                 longText("ADC’den gelen 0-1023 arasındaki sayıyı okumak ise oldukça kolay. Arduino yazılımdaki analogRead() komutu tam olarak bu işe yarıyor."),
                 header("analogRead komutu", 25),
                 longText("analogRead komutu sadece 1 adet parametre alıyor, o da, analog port numarası. Komutların parametreleri önceki derslerden hatırlayacağınız gibi parantez içerisinde yazılıyor. Örneğin, analogRead(1) komutu A1’deki, analogRead(5) ise A5’teki voltajı okuyor. Bu okumanın sonunda 0 ile 1023 arasında bir tamsayı veriyor."),
                 header("PROGRAM", 25),
                 longText("Bu derste son olarak, Arduino’ya yükleyeceğimiz programı yazıyoruz. Bu uygulamanın kodları oldukça kısa."),
                 imageEvent("Assets/images/ders7.13.png", ""),
                 longText("LED’i 2 numaralı dijital porta bağladığımız ve daha sonraki satırlarda 2 yerine daha anlamlı bir isim kullanalım diye, ilk satırda 2 sayısına led ismini veriyoruz."),
                 header("setup", 25),
                 longText("setup fonksiyonu içerisinde LED’in bağlı olduğu dijital portu çıkış haline getiriyoruz."),
                 header("loop", 25),
                 longText("loop fonksiyonu içerisinde daha önceki derslerde görmediğimiz bir yapıyla karşılaşıyoruz."),
                 imageEvent("Assets/images/ders7.14.png", ""),
                 longText("Bu yapıya, koşullu ifade ismini veriyoruz. Bu koşullu ifade içerisinde iki anahtar kelimemiz var: if (Türkçesi: eğer) ve else (Türkçesi: değilse)"),
                 longText("İlk satırda gördüğümüz if anahtar kelimesi, kendisinden hemen sonra gelen paranteze yazılmış ifadenin doğru olup olmadığını kontrol ediyor. Eğer parantez içindeki ifade doğruysa, if’in altına küme işaretleri arasına yazılan komut dizisi işleniyor. Eğer ifade yanlışsa, bu komutlar işlenmiyor, göz ardı ediliyor. Bu programda if’in yanındaki parantezin içerisinde analogRead(0)<512 ifadesini görüyoruz. analogRead(0), A0 analog portundan okunan voltaj değerine göre 0 ile 1023 arasında bir sayı veriyor. Eğer bu sayı 512’den küçükse bu, gelen voltajın 2.5 V’tan küçük olduğunu gösteriyor. if’in yanındaki parantezin içerisindeki ifadenin doğru olması, A0’dan gelen voltajın 2.5 V’tan küçük olması anlamına geliyor. Bu ifade doğruysa if’in küme işaretleri arasında kalan"),
                 imageEvent("Assets/images/ders7.15.png", ""),
                 longText("komutu işleniyor. Bu komut ise, 2 numaralı porta bağladığımız LED’in yanmasını sağlıyor. Kısacası, eğer A0’a gelen voltaj 2.5 V’un altındaysa, LED yakılıyor."),
                 longText("if’den sonraki anahtar kelimemiz ise else. else’in küme işaretleri ile ayrılmış komutları, yalnızca if’in yanında yazan ifadenin yanlış olduğu zaman işleniyor. Yani yukarıdaki yapı için iki seçeneğimiz var. Eğer if’in yanında yazılan ifade doğruysa if’in, değilse else’nin altınaki küme işaretleri ile ayrılmış komutlar işleniyor."),
                 longText("if’in yanında yazan ifade analogRead(0)<512 olduğu için, else içerisine yalnızca analogRead(0)>=512 durumunda giriyor. Bu ise, A0’a gelen voltajın 2.5 V’tan büyük olduğu zaman doğru oluyor. Bu durumda else içerisinde yazan,"),
                 imageEvent("Assets/images/ders7.16.png", ""),
                 longText("komutu işleniyor. Bu komut ise LED’i sönmesini sağlıyor."),
                 longText("Kısacası, loop içerisindeki koşullu ifade bloğumuz, eğer A0’dan gelen voltaj 2.5 V’un altındaysa (yani ortam karanlıksa) LED’i yakıyor, tersi durumda ise (aydınlıkta) LED’i söndürüyor."),
                 longText("Aşağıdaki fotoğrafta, LDR’a ışık gelmediği zaman LED’in yandığını görüyoruz."),
                 imageEvent("Assets/images/ders7.17.jpg", ""),
                 longText("LED’in yanması ile yanmaması arasındaki sınırı isteğimize göre değiştirebiliriz. Bunu yapmak için if’in parantezindeki 512 sayısını değiştirmemiz yeterli. Eğer 512 yerine daha büyük bir sayı yazarsak, LED daha aydınlık ortamlarda da yanmaya başlar. Eğer daha karanlıkta yanmaya başlamasını istiyorsak, sayıyı küçültmemiz gerekir.")

               ],
             ),
           ],
         ),
       ),
    );
    
  }
}
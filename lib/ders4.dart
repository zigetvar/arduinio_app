import 'package:arduinio_app/component/header.dart';
import 'package:arduinio_app/component/imageEvent.dart';
import 'package:arduinio_app/component/longtext.dart';
import 'package:flutter/material.dart';

class Ders4 extends StatelessWidget {
  const Ders4({Key? key}) : super(key: key);

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
                header("LED YAKMA PROGRAMI", 30),
                longText("Önceki derste, LED yakıp söndürmek için gerekli olan programı Arduino'ya yükledik ve kurmamız gereken devreyi öğrendik. Sonrasında, hem program hem de devrede ufak değişiklikler yaparak sonuçlarını inceledik. Şimdi ise sıra programı biraz daha inceleyip, mantığını anlamaya çalışmakta."),
                longText("Programımız, port numaralarını değiştirmeden önce şu şekildeydi:"),
                imageEvent("Assets/images/ders4.png", ""),
                longText("Yazının ilerleyen bölümlerinde, yukarıdaki satırların ne anlama geldiğini ve ne işe yaradığını tek tek öğreneceğiz. Önce yorumlarla işe başlayalım."),
                header("Yorumlar", 22),
                longText("Yukarıdaki programda, gri ile renklendirilmiş yerler görüyoruz. Gri olan yerlerin tümüne yorum adı veriliyor. Bu satırların kod dizisine herhangi bir etkisi yok. Yorumları değiştirdiğinizde veya tamamını sildiğinizde dahi, program yine aynı şekilde çalışacaktır."),
                longText("Bu noktada aklınıza şöyle bir soru gelebilir: Programımızı etkilemiyorsa, bu yazıların nasıl bir işlevi var?"),
                longText("Yorum oluşturarak, nasıl bir uygulama yaptığımıza, hangi devre elemanının hangi porta takılacağına ve programımızın çalışma mantığına dair hatırlatma notları yazabiliriz. Bunu yapmamız, hata çıktığında kodları gözden geçirmemizi kolaylaştırır. Ayrıca, daha önce bizim veya bir başkasının yazdığı bir programı incelerken, eğer yorumlar yazılmışsa, satırların ve genel mantığın anlaşılması çok daha kolay hale gelir. Bizim tavsiyemiz, oluşturduğunuz en küçük programa dahi mümkün olduğunca fazla açıklayıcı yorumlar eklemeniz."),
                longText("Peki, Arduino yazılımı, hangi kısmı kod hangi kısmı ise yorum maksadıyla yazdığımızı nasıl anlıyor?"),
                longText("Yazdığımız kısmın yorum olduğunu belirtmek için iki farklı işaret kullanıyoruz. Eğer bir yazının başına // karakterlerini yerleştirirseniz, bu karakterlerden sonra o satırda yazdığınız her şey yorum haline dönüşür ve program tarafından göz ardı edilir. Örneğin,"),
                imageEvent("Assets/images/ders4.1.png", ""),
                longText("satırının tamamı yorumdur. Aşağıdaki satırda ise, // karakterlerinden önceki kısım kod, sonraki kısım ise yorumdur."),
                imageEvent("Assets/images/ders4.2.png", ""),
                longText("Eğer // karakterlerini satırın başına koyarsak, bir komut olan digitalWrite da dahil olmak üzere, tüm satır yorum olarak değerlendirir ve digitalWrite komutunun programa bir etkisi kalmaz."),
                imageEvent("Assets/images/ders4.3.png", ""),
                longText("Eğer doğru şekilde işaretleme yaparsak, // karakterlerinden sonra yazdıklarımız otomatik olarak gri renk olur. Bu yöntem, tek bir satır için geçerlidir. Eğer yazacağımız yorum bir kaç satır sürüyorsa, ya tüm satırların başına // karakterlerini koymalı ya da ikinci işaretleme yöntemini kullanmalıyız."),
                longText("Bir grup satırın tümünü birden yorum haline getirmek için, yazdığımız yazının başına /* karakterlerini, sonuna ise */ karakterlerini koymalıyız. Örneğin, programın hemen başındaki"),
                imageEvent("Assets/images/ders4.4.png", ""),
                longText("satırlarının tamamı yorumdur. Bu kısmın başındaki ve sonundaki karakterlere dikkat edelim."),
                longText("Programdaki yorumları sildiğimiz zaman, aşağıdaki kodları elde ediyoruz. Aslında tüm programın bir kaç satırdan oluştuğunu görüyoruz."),
                imageEvent("Assets/images/ders4.5.png", ""),
                header("Programın zorunlu parçaları- Geçerli en kısa program", 20),
                longText("Yorumları attıktan sonra geri kalan programı ikiye bölebiliriz."),
                imageEvent("Assets/images/ders4.6.png", ""),
                longText("Bu bölümlerden her biri, birer fonksiyonu ifade ediyor. Birinci kısım setup; ikincisi ise loop fonksiyonu."),
                longText("Her iki fonksiyonun da isminin başında 'void' kelimesini görüyoruz. void bize bu fonksiyonun bir sonuç değeri vermediğini söylüyor. Bu tanımladan çok fazla bir şey anlamamış olmanız doğal. Çünkü hala kendi fonksiyonumuzu yazmayı öğrenmedik. Daha sonraki derslerde void’in anlamıyla ilgili detaylı bilgi sahibi olacağız ama şimdilik void'i yazılması zorunlu bir kelime olarak düşünün. void’ten sonra fonksiyonumuzun ismi geliyor. setup ve loop isimli fonksiyonların tüm programlarda bulunması zorunlu."),
                longText("İsimden hemen sonra bir parantez açıp kapıyoruz (). Fonksiyon isimlerinden sonra parantez açıp kapamak da zorunlu bir şey. İçinin boş olması bize fonksiyonun herhangi bir parametre almadığını söylüyor. Ama void gibi, parantez olayını anlama işini de sonraya bırakalım."),
                longText("Her iki fonksiyon için de normal parantezden sonra bir küme işareti görüyoruz. Bu küme işareti, bir kaç satır koddan sonra kapatılıyor. Fonksiyondan sonraki küme işaretleri de zorunlu kısımlar arasında. Küme işaretleri arasında kalan satırlar bizim gerçek kodlarımızı oluşturuyor."),
                longText("Kodlardaki zorunlu kısımları bir araya getirirsek karşımıza aşağıdaki program çıkıyor."),
                imageEvent("Assets/images/ders4.7.png", ""),
                longText("Bu, Arduino için yazabileceğimiz en küçük geçerli program. Ama bu program küme işaretleri arası boş olduğu için hiç bir şey yapmıyor."),
                header("Setup ve Loop Fonksiyonları", 20),
                longText("Yukarıda, her Arduino programında olması gereken zorunlu kısımları bir araya getirdik. En küçük programda dahi, ilkinin ismi setup; ikincisinin ismi loop olan iki fonksiyon görüyoruz."),
                longText("Küme işaretleri arasına yazdığımız tüm kodlar, yukarısında ismi yazan fonksiyona ait oluyor. Yani, ilk programımızı hatırlarsak,"),
                imageEvent("Assets/images/ders4.8.png", ""),
                longText("satırı setup fonksiyonuna ve"),
                imageEvent("Assets/images/ders4.9.png", ""),
                longText("satırları ise loop fonksiyonuna ait. Şimdi bu fonksiyonların ne olduğunu öğrenelim."),
                longText("setup fonksiyonu Arduino ilk çalıştığında veya reset atıldığında bir defalığına çalıştırılan bir fonksiyon. İçerisindeki kodlar bir defa işleniyor ve bir daha buraya dönülmüyor. setup fonksiyonunun içerisinde Arduino’nun başlangıç ayarlarını yapıyoruz. Örneğin, projemizde bir sensörden veri almak ve bir LED yakmak istiyorsak, sensörün bağlı olduğu portu giriş, LED’in bağlı olduğu portu çıkış olarak yapılandırmamız gerekiyor ve bu işlemleri bir defa yapmamız yeterli. Bu yüzden, ilgili kodları setup içerisine yazıyoruz."),
                longText("loop fonksiyonu ise içerisine yazılan kodları sürekli tekrar tekrar, taa ki Arduino’nun gücü kesilene kadar işlediği bir fonksiyon. Bu nedenle esas işi yapan kodları loop içerisine yazıyoruz."),
                longText("Bu sayfadaki programda, setup ve loop fonksiyonları içerisinde toplamda üç çeşit komutla karşılaşıyoruz: pinMode, digitalWrite ve delay. Şimdi sırasıyla bu komutların ne işe yaradığına bakalım."),
                header("pinMode Komutu", 20),
                longText("pinMode komutu, bir portu giriş veya çıkış haline getirmek için kullanılır. Portlar Arduino’nun dış dünyayla olan bağlantılarıdır. Aşağıdaki fotoğrafta, sağda bulunan ve yanında sayı yazan girişler (0’dan 13’e kadar) dijital portlardır. Solda bulunan ve yanında A0, A1, A2, A3, A4 ve A5 yazan girişler ise analog portlardır."),
                imageEvent("Assets/images/ders4.10.jpg", ""),
                longText("Dijital bir port yalnızca 0 ve 1’lerden anlar ve 0 ve 1’lerle konuşur. 0, Arduino Uno için 0V, 1 ise 5V anlamına gelir. Bu nedenle, dijital bir port yalnızca 0V veya 5V voltaj değerlerini anlar ve bu değerleri çıkış olarak verebilir. Analog portlar ise 0V ile 5V arasındaki değerleri de anlayabilir."),
                longText("Dijital bir port, aşağıdaki şemada gösterildiği gibi bir anda ya giriş, ya da çıkış olabilir. Eğer portu kullanarak dış devrede ne olduğunu anlayacaksak veya bir sensörden veri alacaksak, portu giriş olarak yapılandırmalıyız. Örneğin, Arduino’ya bağladığımız bir butonun basılı olup olmadığını anlamak için ilk olarak bağlı olduğu portu giriş olarak seçmemiz gerekir. Eğer, Arduino’dan dışa veri aktaracaksak veya sinyal göndereceksek, ilgili portu çıkış yapmamız gerekir. Örneğin, LED yakmak için LED’i bağladığımız portun çıkış olması gerekir."),
                longText("Bu uygulamada, bir adet LED olduğundan ve bu LED’i yakmak istediğimizden, bağlı olduğu portu pinMode komutunu kullanarak çıkış yapıyoruz."),
                imageEvent("Assets/images/ders4.11.jpg", ""),
                longText("setup fonksiyonu içerisine yazdığımız"),
                imageEvent("Assets/images/ders4.12.png", ""),
                longText("satırında, pinMode komutunun yanında parantez içerisine alınmış ve virgülle ayrılmış iki değer görüyoruz. Parantez içerisine alınmış bu değerlerin her biri, yanındaki komutun parametreleri oluyor. Her bir parametere, bir diğerinden virgül ile ayrılıyor. Buna göre, pinMode komutu 2 parametre alıyor. Bu parametrelerden biri 13 sayısı diğeri ise OUTPUT."),
                longText("13 sayısı, giriş veya çıkış yapacağımız portun numarasını gösteriyor. Sağdaki bulunan dijital portların numaraları 0’dan 13’e kadardı. Burada, ilk parametere için 13 yazarak, yanında 13 yazan portla ilgili bir işlem yapacağımızı belirtmiş oluyoruz. İkinci parametre ise, bu portun giriş mi yoksa çıkış mı olacağını belirtiyor. Eğer ilgili port giriş olacaksa INPUT, çıkış olacaksa OUTPUT yazıyoruz. Kısacası,"),
                imageEvent("Assets/images/ders4.13.png", ""),
                longText("komutu, 13 numaralı dijital portu çıkış olarak yapılandırıyor."),
                longText("Uygulamamızda LED’in bağlı olduğu portu her zaman LED yakmak için kullanacağımızdan, bu portun durumunu değiştirmeyeceğiz. Yani, 13 numaralı port için bir daha pinMode komutunu kullanmamız gerekmeyecek. Bu nedenle, uygulamamızda pinMode komutunu sadece setup içerisine yazıyoruz."),
                header("Örnekler:", 20),
                imageEvent("Assets/images/ders4.14.png", ""),
                longText("pinMode komutunun en sonunda kullanılan noktalı virgül zorunlu bir işarettir. Sona noktalı virgül konulmazsa program hata verir."),
                header("digitalWrite Komutu", 20),
                longText("Yukarıda, setup fonksiyonu içerisindeki tek komut olan pinMode’u gördük. pinMode kullanarak 13 numaralı dijital portu çıkış haline getirdik. Daha önce çıkış için olan bir port için iki seçenek olduğunu görmüştük: çıkış-0 ve çıkış-1. Eğer bir port çıkış modunda çalışıyorsa ve 0 ise, bu porttan 0V çıkış verildiği anlamına geliyor. Eğer çıkış-1 ise, çıkıştan 5V vermiş oluyoruz. 13 numaralı porta bağlı olan LED’i yakabilmek için bu portu 5V verecek şekilde ayarlamalıyız. Söndürmek istediğimizde ise porttan 0V vermeliyiz. Çıkış olarak seçilmiş dijital bir portun voltajını değiştirmenin yolu dijitalWrite komutunu kullanmaktan geçiyor. loop fonksiyonu içerisinde iki farklı yerde bu komutu kullanıyoruz."),
                imageEvent("Assets/images/ders4.15.png", ""),
                longText("Bu komutun yanındaki parantezin içerisinde iki parametre görüyoruz. Birinci parametre her iki komutta da 13 olarak seçilmiş. Ama eğer ikinci parametreye bakarsak, farklı iki değer görüyoruz: HIGH ve LOW. İlk parametre olan 13, pinMode’daki ile aynı şekilde hangi dijital portla ilgili işlem yapacağımızı belirtiyor. İkinci parametre ise, çıkış olarak ne seçeceğimizi gösteriyor. İlk komuttaki HIGH, 13 numaralı dijital portu çıkış-1 yapıyor, yani bu porttan 5V’luk bir çıkış verilmesini sağlıyor. İkincideki LOW ise, 13 numaralı portu çıkış-0 yapıyor, yani çıkış olarak 0V veriliyor."),
                header("Örnek:", 20),
                imageEvent("Assets/images/ders4.16.png", ""),
                longText("pinMode’da olduğu gibi dijitalWrite komutunun sonuna da noktalı virgül ekliyoruz."),
                longText("Programın tamamını anlayabilmek için son komutumuz olan delay’e de bir göz atmamız gerekiyor."),
                header("delay Komutu", 20),
                longText("delay komutu Arduino’nun bir sonraki komuta geçmeden önce bir süre durup beklemesini sağlıyor. Bekleme süresi ise parantez içerisinde yazılan parametreyle belirleniyor. Bu parametrenin bir tamsayı olarak seçilmesi gerekiyor. Ondaliklı bir sayı yazacak olursanız hata vermez ama yazdığınız sayının sadece tam kısmını alır. Buraya yazılan sayı milisaniye cinsinden bekleme süresini gösteriyor (1 milisaniye, 1 saniyenin 1000’de biri yapıyor). Yani içerisine 500 yazarsak yarım saniye, 2000 yazarsak 2 saniye bekliyor. delay komutunun sonuna da noktalı virgül koyuyoruz."),
                header("Programın Çalışma Mantığı", 20),
                longText("Şimdi tüm komutları öğrendiğimize göre, artık programın çalışma mantığına bakabiliriz."),
                longText("loop fonksiyonu içerisinde sırasıyla şu dört satırı görüyoruz:"),
                imageEvent("Assets/images/ders4.17.png", ""),
                longText("Arduino programı çalışırken satırları sırasıyla işler. Yani ilk olarak birinci satırda gördüğümüz"),
                imageEvent("Assets/images/ders4.18.png", ""),
                longText("komutu işlenecektir. Bu satırda, yukarıda öğrendiğimiz gibi, 13 numaralı dijital portu çıkış yapıyoruz ve bu porta bir LED bağlı olduğundan, LED’in yanmasını sağlıyoruz. Program, ilk satırı işleyip LED’i yaktıktan sonra ikinci satır olan"),
                imageEvent("Assets/images/ders4.19.png", ""),
                longText("komutunu işleme alır. Yalnız bu satır bir sonrakine geçmeden önce 1000 milisaniye (yani 1 saniye) beklemeyi sağlıyor. Böylece sonraki satıra geçmeden önce 1 saniye boyunca 13 numaralı porta bağlı LED yanık kalıyor."),
                longText("Üçüncü satırda"),
                imageEvent("Assets/images/ders4.20.png", ""),
                longText("komutu, 13 numaralı portu çıkış-0 yapıp LED’i söndürüyor."),
                longText("Son satırımız"),
                imageEvent("Assets/images/ders4.19.png", ""),
                longText("ise LED’in bir saniye boyunca sönük kalmasını sağlıyor."),
                longText("Şu ana kadar olan işlemleri özetleyecek olursak 13 numaralı porta bağlı LED 1 saniye yanık kaldı ve sonra 1 saniye boyunca sönük kaldı."),
                longText("Bu dört satırın tümü işlendiğinde loop fonksiyonu içerisinde olduğumuzdan ilk satıra tekrar geri dönülüyor. Böylece tekrar LED bir saniye boyunca yanık, sonraki 1 saniye boyunca sönük kalıyor. Ve bu işlem Arduino’nun gücü kesilene kadar devam ettiğinden, LED 1’er saniye aralıklarla sürekli yanıp sönüyor."),
                header("Notlar", 30),
                header("Not 1:", 20),
                longText("Bir portun 0 veya 1 olma durumu digitalWrite ile değiştirilene kadar hep aynı kalır. Örneğin,"),
                imageEvent("Assets/images/ders4.21.png", ""),
                longText("programında setup içerisinde 13 numaralı port çıkış-1 yapılmıştır ve loop içerisinde herhangi bir komut bulunmamaktadır. Bu nedenle Arduino setup içerisindekileri işleyip loop’a girer ve hiç bir şey yapmadan loop içerisinde kalır. Bu programı yüklersek 13’e bağlı olan LED sürekli yanık kalır."),
                header("Not 2:", 20),
                longText("Programda ilk olarak setup içerisindeki komutlar işlenir, sonrasında ise program her zaman loop içerisinde kalır."),
                header("Not 3:", 20),
                longText("pinMode, digitalWrite ve delay hem setup hem de loop içerisinde kullanılabilir."),
                imageEvent("Assets/images/ders4.22.png", ""),
                longText("Yukarıdaki program LED’i 1 saniyeliğine yanık tutar sonra söndürür. setup’tan sonra program loop içerisinde kalacağından ve loop içinde bir komut olmadığından, LED söndükten sonra sürekli bu durumda kalır."),
                













              ],
            ),
          ],
        ),
      ),
    );
  }
}

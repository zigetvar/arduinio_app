import 'package:arduinio_app/component/header.dart';
import 'package:arduinio_app/component/imageEvent.dart';
import 'package:arduinio_app/component/longtext.dart';
import 'package:flutter/material.dart';

class Ders3 extends StatelessWidget {
  const Ders3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 228, 186, 3)),
      home: Scaffold(
        body:ListView(
          children: [
            Column(
              children: [
                header("GEREKLİ MALZEMELER", 30),
                longText("Öncelikle, bu derste hangi malzemeleri kullanacağımızı görelim."),
                imageEvent("Assets/images/ders3.png", ""),
                header("LED YAKMA DEVRESİ", 30),
                longText("Program yazma kısmına geçmeden önce gerekli devreye bir göz atalım. Bu devre için sadece iki elektronik parça kullanıyoruz: bir adet LED ve bir adet 150 Ω direnç. Kuracağımız devrenin şemasını aşağıda görebilirsiniz. Bu devre ile LED Yakma yazımızdaki devre birbirine çok benziyor. Bu ikisinin tek farkı, burada LED’i güç kaynağına değil de Arduino’nun dijital portuna bağlamamız."),
                imageEvent("Assets/images/ders3.2.jpg", "Devre Şeması"),
                longText("LED’i yakabilmek için, Arduino’nun dijital portunda 5V gerilim oluşur. Bu voltaj tek bir LED için biraz yüksek bir değer. LED üzerine düşen voltajı düşürmek ve aynı zamanda akımı sınırlandırmak için bir de direnç kullanıyoruz."),
                longText("Kırmızı LED normal parlaklığında yanarken üzerindeki voltaj düşümü 2V’tur (Bknz. LED’in Çalışma Voltajı). 5V’un geriye kalan 3V’u direnç üzerinde kalır. Böylece hem direnç hem de LED’ten geçen ortak akım 3V/150Ω=20mA olur. Daha yüksek bir direnç takmak, akımı azaltıp LED’in daha sönük yanmasını sağlayacaktır. LED’in parlaklığı ile ilgili detaylı bilgiyi LED’in parlaklığı bağlantısında bulabilirsiniz."),
                longText("Bu devrede LED’in yönüne dikkat etmeliyiz. LED, yönü olan bir elektronik parçadır. Yani doğru yönde takmazsak LED yanmaz. LED’in yönünü bulmak için bir kaç yöntem bulunmakta (detaylar için LED BACAKLARI - ANOT VE KATOT dosyasını okuyabilirsiniz.) ama bunlardan en kolayı bacakların uzunluklarına bakmak."),
                imageEvent("Assets/images/ders3.3.jpg", "LED'in Bacakları"),
                longText("LED’lerin bacaklarından biri diğerinden biraz daha uzun olur. Uzun olan bacak anottur, kısa olan ise katot. LED’in yanması için akımın anottan katota doğru akması gerekir. Buradaki güç kaynağımız Arduino’nun portu olduğundan, LED’in anot bacağını (uzun olan bacağı) Arduino’nun portuna bağlamalıyız. LED’in diğer bacağını ise direnç tarafına bağlamalıyız."),
                imageEvent("Assets/images/ders3.4.jpg", "LED Yakma Devresi"),
                longText("Yukarıda kurduğumuz gerçek devreyi görebilirsiniz. Arduino üzerinde devre kuracak bir mekanizma olmadığı için, LED ve direnci küçük bir devretahtası üzerine yerleştiriyoruz. LED’in anot bacağı ve Arduino’nun 13. dijital portunu birbirine bağlamak için iki tarafı da erkek olan bir bağlantı kablosu kullanıyoruz. LED’in katot tarafı ile direncin bir bacağını devretahtasında aynı satırdaki farklı deliklere sokarak birbirine bağlamış oluyoruz . Direncin diğer bacağını ise, gene iki tarafı da erkek olan bir bağlantı kablosu ile Arduino’nun GND çıkışına bağlıyoruz."),
                longText("Gerekli devreyi öğrendiğimize göre artık programlama kısmına başlayabiliriz."),
                header("ARDUİNO İLE LED YAKALIM", 30),
                longText("Bu kısımda üç şey yapacağız:"),
                longText("1)İlk olarak, Arduino’nun örnekler kısmındaki “Blink” programını yükleyeceğiz; ama bu defa yukarıda anlatılan devreyi kurarak kendi taktığımız LED’i yakıp söndüreceğiz."),
                longText("2)Daha sonra, LED’i yakmak için farklı portlar kullanacağız"),
                longText("Son olarak ise, farklı dirençler kullanıp, direnç değerinin LED’in parlaklığı üzerindeki etkisine bakacağız."),
                header("LED Yakma", 22),
                longText("İlkiyle başlayalım. Bir önceki derste, “Blink” örneğini Arduino’ya yüklemeyi öğrenmiştik. Blink örneğinin kodlarını aşağıda görebilirsiniz."),
                imageEvent("Assets/images/ders3.5.png", ""),
                longText("Bu örneği Arduino’ya tekrar yükleyip aşağıdaki devreyi kuralım. Eğer, en son bu programı yüklediyseniz tekrar yükleme yapmanıza gerek yok, çünkü gücünü kezseniz dahi yüklediğiniz program Arduino’dan silinmez. Örneğin, bir yıl sonra ilk kez güç verdiğinizde gene içine en son yüklediğiniz programı çalıştıracaktır."),
                imageEvent("Assets/images/ders3.4.jpg", "LED Yakma Devresi"),
                longText("Böylece Arduino ve devre elemanlarından oluşan ilk devremizi kurmuş oluyoruz. Bu örneği çalıştırdığımızda sadece Arduino üzerindeki küçük LED değil, aynı zamanda devre tahtasına yerleştirdiğimiz LED’de yanıp sönecektir."),
                header("Çıkış Portunu Değiştirme", 22),
                longText("Programda üç satırda 13 sayısını görmekteyiz."),
                longText("pinMode(13, OUTPUT);"),
                longText("digitalWrite(13, HIGH);"),
                longText("digitalWrite(13, LOW);"),
                longText("Üç satırda da 13 yerine 12 yazıp, programı tekrar Arduino’ya yükleyelim. Devrede bir değişiklik yapmadıysak, LED’in yanıp sönmeyi bıraktığını görürüz. Çünkü, artık çıkışı 13 numaradan değil, 12 numaradan veriyoruz. LED’in yanıp sönebilmesi için uzun bacağı 12 numaraya bağlamalıyız."),
                imageEvent("Assets/images/ders3.7.jpg", "12. Port ile LED Yakma Devresi"),
                header("Farklı Dirençler Takarsak Ne Olur?", 22),
                longText("Son olarak, direnç değerini değiştiriyoruz. Şu ana kadar LED yakmak için 150 Ω direnç kullanmıştık. Şimdi programı değiştirmeden, 150 Ω yerine 1 kΩ direnç kullanalım. 1 kΩ daki k, bin sayısını ifade eder (metre, kilometre ilişkisindeki gibi), yani 1 kΩ = 1000 Ω'dur, bir önceki kullandığımız direncin yaklaşık yedi katı. Bu da, akıma karşı yedi kat fazla direnç gösterileceğini ve akımın bir öncekinden çok daha az geçeceğini gösterir. Programda bir değişiklik yapmadığımız için LED yanıp sönmeye devam edecektir. Yalnız, LED üzerinden geçen akım azaldıkça, parlaklığı da azalır. Bu nedenle 1 kΩ direnç kullanıldığında LED'in çok daha sönük yandığını görürüz. Fotoğraftan çok belli olmuyor olabilir, ama denediğinizde siz de aradaki farkı rahatlıkla görebilirsiniz."),
                imageEvent("Assets/images/ders3.8.jpg", "1 kΩ Direnç Kullanıldığında"),





              ],
            ),
          ],
        ) ,
      ),
    );
  }
}

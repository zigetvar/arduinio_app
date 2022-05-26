import 'package:arduinio_app/component/header.dart';
import 'package:arduinio_app/component/imageEvent.dart';
import 'package:arduinio_app/component/longtext.dart';
import 'package:flutter/material.dart';

class Ders6 extends StatelessWidget {
  const Ders6({Key? key}) : super(key: key);

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
                header("LED UYGULAMALARI-2", 30),
                longText("Bu derste, LED’lerle ilgili uygulamalara devam ediyoruz. Bu defa, makam ve polis arabalarındaki çakarlardan yapıyoruz."),
                header("KULLANILAN MALZEMELER", 25),
                longText("Bu derste, 1 kırmızı, 1 mavi LED ve akım sınırlandırmak için 150Ω ve 75Ω dirençler kullanıyoruz."),
                imageEvent("Assets/images/ders6.png", ""),
                header("DEVRE", 25),
                imageEvent("Assets/images/ders6.2.jpg", ""),
                longText("Deneyde iki adet LED yakıp söndüreceğimiz için, Arduino’nun iki dijital portunu kullanacağız. Biz burada kırmızı LED için 2. ve mavi LED için 3. dijital portu seçiyoruz. Daha önceki devrelerde olduğu gibi, LED’lerin anot (uzun olan) bacağını Arduino’nun dijital portuna, katot (kısa) olan bacağını dirence bağlıyoruz. Devreyi tamamlamak için, dirençlerin LED’e bağlı olmayan bacaklarını ise Arduino’nun toprağına (GND) bağlıyoruz."),
                longText("Arduino’nun dijital portu çıkış-1 olduğu zaman bu portta 5V gerilim oluşur, ancak LED için çalışma voltajı 2V’tur. Akımı 20mA ile sınırlandırmak için (5V-2V)/20mA=150Ω direnç kullanıyoruz. Mavi LED için ise çalışma voltajı 3.5V’tur. Mavi LED üzerinden de aynı miktar akım geçmesi için (5V-3.5V)/20mA=75Ω’luk direnç bağlıyoruz."),
                longText("Aşağıda, kurulmuş gerçek devreyi görebilirsiniz."),
                imageEvent("Assets/images/ders6.3.jpg", ""),
                header("PROGRAM", 25),
                longText("Biri mavi, diğeri kırmızı iki LED kullanarak makam ve polis arabalarında bulunan çakarlardan yapıyoruz. Önce hızlı bir şekilde kırmızı LED’i daha sonra mavi LED’i iki kere hızlıca yakıp söndürüyoruz. Aşağıda Arduino’ya yükleyeceğimiz kodları bulabilirsiniz."),
                imageEvent("Assets/images/ders6.4.png", ""),
                longText("Şimdi bu kodları satır satır inceleyelim."),
                header("setup", 25),
                longText("LED yakma deneyinin aksine, bu uygulamanın setup fonksiyonunda iki satır kodla karşılaşıyoruz. Bu örnekte, iki adet LED’imiz olduğu için bunlardan herbirini farklı bir porta bağlamamız gerekiyor. Biz burada 2 ve 3 numaralı portları kullanıyoruz. 2 numaraya kırmızı LED’i, 3 numaraya ise mavi LED’i bağlıyoruz. Bu nedenle hem 2 hem de 3 numaralı portları çıkış yapmalıyız. setup() içerisinde birinci satırda kırmızı LED’i bağlayacağımız portu, ikinci satırda ise mavi LED’i bağlayacağımız portu çıkış haline getiriyoruz."),
                header("loop", 25),
                longText("loop fonksiyonu içerisinde sürekli tekrarlanmasını istediğimiz olayları yazıyoruz. Burada özetle istediğimiz şey, kırmızı LED’in iki kere yanıp sönmesi, ardından da mavi LED’in iki kere yanıp sönmesidir."),
                longText("loop içerisindeki ilk yedi satırda, kırmızı LED’i 50’şer milisaniye aralıklarla iki kere yakıp söndürüyoruz."),
                imageEvent("Assets/images/ders6.5.png", ""),
                longText("Programda"),
                imageEvent("Assets/images/ders6.6.png", ""),
                longText("kırmızı LED’in yanmasını,"),
                imageEvent("Assets/images/ders6.7.png", ""),
                longText("ise bu LED’in sönmesini sağlıyor."),
                longText("Bu satırların aralarına yazdığımız,"),
                imageEvent("Assets/images/ders6.8.png", ""),
                longText("komutu, LED’lerin durumlarını değiştirmeden 50 milisaniye kalmalarını sağlıyor."),
                imageEvent("Assets/images/ders6.9.jpg", ""),
                longText("Sekizinci satır olarak yazdığımız,"),
                imageEvent("Assets/images/ders6.10.png", ""),
                longText("mavi LED yanıp sönmeye başlamadan önce yarım saniye durulmasını sağlıyor."),
                longText("Sonraki yedi satırda aynı işlemi mavi LED için tekrarlıyoruz. Aşağıdaki kodlar, mavi LED’in iki kere yanıp sönmesini sağlıyor. Bu sırada kırmızı LED ile yaptığımız son işlem bu LED’i söndürmek olduğundan, mavi LED yanıp sönerken kırmızı LED sönmüş halde bekliyor."),
                imageEvent("Assets/images/ders6.11.png", ""),
                imageEvent("Assets/images/ders6.12.jpg", ""),
                longText("loop içerisindeki son satır ise, bir sonraki adımda kırmızı LED’i yakıp söndürmeden önce yarım saniye beklememizi sağlıyor."),
                header("PORT NUMARASI YERİNE İSİM KULLANMA", 25),
                longText("Uzun programlar için, hangi porta ne bağladığımızı hatırlamamız zor olabileceğinden, portlara isim verip, numara yerine bu isimleri kullanabiliriz."),
                longText("Örneğin, aşağıdaki program yukarıdaki ile aynı şekilde çalışacaktır."),
                imageEvent("Assets/images/ders6.13.png", ""),
                longText("pinMode ve digitalWrite içerisinde 2 ve 3 yerine bu defa sırasıyla Kirmizi ve Mavi kullanıyoruz. Bu isimleri kullanabilmemizin nedeni, programın ilk iki satırındaki tanımlamalardır."),
                imageEvent("Assets/images/ders6.14.png", ""),
                longText("Kirmizi ve Mavi isimlerinin başında bulunan int, bu isimlerin tam sayıları olduğunu ifade eder. Bu iki satırla programa Kirmizi ve Mavi’nin birer sayı olduğunu ve sırasıyla değerlerinin 2 ve 3 olduğunu anlatmış oluyoruz. Bu iki satırdan sonra, herhangi bir fonksiyon içerisinde 2 numaralı portu ifade etmek için Kirmizi, 3 numaralı portu ifade etmek için ise Mavi isimlerini kullanabiliriz."),
                





              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:arduinio_app/component/header.dart';
import 'package:arduinio_app/component/imageEvent.dart';
import 'package:arduinio_app/component/longtext.dart';
import 'package:flutter/material.dart';

class Ders5 extends StatelessWidget {
  const Ders5({ Key? key }) : super(key: key);

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
                header("LED UYGULAMALARI-1", 30),
                longText("Önceki iki derste Arduino kullanarak LED yakmayı öğrendik. Bu derste LED sayısını artırarak, genelde yılbaşlarında süs olarak kullanılan kayan ışık uygulamasını yapacağız."),
                header("KULLANILAN MALZEMELER", 25),
                imageEvent("Assets/images/ders5.png", ""),
                header("DEVRE", 25),
                longText("Önce kullanacağımız devreye bir göz atalım."),
                imageEvent("Assets/images/ders5.1.jpg", ""),
                longText("8 adet LED yakıp söndüreceğimizden, 8 tane dijital port (2 numaradan 9 numaraya kadar olan portlar) kullanıyoruz. Her bir porta bir LED’in anot ucunu (uzun bacağını) bağlıyoruz. Tüm LED’lerin katot uçlarına (kısa bacaklarına) ise, akımı sınırlandırması için birer adet 150Ω'luk direnci bağlıyoruz. Her bir LED için ayrı bir direnç kullanmalıyız. Arduino’dan sinyal geldiğinde LED ve direnç çiftleri üzerinden akım geçebilmesi için, dirençlerin açıkta kalan bacaklarını Arduino’nun toprağına (GND) bağlamalıyız. Eğer, LED’e bağlı portlardan birinden 5V gelirse yaklaşık 2V’u LED, geri kalan 3V’u ise direnç üzerinde olacaktır. Böylece LED yanarken üzerinden 3V/150Ω=20mA’lik bir akım geçer ve bu akım, LED’in parlak yanabilmesi için yeterlidir. Aşağıda, devrenin kurulmuş halini görebilirsiniz."),
                imageEvent("Assets/images/ders5.3.jpg", ""),
                header("PROGRAM", 25),
                imageEvent("Assets/images/ders5.4.png", ""),
                header("setup", 25),
                longText("Yukarıdaki program, bir önceki dersteki LED yakıp söndürme programına oldukça benziyor. Tek farkı bir yerine 8 adet LED kullanmamız. Arduino’ya 8 adet LED bağladığımız için, dijital çıkışlardan seçtiğimiz 8 tanesini setup içerisinde pinMode komutuyla çıkış haline getiriyoruz."),
                longText("Örneğin,"),
                longText("pinMode(2, OUTPUT);\nsatırı 2 numaralı dijital portu çıkış yapıyor."),
                header("loop", 25),
                longText("Portlarla ilgili yapılandırmayı bitirdikten sonra, programın yapacağı esas işi loop fonksiyonu içerisine yazıyoruz. loop fonksiyonu içerisindeki ilk 8 satırda, 2., 4., 6. ve 8. dijital portları 1 yaparak bu portlara bağlı olan LED’lerin yanmasını sağlıyoruz. Yine aynı satırlar içerisinde 3., 5., 7. ve 9. portları 0 yapıp, bu portlara bağlı olan LED’leri söndürüyoruz. Bu işlemleri yaptığımız zaman LED’ler aşağıdaki resimde gösterildiği durumda oluyor."),
                imageEvent("Assets/images/ders5.5.jpg", ""),
                longText("Bir sonraki satırdaki"),
                imageEvent("Assets/images/ders5.6.png", ""),
                longText("Arduino’nun yarım saniye boyunca portlarda bir değişiklik yapmadan beklemesini sağlıyor."),
                longText("loop fonksiyonu, içindeki satırlar işlendikten sonra her zaman başa döndüğü için, yarımşar saniye aralıklarla çift sayılı ve tek sayılı LED’ler sürekli sırayla yanıp sönüyor."),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
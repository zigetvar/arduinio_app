import 'package:arduinio_app/component/header.dart';
import 'package:arduinio_app/component/imageEvent.dart';
import 'package:arduinio_app/component/longtext.dart';
import 'package:flutter/material.dart';

class Ders2 extends StatelessWidget {
  const Ders2({Key? key}) : super(key: key);

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
                header("ARDUINO PROGRAMINI NASIL KURARIM?", 30),
                longText("Arduino’nun nasıl hareket edeceğini içerisine yüklenen program belirliyor. Bu programı bilgisayarda oluşturup, gene bilgisayar yardımıyla Arduino’ya atıyoruz. Bu nedenle, ilk yapmamız gereken şey Arduino’ya program yazabilmek için gerekli yazılımı bilgisayara kurmak. Arduino yazılımını tam sürümünü ücretsiz indirip kurabilirsiniz. Bu kısımda adım adım programın nasıl kurulduğunu göreceğiz."),
                header("ADIM-1 ARDUINO WEB SİTESİ", 22),
                longText("İlk olarak https://www.arduino.cc/en/Main/Software bağlantısına giriyoruz ve karşımıza aşağıdaki gibi bir ekran çıkıyor. Yazılımın şu anki sürümü 1.6.9’muş. Siz girdiğiniz zaman daha yüksek bir versiyonla karşılaşabilirsiniz, çünkü yazılım sürekli güncelleniyor. Bu ekranda sağda kırmızı dikdörtgen içerisine aldığımız yerde, size işletim sisteminizi soruyor. Eğer Windows kullanıyorsanız, en üstteki “Windows Installer”ı seçebilirsiniz."),
                imageEvent("Assets/images/ders2.jpg", "Anasayfa"),
                header("ADIM-2 ARDUNINO PROGRAMINI İNDİRME", 22),
                longText("Yazılımı indirmek için gerekli bağlantıyı tıklayınca karşımıza bağış yapabilmek için bir ekran çıkıyor. Bağış yapmak zorunlu değil. Eğer bağış yapmadan programı indirmek indirmek istiyorsak “JUST DOWNLOAD” yazan yere tıklamalıyız. Bu bağlantıya tıklayınca 80-90MByte’lık program inmeye başlıyor."),
                imageEvent("Assets/images/ders2.2.jpg", ""),
                header("ADIM 3-KURULUM", 22),
                longText("İndirilen “exe” uzantılı (sonunda .exe yazan) dosyaya çift tıklıyoruz ve karşımıza Lisans Sözleşmesi çıkıyor. Bu sözleşmeyi kabul etmemiz lazım yoksa programı yüklemez. O yüzden “I Agree” yazan butona tıklıyoruz."),
                imageEvent("Assets/images/ders2.3.jpg", ""),
                longText("Bir sonraki pencerede, bir dizi onay kutucuğuyla karşılaşıyoruz. Bunların tamamı karşımıza seçili halde çıkıyor. İlki Arduino yazılımını yükleme seçeneği olduğundan bunu değiştiremiyoruz, ama daha sonraki kutucuklarda sırasıyla"),
                longText("1)USB sürücüsünü (driver) yükleme,2)Başlangıç Menüsünde kısayol yaratma,3)Masaüstünde kısayol yaratma ve,4).ino dosyalarıyla ilişkilendirme"),
                longText("seçenekleri var. Bunlardan sürücü ile ilgili olan kesinlikle seçili olmalı. Kısayollar size kalmış bir şey. Sonuncusunun seçili olması ise, oluşturduğunuz dosyaya tıkladığınızda direk Arduino yazılımı ile açılmasını sağlar."),
                longText("Seçimlerle uğraşmak istemiyorum derseniz direk “Next” yazan butonu tıklayabilirsiniz."),
                imageEvent("Assets/images/ders2.4.jpg", ""),
                longText("Yükleme yapmadan önceki son pencerede, Arduino yazılımını bilgisayara kuracağımız yeri soruyor. Eğer bu konuda özel bir tercihiniz yoksa, “Install” butonuna tıklayarak yüklemeyi başlatabilirsiniz. Sizin için otomatik olarak bir klasör oluşturuluyor"),
                imageEvent("Assets/images/ders2.5.jpg", ""),
                longText("Böylece yükleme işlemine başlıyoruz. Bu işlem bilgisayarınızın hızına göre bir kaç dakika alabilir."),
                imageEvent("Assets/images/ders2.6.jpg", ""),
                longText("Yükleme bittiği zaman aşağıdaki pencere açılacaktır. Burada, Arduino sürücüsünü yüklemek isteyip istemediğiniz soruyor. Arduino’yu bilgisayarın görmesi için bu sürücüye ihtiyacımız olacak. Bu nedenle “Yükle” butonuna tıklıyoruz."),
                imageEvent("Assets/images/ders2.7.jpg", ""),
                longText("Sürücü yükleme işlemi bittiğinde, yükleme penceresinde “Completed” yazısını göreceğiz ve sağ altta “Close” butonu aktif olacak. “Close” butonuna tıklayıp yüklemeyi bitiriyoruz."),
                imageEvent("Assets/images/ders2.8.jpg", ""),
                header("ARDUINO’YA NASIL PROGRAM ATARIM?", 30),
                longText("Bu bölümde, Arduino Uno’ya program atmayı (yüklemeyi) öğreneceğiz. İlk olarak, Arduino’yu USB portlarından birine bağlayıp, Arduino yazılımını açıyoruz. Birkaç saniyeliğine aşağıdaki açılış ekranını gördükten sonra programımız açılıyor."),
                imageEvent("Assets/images/ders2.9.jpg", ""),
                longText("Arduino’nun programı da kendi gibi sade. Programı açtığımızda aşağıdaki ekranla karşılaşıyoruz."),
                imageEvent("Assets/images/ders2.10.jpg", ""),
                longText("ve onun da altında program yazacağımız beyaz alanla karşılaşıyoruz."),
                imageEvent("Assets/images/ders2.13.jpg", ""),
                longText("Beyaz alanın altındaki siyah bölge ise programı derlerken veya Arduino’ya atarken verilecek hata ve uyarıların gösterildiği konsolu oluşturuyor. Pencerenin en altında, programın varsaydığı Arduino Çeşidi ve bağlı olduğu COM portunu görebiliyoruz."),
                longText("Eğer pencerenizin en altındaki bu kısımda “Arduino/Genuino Uno” yazmıyorsa, Araçlar menüsünü kullanarak doğru kartı seçebilirsiniz."),
                imageEvent("Assets/images/ders2.14.jpg", ""),
                longText("Araçlar menüsündeki kart sekmesine geldiğimizde karşımıza 20 kartlık bir seçenek bloğu çıkıyor, bunlar içerisinden Arduino/Genuino Uno’yu seçmemiz gerekiyor. Bir sonraki yapmamız gereken işlem ise portun doğru olup olmadığını kontrol etmek. Gene Araçlar menüsünde bu defa Port sekmesine geldiğimizde pencerenin altında yazan COM portunun (ekran görüntüsünde COM5) yanında seçtiğimiz kartın yazıyor olması gerekiyor. Eğer Arduino Uno farklı bir COM port yanında görünüyorsa onu seçmeliyiz. Bilgisayarın aynı USB portunu kullandığınız halde Micro USB kablosunu söküp tekrar taktığınızda bu numara değişebilir. Kontrol etmekte fayda var."),
                imageEvent("Assets/images/ders2.15.jpg", ""),
                longText("Eğer bu adımda bir problem yoksa bilgisayarımız Arduino’yu görmüş ve doğru COM ile bağlantı yapmış demektir. Böylece yazılımımızın Arduino’ya program atmaya hazır olduğunu anlıyoruz."),
                longText("Arduino’ya program atabilmek için öncelikle elimizde yazılmış bir program olması gerekiyor. Daha sonraki derslerde LED’lerle, motorlarla vs ilgili uygulamaları yaparken program yazmayı öğreneceğiz. Ama şimdilik yazılımın içinde hazır gelen bir örnek programı kullanacağız. Bunun için Dosya menüsünden Örnekler’in üzerine geliyoruz. Açılan yan pencerede 01.Basics bölümünün üzerine geliyoruz. 01.Basics içerisinden ise, Blink örneğini seçiyoruz."),
                imageEvent("Assets/images/ders2.16.jpg", ""),
                longText("Blink örneğini seçtiğimizde yeni bir pencerede bu örneğin kodları açılıyor. Artık istersek sketch ile başlayan otomatik oluşturulmuş örneği kapatabiliriz. Programı Arduino’ya atmak için sadece tek bir adımımız kaldı."),
                imageEvent("Assets/images/ders2.17.jpg", ""),
                longText("Blink programını Arduino’ya atmak için aşağıdaki fotoğrafta kırmızı daire içerisine aldığımız, üzerinde sağa doğru ok olan butona tıklıyoruz."),
                imageEvent("Assets/images/ders2.18.jpg", ""),
                longText("Böylece, konsolun hemen üzerindeki mavi alanda derleme ve yükleme işlemlerine dair ilerlemeyi görmeye başlıyoruz."),
                imageEvent("Assets/images/ders2.19.jpg", ""),
                longText("Program yüklenirken yanında RX ve TX yazan LED’lerin yanıp söndüğünü görebilirsiniz."),
                imageEvent("Assets/images/ders2.20.jpg", ""),
                longText("Programın derlenmesi ve yüklenmesi bittiği zaman konsolda aşağıda gösterildiği gibi bir bildirimle karşılaşıyoruz."),
                imageEvent("Assets/images/ders2.21.jpg", ""),
                longText("Program doğru yüklendiğinde aşağıdaki fotoğrafta gösterilen ufak LED’in yanıp sönüyor olması gerekiyor."),
                imageEvent("Assets/images/ders2.22.jpg", ""),
                longText("Arduino’yu programladıktan sonra USB kablosunu çıkarırsanız, Arduino’ya herhangi bir yerden enerji sağlanmadığı için çalışmayı durdurur. Ama tekrar USB’yi taktığınız andan itibaren yüklü olan programı çalıştıracaktır. Gücü kesip tekrar vermemiz içindeki programı silmez. Artık program yüklü olduğu için, USB kablosunu çıkışında 5V olan herhangi bir USB girişine bağlamanız (örneğin, telefon şarj ünitesi (powerbank) gibi ) Arduino’yu çalıştıracaktır."),
                



              ],
            ),
          ],
        ),
      ),
    );
  }
}

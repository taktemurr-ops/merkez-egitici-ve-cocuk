import 'package:flutter_test/flutter_test.dart';
import 'package:merkez_egitici_ve_cocuk/main.dart';

void main() {
  test('merkezde oyunlar benzersiz kimlikle yer alıyor', () {
    final ids = hubConfig.games.map((g) => g.gameId).toList();
    expect(ids, [
      'oyun-alfabe-ogrenme',
      'oyun-harf-izleme',
      'oyun-hece-okuma',
      'oyun-ingilizce-kelime-kartlari',
      'oyun-sayi-ogrenme',
      'oyun-toplama-cikarma',
      'oyun-carpim-tablosu-oyunu',
      'oyun-matematik-yarisi',
      'oyun-kesirler',
      'oyun-para-sayma',
      'oyun-saat-ogrenme',
      'oyun-sekil-ve-renk-esleme',
      'oyun-geometri-sekilleri',
      'oyun-boyama-kitabi',
      'oyun-sayiyla-boyama',
      'oyun-cocuk-piyanosu',
      'oyun-notalarla-tanisma',
      'oyun-hayvanlar-ve-sesleri',
      'oyun-mevsimler-ve-hava',
      'oyun-gunes-sistemi',
      'oyun-bayraklar-bilgi-oyunu',
      'oyun-baskentler-ve-harita',
      'oyun-turkiye-haritasi-yapbozu',
      'oyun-trafik-kurallari',
      'oyun-dinozorlar',
      'oyun-meyve-sebze',
      'oyun-dikkat-gelistirme',
      'oyun-cocuk-labirenti-ve-yapbozu',
      'oyun-cocuklar-icin-blok-kodlama',
      'oyun-zit-kavramlar',
      'oyun-sag-sol-yonler',
      'oyun-duygular',
      'oyun-saglikli-aliskanliklar',
      'oyun-geri-donusum',
      'oyun-meslekler',
      'oyun-vucudumuz',
      'oyun-dunya-alfabeleri',
      'oyun-masal-kitapligi',
      'oyun-oyuncak-ev',
      'oyun-minik-veteriner',
      'oyun-araba-tamir-cocuk',
    ]);
    final all = hubConfig.allGames.map((g) => g.gameId).toList();
    expect(all.length, ids.length + 0);
    expect(all.toSet().length, all.length);
    expect(ids.toSet().length, ids.length);
    for (final g in hubConfig.allGames) {
      expect(g.rules.gameId, g.gameId, reason: 'kayıt öneki oyun kimliğiyle aynı olmalı');
    }
    expect(hubConfig.title.length, 33);
    expect(hubConfig.tagline.length, 33);
    for (final g in hubConfig.allGames) {
      expect(g.kidsMode, isTrue, reason: '${g.gameId} çocuk modunda olmalı');
    }
  });

  test('her oyun ve grup bir bölüm başlığı altında', () {
    final ids = {for (final s in hubConfig.sections) ...s.ids};
    for (final g in hubConfig.games) {
      expect(ids.contains(g.gameId), isTrue, reason: g.gameId);
    }
    for (final s in hubConfig.sections) {
      expect(s.title.length, 33);
    }
  });
}

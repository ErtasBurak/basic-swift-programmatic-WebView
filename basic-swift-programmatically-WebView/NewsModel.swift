//
//  NewsModel.swift
//  basic-swift-programmatically-WebView
//
//  Created by Burak Ertaş on 26.09.2022.
//

import Foundation

struct newsModel {
    var image = String()
    var title = String()
    var desc = String()
}

var newsArr = [
    newsModel(image: "gomez", title: "Mario Gomez Beşiktaş'ta", desc: "https://www.haberturk.com/spor/futbol/haber/1109156-mario-gomez-resmen-besiktasta"),
    newsModel(image: "lpg", title: "Porsche'ye LPG taktıran Türk!", desc: "https://www.haberturk.com/ekonomi/otomobil/haber/856094-porscheye-lpg-taktiran-turk"),
    newsModel(image: "kolpacino", title: "'Kolpaçino 3. Devre' Filmi 484 Bin 404 Seyirciye Ulaştı", desc: "https://www.haberler.com/magazin/kolpacino-3-devre-filmi-484-bin-404-8263517-haberi/"),
    newsModel(image: "squidgame", title: "Netflix 4,5 milyon dolar ödüllü 'gerçek' Squid Game yarışması çekiyor", desc: "https://www.bbc.com/turkce/haberler-dunya-61807108"),
    newsModel(image: "ronaldo", title: "Ronaldo, Manchester United’a transfer oldu!", desc: "https://www.cumhuriyet.com.tr/haber/son-dakika-ronaldo-manchester-uniteda-transfer-oldu-1864119"),
    newsModel(image: "yasaklar", title: "Yeni yasaklar: Sokağa çıkma kısıtlamalarıyla ikinci hafta sonu", desc: "https://www.bbc.com/turkce/haberler-turkiye-54977340"),
]

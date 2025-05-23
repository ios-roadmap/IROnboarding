//
//  OnboardingTheme.swift
//  IROnboarding
//
//  Created by Ömer Faruk Öztürk on 22.05.2025.
//

import SwiftUI

/// Represents various onboarding theme types used in mobile apps.
@MainActor
public enum OnboardingTheme {
    /// 3-5 ekranlık sağa kaydırmalı karşılama turu
    case welcomeTour
    
    /// Her ekranda tek bir önemli özelliğe odaklanan tanıtım
    case featureSpotlight
    
    /// Kullanıcıya sağlanacak faydaları öne çıkaran yaklaşım
    case benefitDriven
    
    /// Kullanıcı uygulamada ilerledikçe bağlama uygun ipuçları gösterir
    case progressive
    
    /// Uygulama erişimi için giriş/kayıt zorunludur
    case signUpGate
    
    /// Kurulum adımlarını içeren sihirbaz tarzı onboarding
    case setupWizard
    
    /// Kamera, konum vb. izinler öncesinde bilgilendirme yapılır
    case permissionPrimer
    
    /// Kullanıcıdan bilgi alarak başlangıç içeriğini kişiselleştirir
    case personalisationFlow
    
    /// Puan, seviye, ilerleme çubuğu gibi öğelerle oyunlaştırılmış onboarding
    case gamified
    
    /// Hikâye veya anlatı kullanarak kullanıcıyı duygusal olarak bağlar
    case storytelling
    
    /// Kullanıcının üye olmadan uygulamayı demo verilerle deneyimlemesine olanak tanır
    case demoMode
    
    /// Boş ekranlarda kullanıcıya ne yapması gerektiğini gösterir
    case emptyState
    
    /// Kısa video veya animasyon ile uygulamanın değerini gösterir
    case videoIntro
    
    /// AR veya etkileşimli yapı ile öğretici deneyim sunar
    case interactiveTutorial
    
    @ViewBuilder
    public var view: some View {
        switch self {
        case .welcomeTour:
            WelcomeTourView()
        default:
            Text("Onboarding")
        }
    }
}

/*

| Theme name (İngilizce)        | Türkçe Açıklama                                                                                                     |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| **Welcome Tour / Carousel**   | Uygulamanın temel faydalarını tanıtan, 3-5 ekranlık sağa kaydırmalı karşılama turu.                                 |
| **Feature Spotlight**         | Her ekranda tek bir "önemli" özelliğe odaklanarak tanıtım yapan tema (genellikle animasyonlu olur).                 |
| **Benefit-Driven**            | Özellikten ziyade, kullanıcıya sağlayacağı faydayı öne çıkarır (“Zamandan tasarruf et”, “Formda kal” gibi).         |
| **Progressive / Contextual**  | Kullanıcı uygulamada ilerledikçe, belirli ekranlarda ilk kez karşılaştığında rehber ipuçları gösterilir.            |
| **Sign-Up Gate**              | Kullanıcının uygulamaya erişmeden önce hesap oluşturmasını zorunlu tutan akış.                                      |
| **Setup Wizard**              | Hedef belirleme, veri alma, bildirim izni gibi adımlarla uygulamayı kullanıma hazır hâle getiren kurulum sihirbazı. |
| **Permission Primer**         | Kamera, konum, sağlık verisi gibi izinleri istemeden önce neden gerekli olduğunu açıklayan bilgi ekranları.         |
| **Personalisation Flow**      | Kullanıcıdan yaş, hedef, ilgi alanları gibi veriler alarak başlangıç içeriğini kişiselleştiren akış.                |
| **Gamified Onboarding**       | İlk görevleri mini oyun gibi sunan; puan, seviye, ilerleme çubuğu gibi ögelerle motive eden yapı.                   |
| **Storytelling / Narrative**  | Uygulamanın arkasındaki hikâyeyi veya kullanıcı senaryosunu anlatan kısa bir anlatım/çizgi roman tarzında tanıtım.  |
| **Demo Mode / Explore First** | Üye olmadan önce örnek verilerle uygulamayı deneme imkânı sunar (özellikle B2B araçlarda yaygın).                   |
| **Empty-State Onboarding**    | Ayrı bir onboarding akışı olmadan, boş ekranlarda kullanıcıya ne yapması gerektiğini gösteren rehberlik yapısı.     |
| **Video / Motion Intro**      | Uygulamanın ne işe yaradığını gösteren kısa, döngüsel bir video veya animasyon.                                     |
| **AR / Interactive Tutorial** | AR (Artırılmış Gerçeklik) veya etkileşimli bir alan kullanarak uygulamayı yaparak öğrenmeyi sağlayan öğretici.      |

*/

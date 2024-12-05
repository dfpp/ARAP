.class public Lcom/appbrain/mediation/AdMobAppBrainInterstitialAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/mediation/AppBrainInterstitialAdapter;


# instance fields
.field private a:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appbrain/mediation/AdMobAppBrainInterstitialAdapter;->a:Lcom/google/android/gms/ads/InterstitialAd;

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Ljava/lang/String;Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;)V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "adUnitId"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appbrain/mediation/AdMobAppBrainInterstitialAdapter;->a:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appbrain/mediation/AdMobAppBrainInterstitialAdapter;->a:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance p2, Lcom/appbrain/mediation/AdMobAppBrainInterstitialAdapter$a;

    invoke-direct {p2, p0, p3}, Lcom/appbrain/mediation/AdMobAppBrainInterstitialAdapter$a;-><init>(Lcom/appbrain/mediation/AdMobAppBrainInterstitialAdapter;Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object p1, p0, Lcom/appbrain/mediation/AdMobAppBrainInterstitialAdapter;->a:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance p2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void

    :catch_0
    sget-object p1, Lcom/appbrain/n/h;->e:Lcom/appbrain/n/h;

    invoke-interface {p3, p1}, Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;->f(Lcom/appbrain/n/h;)V

    return-void
.end method

.method public showInterstitial()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/mediation/AdMobAppBrainInterstitialAdapter;->a:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/mediation/AdMobAppBrainInterstitialAdapter;->a:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

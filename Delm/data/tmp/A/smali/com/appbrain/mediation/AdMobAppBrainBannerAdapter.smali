.class public Lcom/appbrain/mediation/AdMobAppBrainBannerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/mediation/AppBrainBannerAdapter;


# instance fields
.field private a:Lcom/google/android/gms/ads/AdView;


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

.method public static calcAdSize(Landroid/content/Context;)Lcom/google/android/gms/ads/AdSize;
    .locals 2

    invoke-static {p0}, Lcom/appbrain/o/j;->h(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/ads/AdSize;

    const/16 v1, 0x5a

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/ads/AdSize;

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/mediation/AdMobAppBrainBannerAdapter;->a:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public loadBanner(Landroid/content/Context;Ljava/lang/String;Lcom/appbrain/mediation/AppBrainBannerAdapter$a;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "adUnitId"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appbrain/mediation/AdMobAppBrainBannerAdapter;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/appbrain/mediation/AdMobAppBrainBannerAdapter;->a:Lcom/google/android/gms/ads/AdView;

    invoke-static {p1}, Lcom/appbrain/mediation/AdMobAppBrainBannerAdapter;->calcAdSize(Landroid/content/Context;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    iget-object p1, p0, Lcom/appbrain/mediation/AdMobAppBrainBannerAdapter;->a:Lcom/google/android/gms/ads/AdView;

    new-instance p2, Lcom/appbrain/mediation/AdMobAppBrainBannerAdapter$a;

    invoke-direct {p2, p0, p3}, Lcom/appbrain/mediation/AdMobAppBrainBannerAdapter$a;-><init>(Lcom/appbrain/mediation/AdMobAppBrainBannerAdapter;Lcom/appbrain/mediation/AppBrainBannerAdapter$a;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object p1, p0, Lcom/appbrain/mediation/AdMobAppBrainBannerAdapter;->a:Lcom/google/android/gms/ads/AdView;

    new-instance p2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/mediation/AdMobAppBrainBannerAdapter;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/mediation/AdMobAppBrainBannerAdapter;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/mediation/AdMobAppBrainBannerAdapter;->a:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    return-void
.end method

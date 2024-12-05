.class public Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/mediation/AppBrainInterstitialAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/appbrain/j;

.field private c:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;->c:D

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;->b:Lcom/appbrain/j;

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Ljava/lang/String;Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;)V
    .locals 5

    iput-object p1, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;->b:Lcom/appbrain/j;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "ADID"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appbrain/b;->e(Ljava/lang/String;)Lcom/appbrain/b;

    move-result-object p2

    const-string v2, "ANA"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SCREENTYPE"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/c$a;->valueOf(Ljava/lang/String;)Lcom/appbrain/c$a;

    move-result-object v0

    :goto_0
    const-string v3, "SC"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;->c:D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-static {}, Lcom/appbrain/j;->f()Lcom/appbrain/j;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/appbrain/j;->k(Z)Lcom/appbrain/j;

    invoke-virtual {v1, p2}, Lcom/appbrain/j;->j(Lcom/appbrain/b;)Lcom/appbrain/j;

    new-instance p2, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter$a;

    invoke-direct {p2, p0, p3}, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter$a;-><init>(Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;)V

    invoke-virtual {v1, p2}, Lcom/appbrain/j;->m(Lcom/appbrain/k;)Lcom/appbrain/j;

    iput-object v1, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;->b:Lcom/appbrain/j;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/appbrain/j;->l(Ljava/lang/String;)Lcom/appbrain/j;

    :cond_2
    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;->b:Lcom/appbrain/j;

    invoke-virtual {p2, v0}, Lcom/appbrain/j;->n(Lcom/appbrain/c$a;)Lcom/appbrain/j;

    :cond_3
    iget-object p2, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;->b:Lcom/appbrain/j;

    invoke-virtual {p2, p1}, Lcom/appbrain/j;->i(Landroid/content/Context;)Lcom/appbrain/j;

    return-void

    :catch_0
    sget-object p1, Lcom/appbrain/n/h;->e:Lcom/appbrain/n/h;

    invoke-interface {p3, p1}, Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;->f(Lcom/appbrain/n/h;)V

    return-void
.end method

.method public showInterstitial()Z
    .locals 4

    iget-object v0, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;->b:Lcom/appbrain/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;->c:D

    invoke-static {v0, v1, v2, v3}, Lcom/appbrain/a;->a(Lcom/appbrain/j;Landroid/content/Context;D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

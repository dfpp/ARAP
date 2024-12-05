.class final Lcom/appbrain/n/a$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/appbrain/mediation/AppBrainInterstitialAdapter;

.field private final b:Lcom/appbrain/p/c;


# direct methods
.method constructor <init>(Lcom/appbrain/mediation/AppBrainInterstitialAdapter;Lcom/appbrain/p/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/n/a$c;->a:Lcom/appbrain/mediation/AppBrainInterstitialAdapter;

    iput-object p2, p0, Lcom/appbrain/n/a$c;->b:Lcom/appbrain/p/c;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/n/a$c;->a:Lcom/appbrain/mediation/AppBrainInterstitialAdapter;

    invoke-interface {v0}, Lcom/appbrain/mediation/AppBrainInterstitialAdapter;->showInterstitial()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error showing interstitial: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appbrain/n/a$c;->b:Lcom/appbrain/p/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppBrain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method final b(Landroid/content/Context;Ljava/lang/String;Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/n/a$c;->a:Lcom/appbrain/mediation/AppBrainInterstitialAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/appbrain/mediation/AppBrainInterstitialAdapter;->requestInterstitialAd(Landroid/content/Context;Ljava/lang/String;Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x4

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error requesting interstitial: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appbrain/n/a$c;->b:Lcom/appbrain/p/c;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AppBrain"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method final c()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/n/a$c;->a:Lcom/appbrain/mediation/AppBrainInterstitialAdapter;

    invoke-interface {v0}, Lcom/appbrain/mediation/AppBrainInterstitialAdapter;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error destroying interstitial: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appbrain/n/a$c;->b:Lcom/appbrain/p/c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppBrain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

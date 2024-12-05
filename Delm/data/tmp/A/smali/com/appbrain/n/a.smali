.class public final Lcom/appbrain/n/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/n/a$b;,
        Lcom/appbrain/n/a$c;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static a(Lcom/appbrain/p/e;)Lcom/appbrain/n/a$c;
    .locals 3

    invoke-virtual {p0}, Lcom/appbrain/p/e;->L()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/appbrain/p/e;->M()Lcom/appbrain/p/c;

    move-result-object p0

    sget-object v0, Lcom/appbrain/n/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_1

    :pswitch_0
    const-string v0, "com.appbrain.mopub.MoPubAppBrainInterstitialAdapter"

    goto :goto_0

    :pswitch_1
    const-string v0, "com.appbrain.inmobi.InMobiAppBrainInterstitialAdapter"

    goto :goto_0

    :pswitch_2
    const-string v0, "com.appbrain.chartboost.ChartboostAppBrainInterstitialAdapter"

    goto :goto_0

    :pswitch_3
    const-string v0, "com.appbrain.facebook.FacebookAppBrainInterstitialAdapter"

    goto :goto_0

    :pswitch_4
    const-string v0, "com.appbrain.mediation.AdMobAppBrainInterstitialAdapter"

    :goto_0
    invoke-static {v0}, Lcom/appbrain/n/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/mediation/AppBrainInterstitialAdapter;

    goto :goto_1

    :pswitch_5
    new-instance v0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;

    invoke-direct {v0}, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;-><init>()V

    :goto_1
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lcom/appbrain/n/a$c;

    invoke-direct {v1, v0, p0}, Lcom/appbrain/n/a$c;-><init>(Lcom/appbrain/mediation/AppBrainInterstitialAdapter;Lcom/appbrain/p/c;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static b(Lcom/appbrain/b;Lcom/appbrain/t/l$a;)Lcom/appbrain/t/l;
    .locals 2

    sget-object v0, Lcom/appbrain/n/a$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/appbrain/b;->d()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/appbrain/b;->c()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {}, Lcom/appbrain/t/l;->O()Lcom/appbrain/t/l$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appbrain/t/l$b;->w(Lcom/appbrain/t/l$a;)Lcom/appbrain/t/l$b;

    invoke-virtual {p0}, Lcom/appbrain/b;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/appbrain/t/l$b;->v(I)Lcom/appbrain/t/l$b;

    invoke-virtual {v0}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object p0

    check-cast p0, Lcom/appbrain/t/l;

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppBrain"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static d(Lcom/appbrain/p/e;Z)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/appbrain/p/e;->P()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/appbrain/p/e;->Q()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/appbrain/p/e;->O()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static e(Lcom/appbrain/p/e;)Lcom/appbrain/n/a$b;
    .locals 3

    invoke-virtual {p0}, Lcom/appbrain/p/e;->L()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/appbrain/p/e;->M()Lcom/appbrain/p/c;

    move-result-object p0

    sget-object v0, Lcom/appbrain/n/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "com.appbrain.mopub.MoPubAppBrainBannerAdapter"

    goto :goto_1

    :pswitch_1
    const-string v0, "com.appbrain.inmobi.InMobiAppBrainBannerAdapter"

    goto :goto_1

    :goto_0
    :pswitch_2
    move-object v0, v1

    goto :goto_2

    :pswitch_3
    const-string v0, "com.appbrain.facebook.FacebookAppBrainBannerAdapter"

    goto :goto_1

    :pswitch_4
    const-string v0, "com.appbrain.mediation.AdMobAppBrainBannerAdapter"

    :goto_1
    invoke-static {v0}, Lcom/appbrain/n/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/mediation/AppBrainBannerAdapter;

    goto :goto_2

    :pswitch_5
    new-instance v0, Lcom/appbrain/mediation/AppBrainAppBrainBannerAdapter;

    invoke-direct {v0}, Lcom/appbrain/mediation/AppBrainAppBrainBannerAdapter;-><init>()V

    :goto_2
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lcom/appbrain/n/a$b;

    invoke-direct {v1, v0, p0}, Lcom/appbrain/n/a$b;-><init>(Lcom/appbrain/mediation/AppBrainBannerAdapter;Lcom/appbrain/p/c;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

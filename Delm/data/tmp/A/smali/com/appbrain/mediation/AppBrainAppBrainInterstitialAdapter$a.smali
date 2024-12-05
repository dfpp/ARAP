.class final Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;


# direct methods
.method constructor <init>(Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter;Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;)V
    .locals 0

    iput-object p2, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter$a;->a:Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter$a;->a:Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;

    invoke-interface {v0}, Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;->g()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter$a;->a:Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;

    invoke-interface {v0}, Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;->c()V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iget-object p1, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter$a;->a:Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;

    invoke-interface {p1}, Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;->e()V

    return-void
.end method

.method public final d(Lcom/appbrain/k$a;)V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter$a;->a:Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;

    sget-object v1, Lcom/appbrain/k$a;->b:Lcom/appbrain/k$a;

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/appbrain/n/h;->d:Lcom/appbrain/n/h;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/appbrain/n/h;->e:Lcom/appbrain/n/h;

    :goto_0
    invoke-interface {v0, p1}, Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;->f(Lcom/appbrain/n/h;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/mediation/AppBrainAppBrainInterstitialAdapter$a;->a:Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;

    invoke-interface {v0}, Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;->d()V

    return-void
.end method

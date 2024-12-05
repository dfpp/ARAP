.class final Lcom/appbrain/AppBrainBanner$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/AppBrainBanner;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/AppBrainBanner;


# direct methods
.method constructor <init>(Lcom/appbrain/AppBrainBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/AppBrainBanner$j;->b:Lcom/appbrain/AppBrainBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/h1;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$j;->b:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->g(Lcom/appbrain/AppBrainBanner;)V

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$j;->b:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->i(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/f1;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/a/f1;->d()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$j;->b:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->a(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/e$a;->j()Lcom/appbrain/i;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/appbrain/i;->b(Z)V

    :cond_1
    return-void
.end method

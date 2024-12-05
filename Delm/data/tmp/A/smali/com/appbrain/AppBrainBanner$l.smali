.class final Lcom/appbrain/AppBrainBanner$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/a/c0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/AppBrainBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/AppBrainBanner;


# direct methods
.method constructor <init>(Lcom/appbrain/AppBrainBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/AppBrainBanner$l;->a:Lcom/appbrain/AppBrainBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$l;->a:Lcom/appbrain/AppBrainBanner;

    new-instance v1, Lcom/appbrain/a/g;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->k(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/f1$a;

    move-result-object v2

    iget-object v3, p0, Lcom/appbrain/AppBrainBanner$l;->a:Lcom/appbrain/AppBrainBanner;

    invoke-static {v3}, Lcom/appbrain/AppBrainBanner;->a(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/e$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appbrain/a/e$a;->b()Lcom/appbrain/a/e;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/appbrain/a/g;-><init>(Lcom/appbrain/a/f1$a;Lcom/appbrain/a/e;)V

    invoke-static {v0, v1}, Lcom/appbrain/AppBrainBanner;->c(Lcom/appbrain/AppBrainBanner;Lcom/appbrain/a/f1;)Lcom/appbrain/a/f1;

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$l;->a:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->i(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/f1;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/a/f1;->a()V

    return-void
.end method

.class final Lcom/appbrain/AppBrainBanner$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/AppBrainBanner;->r(Lcom/appbrain/AppBrainBanner$p;Lcom/appbrain/AppBrainBanner$p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/AppBrainBanner$p;

.field final synthetic c:Lcom/appbrain/AppBrainBanner$p;

.field final synthetic d:Lcom/appbrain/AppBrainBanner;


# direct methods
.method constructor <init>(Lcom/appbrain/AppBrainBanner;Lcom/appbrain/AppBrainBanner$p;Lcom/appbrain/AppBrainBanner$p;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/AppBrainBanner$n;->d:Lcom/appbrain/AppBrainBanner;

    iput-object p2, p0, Lcom/appbrain/AppBrainBanner$n;->b:Lcom/appbrain/AppBrainBanner$p;

    iput-object p3, p0, Lcom/appbrain/AppBrainBanner$n;->c:Lcom/appbrain/AppBrainBanner$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$n;->d:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->a(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/AppBrainBanner$n;->b:Lcom/appbrain/AppBrainBanner$p;

    iget-object v2, p0, Lcom/appbrain/AppBrainBanner$n;->c:Lcom/appbrain/AppBrainBanner$p;

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/a/e$a;->f(Lcom/appbrain/AppBrainBanner$p;Lcom/appbrain/AppBrainBanner$p;)V

    return-void
.end method

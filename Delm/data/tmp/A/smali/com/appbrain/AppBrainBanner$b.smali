.class final Lcom/appbrain/AppBrainBanner$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/AppBrainBanner;->setAdId(Lcom/appbrain/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/b;

.field final synthetic c:Lcom/appbrain/AppBrainBanner;


# direct methods
.method constructor <init>(Lcom/appbrain/AppBrainBanner;Lcom/appbrain/b;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/AppBrainBanner$b;->c:Lcom/appbrain/AppBrainBanner;

    iput-object p2, p0, Lcom/appbrain/AppBrainBanner$b;->b:Lcom/appbrain/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$b;->c:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->a(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/AppBrainBanner$b;->b:Lcom/appbrain/b;

    invoke-virtual {v0, v1}, Lcom/appbrain/a/e$a;->e(Lcom/appbrain/b;)V

    return-void
.end method
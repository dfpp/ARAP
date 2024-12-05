.class final Lcom/appbrain/AppBrainBanner$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/AppBrainBanner;->q(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/appbrain/AppBrainBanner;


# direct methods
.method constructor <init>(Lcom/appbrain/AppBrainBanner;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/AppBrainBanner$o;->d:Lcom/appbrain/AppBrainBanner;

    iput-boolean p2, p0, Lcom/appbrain/AppBrainBanner$o;->b:Z

    iput-object p3, p0, Lcom/appbrain/AppBrainBanner$o;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$o;->d:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->a(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/e$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/appbrain/AppBrainBanner$o;->b:Z

    iget-object v2, p0, Lcom/appbrain/AppBrainBanner$o;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/appbrain/a/m1;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/a/e$a;->i(ZLjava/lang/String;)V

    return-void
.end method

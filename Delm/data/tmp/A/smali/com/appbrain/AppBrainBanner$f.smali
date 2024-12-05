.class final Lcom/appbrain/AppBrainBanner$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/AppBrainBanner;->setColors(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/appbrain/AppBrainBanner;


# direct methods
.method constructor <init>(Lcom/appbrain/AppBrainBanner;I)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/AppBrainBanner$f;->c:Lcom/appbrain/AppBrainBanner;

    iput p2, p0, Lcom/appbrain/AppBrainBanner$f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$f;->c:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->a(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/e$a;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/AppBrainBanner$f;->b:I

    invoke-virtual {v0, v1}, Lcom/appbrain/a/e$a;->n(I)V

    return-void
.end method

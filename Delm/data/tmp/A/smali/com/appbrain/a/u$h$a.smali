.class final Lcom/appbrain/a/u$h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/u$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/u$h;


# direct methods
.method constructor <init>(Lcom/appbrain/a/u$h;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/u$h$a;->b:Lcom/appbrain/a/u$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Lcom/appbrain/a/v0;

    invoke-direct {v0}, Lcom/appbrain/a/v0;-><init>()V

    invoke-static {}, Lcom/appbrain/t/s;->R()Lcom/appbrain/t/s;

    move-result-object v1

    const-string v2, "ow"

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/a/j0;->e(Lcom/appbrain/q/q;Ljava/lang/String;)Lcom/appbrain/v/b$a;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/a/g0;->w(Lcom/appbrain/v/b$a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/u$h$a;->b:Lcom/appbrain/a/u$h;

    new-instance v2, Lcom/appbrain/a/z;

    const-string v3, "appbrain/interstitial.html"

    const-string v4, "inturl"

    invoke-direct {v2, v3, v4, v0}, Lcom/appbrain/a/z;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/appbrain/a/u$h;->b(Lcom/appbrain/a/u$h;Lcom/appbrain/a/z;)Lcom/appbrain/a/z;

    iget-object v0, p0, Lcom/appbrain/a/u$h$a;->b:Lcom/appbrain/a/u$h;

    invoke-static {v0}, Lcom/appbrain/a/u$h;->a(Lcom/appbrain/a/u$h;)Lcom/appbrain/a/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/z;->a()V

    return-void
.end method

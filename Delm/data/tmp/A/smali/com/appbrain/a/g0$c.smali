.class final Lcom/appbrain/a/g0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/a/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/g0;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/a/g0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/g0$c;->a:Lcom/appbrain/a/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/g0$c;->a:Lcom/appbrain/a/g0;

    invoke-virtual {v0}, Lcom/appbrain/a/j1;->n()I

    move-result v0

    sget-object v1, Lcom/appbrain/a/k1$e;->e:Lcom/appbrain/a/k1$e;

    invoke-static {v0, v1}, Lcom/appbrain/a/k1;->c(ILcom/appbrain/a/k1$e;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/g0$c;->a:Lcom/appbrain/a/g0;

    invoke-virtual {v0}, Lcom/appbrain/a/j1;->q()V

    return-void
.end method

.method public final c()V
    .locals 1

    const-string v0, "AdJavaScriptInterface.showOfferWall() called from offerwall"

    invoke-static {v0}, Lcom/appbrain/o/i;->g(Ljava/lang/String;)V

    return-void
.end method

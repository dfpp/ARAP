.class final Lcom/appbrain/a/k0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/appbrain/a/k0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/k0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/k0$a;->c:Lcom/appbrain/a/k0;

    iput-object p2, p0, Lcom/appbrain/a/k0$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/a/k0$a;->c:Lcom/appbrain/a/k0;

    invoke-static {v0}, Lcom/appbrain/a/k0;->w(Lcom/appbrain/a/k0;)V

    iget-object v0, p0, Lcom/appbrain/a/k0$a;->c:Lcom/appbrain/a/k0;

    invoke-static {v0}, Lcom/appbrain/a/k0;->A(Lcom/appbrain/a/k0;)Z

    invoke-static {}, Lcom/appbrain/a/m1;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/k0$a;->c:Lcom/appbrain/a/k0;

    invoke-static {v0}, Lcom/appbrain/a/k0;->B(Lcom/appbrain/a/k0;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/k0$a;->c:Lcom/appbrain/a/k0;

    invoke-virtual {v0}, Lcom/appbrain/a/j1;->s()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/a/k0$a;->c:Lcom/appbrain/a/k0;

    invoke-static {v0}, Lcom/appbrain/a/k0;->B(Lcom/appbrain/a/k0;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/a/k0$a;->c:Lcom/appbrain/a/k0;

    invoke-virtual {v0}, Lcom/appbrain/a/j1;->p()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/k0$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/appbrain/a/k0$a;->c:Lcom/appbrain/a/k0;

    invoke-static {v2}, Lcom/appbrain/a/k0;->C(Lcom/appbrain/a/k0;)Lcom/appbrain/a/h0$b;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appbrain/a/h0;->k(Landroid/app/Activity;Ljava/lang/String;Lcom/appbrain/a/h0$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/a/k0$a;->c:Lcom/appbrain/a/k0;

    invoke-virtual {v0}, Lcom/appbrain/a/k0;->q()V

    :cond_1
    return-void
.end method

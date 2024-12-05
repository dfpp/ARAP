.class final Lcom/appbrain/a/g$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/a/g;


# direct methods
.method constructor <init>(Lcom/appbrain/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/g$d;->a:Lcom/appbrain/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/appbrain/a/f;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/g$d;->a:Lcom/appbrain/a/g;

    invoke-static {v0}, Lcom/appbrain/a/g;->n(Lcom/appbrain/a/g;)Lcom/appbrain/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/appbrain/a/g$d;->a:Lcom/appbrain/a/g;

    invoke-static {p1}, Lcom/appbrain/a/g;->p(Lcom/appbrain/a/g;)Lcom/appbrain/a/f1$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/appbrain/a/f1$a;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/appbrain/a/g$d;->a:Lcom/appbrain/a/g;

    invoke-static {v0}, Lcom/appbrain/a/g;->n(Lcom/appbrain/a/g;)Lcom/appbrain/a/e;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/appbrain/a/i0;->d(Landroid/content/Context;Lcom/appbrain/a/e;)Lcom/appbrain/a/i0;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/g$d;->a:Lcom/appbrain/a/g;

    invoke-static {v0, p1}, Lcom/appbrain/a/g;->i(Lcom/appbrain/a/g;Lcom/appbrain/a/f;)V

    return-void
.end method

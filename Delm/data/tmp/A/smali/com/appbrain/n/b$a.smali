.class final Lcom/appbrain/n/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/n/b;


# direct methods
.method constructor <init>(Lcom/appbrain/n/b;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/n/b$a;->a:Lcom/appbrain/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/appbrain/p/h;

    iget-object v0, p0, Lcom/appbrain/n/b$a;->a:Lcom/appbrain/n/b;

    invoke-static {v0}, Lcom/appbrain/n/b;->f(Lcom/appbrain/n/b;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/appbrain/p/h;->L()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/b$a;->a:Lcom/appbrain/n/b;

    invoke-static {v1}, Lcom/appbrain/n/b;->k(Lcom/appbrain/n/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appbrain/p/h;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/n/i;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appbrain/n/b$a;->a:Lcom/appbrain/n/b;

    invoke-static {v0}, Lcom/appbrain/n/b;->m(Lcom/appbrain/n/b;)Lcom/appbrain/n/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appbrain/n/j;->b(Lcom/appbrain/p/h;)V

    iget-object p1, p0, Lcom/appbrain/n/b$a;->a:Lcom/appbrain/n/b;

    invoke-static {p1}, Lcom/appbrain/n/b;->p(Lcom/appbrain/n/b;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/appbrain/n/b;->n()Ljava/lang/String;

    iget-object p1, p0, Lcom/appbrain/n/b$a;->a:Lcom/appbrain/n/b;

    invoke-static {p1}, Lcom/appbrain/n/b;->g(Lcom/appbrain/n/b;)Lcom/appbrain/b;

    iget-object p1, p0, Lcom/appbrain/n/b$a;->a:Lcom/appbrain/n/b;

    invoke-static {p1}, Lcom/appbrain/n/b;->i(Lcom/appbrain/n/b;)Lcom/appbrain/n/b$h;

    move-result-object p1

    invoke-interface {p1}, Lcom/appbrain/n/b$h;->b()V

    :cond_2
    :goto_1
    return-void
.end method

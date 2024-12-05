.class final Lcom/appbrain/n/d$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/n/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/n/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/appbrain/p/e;

.field final synthetic c:Lcom/appbrain/n/d;


# direct methods
.method constructor <init>(Lcom/appbrain/n/d;Lcom/appbrain/p/e;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    iput-object p2, p0, Lcom/appbrain/n/d$f;->b:Lcom/appbrain/p/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->o(Lcom/appbrain/n/d;)Lcom/appbrain/n/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/n/e;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v1}, Lcom/appbrain/n/d;->o(Lcom/appbrain/n/d;)Lcom/appbrain/n/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/n/e;->f()V

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v2}, Lcom/appbrain/n/d;->j(Lcom/appbrain/n/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appbrain/n/d$f;->b:Lcom/appbrain/p/e;

    invoke-virtual {v3}, Lcom/appbrain/p/e;->N()Lcom/appbrain/q/j;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/n/i;->h(Ljava/lang/String;Lcom/appbrain/q/j;)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->h(Lcom/appbrain/n/d;)Lcom/appbrain/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/k;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v1}, Lcom/appbrain/n/d;->j(Lcom/appbrain/n/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/n/d$f;->b:Lcom/appbrain/p/e;

    invoke-virtual {v2}, Lcom/appbrain/p/e;->N()Lcom/appbrain/q/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/n/i;->o(Ljava/lang/String;Lcom/appbrain/q/j;)V

    iget-object v0, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->h(Lcom/appbrain/n/d;)Lcom/appbrain/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/k;->e()V

    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v1}, Lcom/appbrain/n/d;->j(Lcom/appbrain/n/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/n/d$f;->b:Lcom/appbrain/p/e;

    invoke-virtual {v2}, Lcom/appbrain/p/e;->N()Lcom/appbrain/q/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/n/i;->s(Ljava/lang/String;Lcom/appbrain/q/j;)V

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v1}, Lcom/appbrain/n/d;->j(Lcom/appbrain/n/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/n/i;->u(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-virtual {v0}, Lcom/appbrain/n/d;->g()V

    iget-object v0, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->h(Lcom/appbrain/n/d;)Lcom/appbrain/k;

    move-result-object v0

    iget-boolean v1, p0, Lcom/appbrain/n/d$f;->a:Z

    invoke-interface {v0, v1}, Lcom/appbrain/k;->c(Z)V

    return-void
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/n/d$f;->a:Z

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v1}, Lcom/appbrain/n/d;->j(Lcom/appbrain/n/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/n/i;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->h(Lcom/appbrain/n/d;)Lcom/appbrain/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/k;->a()V

    return-void
.end method

.method public final f(Lcom/appbrain/n/h;)V
    .locals 3

    sget-object v0, Lcom/appbrain/n/h;->d:Lcom/appbrain/n/h;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->r(Lcom/appbrain/n/d;)Z

    :cond_0
    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v1}, Lcom/appbrain/n/d;->j(Lcom/appbrain/n/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/n/d$f;->b:Lcom/appbrain/p/e;

    invoke-virtual {v2}, Lcom/appbrain/p/e;->N()Lcom/appbrain/q/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/appbrain/n/i;->i(Ljava/lang/String;Lcom/appbrain/q/j;Lcom/appbrain/n/h;)V

    iget-object p1, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {p1}, Lcom/appbrain/n/d;->m(Lcom/appbrain/n/d;)V

    return-void
.end method

.method public final g(Lcom/appbrain/n/h;)V
    .locals 3

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-static {v1}, Lcom/appbrain/n/d;->j(Lcom/appbrain/n/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/n/d$f;->b:Lcom/appbrain/p/e;

    invoke-virtual {v2}, Lcom/appbrain/p/e;->N()Lcom/appbrain/q/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/appbrain/n/i;->p(Ljava/lang/String;Lcom/appbrain/q/j;Lcom/appbrain/n/h;)V

    iget-object p1, p0, Lcom/appbrain/n/d$f;->c:Lcom/appbrain/n/d;

    invoke-virtual {p1}, Lcom/appbrain/n/d;->g()V

    return-void
.end method

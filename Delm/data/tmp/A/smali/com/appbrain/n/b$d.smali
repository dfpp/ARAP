.class final Lcom/appbrain/n/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/mediation/AppBrainBannerAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/n/b$f;

.field final synthetic b:Lcom/appbrain/p/e;

.field final synthetic c:Lcom/appbrain/n/b;


# direct methods
.method constructor <init>(Lcom/appbrain/n/b;Lcom/appbrain/n/b$f;Lcom/appbrain/p/e;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    iput-object p2, p0, Lcom/appbrain/n/b$d;->a:Lcom/appbrain/n/b$f;

    iput-object p3, p0, Lcom/appbrain/n/b$d;->b:Lcom/appbrain/p/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/appbrain/o/j;->f()V

    iget-object v0, p0, Lcom/appbrain/n/b$d;->a:Lcom/appbrain/n/b$f;

    invoke-static {v0}, Lcom/appbrain/n/b$f;->a(Lcom/appbrain/n/b$f;)Lcom/appbrain/n/b$g;

    move-result-object v0

    sget-object v1, Lcom/appbrain/n/b$g;->b:Lcom/appbrain/n/b$g;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/n/b$d;->a:Lcom/appbrain/n/b$f;

    invoke-static {v0}, Lcom/appbrain/n/b$f;->a(Lcom/appbrain/n/b$f;)Lcom/appbrain/n/b$g;

    move-result-object v0

    sget-object v1, Lcom/appbrain/n/b$g;->c:Lcom/appbrain/n/b$g;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successfully loaded mediated banner from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appbrain/n/b$d;->b:Lcom/appbrain/p/e;

    invoke-virtual {v2}, Lcom/appbrain/p/e;->M()Lcom/appbrain/p/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppBrain"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appbrain/n/b$d;->a:Lcom/appbrain/n/b$f;

    sget-object v1, Lcom/appbrain/n/b$g;->d:Lcom/appbrain/n/b$g;

    invoke-static {v0, v1}, Lcom/appbrain/n/b$f;->b(Lcom/appbrain/n/b$f;Lcom/appbrain/n/b$g;)Lcom/appbrain/n/b$g;

    iget-object v0, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    invoke-static {v0}, Lcom/appbrain/n/b;->v(Lcom/appbrain/n/b;)V

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    invoke-static {v1}, Lcom/appbrain/n/b;->k(Lcom/appbrain/n/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/n/b$d;->b:Lcom/appbrain/p/e;

    invoke-virtual {v2}, Lcom/appbrain/p/e;->N()Lcom/appbrain/q/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/n/i;->h(Ljava/lang/String;Lcom/appbrain/q/j;)V

    iget-object v1, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    invoke-static {v1}, Lcom/appbrain/n/b;->k(Lcom/appbrain/n/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/n/i;->n(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    invoke-static {v1}, Lcom/appbrain/n/b;->k(Lcom/appbrain/n/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/n/b$d;->b:Lcom/appbrain/p/e;

    invoke-virtual {v2}, Lcom/appbrain/p/e;->N()Lcom/appbrain/q/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/n/i;->o(Ljava/lang/String;Lcom/appbrain/q/j;)V

    iget-object v0, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    iget-object v1, p0, Lcom/appbrain/n/b$d;->a:Lcom/appbrain/n/b$f;

    invoke-static {v1}, Lcom/appbrain/n/b$f;->c(Lcom/appbrain/n/b$f;)Lcom/appbrain/n/a$b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appbrain/n/b;->a(Lcom/appbrain/n/b;Lcom/appbrain/n/a$b;)Lcom/appbrain/n/a$b;

    iget-object v0, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    invoke-static {v0}, Lcom/appbrain/n/b;->i(Lcom/appbrain/n/b;)Lcom/appbrain/n/b$h;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    invoke-static {v1}, Lcom/appbrain/n/b;->q(Lcom/appbrain/n/b;)Lcom/appbrain/n/a$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/n/a$b;->a()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appbrain/n/b$h;->d(Landroid/view/View;)V

    invoke-static {}, Lcom/appbrain/n/b;->n()Ljava/lang/String;

    iget-object v0, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    invoke-static {v0}, Lcom/appbrain/n/b;->w(Lcom/appbrain/n/b;)J

    iget-object v0, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    invoke-static {v0}, Lcom/appbrain/n/b;->x(Lcom/appbrain/n/b;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    invoke-static {v1}, Lcom/appbrain/n/b;->w(Lcom/appbrain/n/b;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appbrain/o/j;->d(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/appbrain/o/j;->f()V

    iget-object v0, p0, Lcom/appbrain/n/b$d;->a:Lcom/appbrain/n/b$f;

    invoke-static {v0}, Lcom/appbrain/n/b$f;->a(Lcom/appbrain/n/b$f;)Lcom/appbrain/n/b$g;

    move-result-object v0

    sget-object v1, Lcom/appbrain/n/b$g;->d:Lcom/appbrain/n/b$g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mediated banner from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appbrain/n/b$d;->b:Lcom/appbrain/p/e;

    invoke-virtual {v2}, Lcom/appbrain/p/e;->M()Lcom/appbrain/p/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppBrain"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/appbrain/n/i;->b()Lcom/appbrain/n/i;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    invoke-static {v1}, Lcom/appbrain/n/b;->k(Lcom/appbrain/n/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/n/i;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    invoke-static {v0}, Lcom/appbrain/n/b;->i(Lcom/appbrain/n/b;)Lcom/appbrain/n/b$h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/n/b$h;->c()V

    :cond_0
    return-void
.end method

.method public final f(Lcom/appbrain/n/h;)V
    .locals 2

    invoke-static {}, Lcom/appbrain/o/j;->f()V

    iget-object v0, p0, Lcom/appbrain/n/b$d;->a:Lcom/appbrain/n/b$f;

    invoke-static {v0}, Lcom/appbrain/n/b$f;->a(Lcom/appbrain/n/b$f;)Lcom/appbrain/n/b$g;

    move-result-object v0

    sget-object v1, Lcom/appbrain/n/b$g;->b:Lcom/appbrain/n/b$g;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/n/b$d;->a:Lcom/appbrain/n/b$f;

    invoke-static {v0}, Lcom/appbrain/n/b$f;->a(Lcom/appbrain/n/b$f;)Lcom/appbrain/n/b$g;

    move-result-object v0

    sget-object v1, Lcom/appbrain/n/b$g;->c:Lcom/appbrain/n/b$g;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/appbrain/n/b$d;->a:Lcom/appbrain/n/b$f;

    invoke-static {v0}, Lcom/appbrain/n/b$f;->d(Lcom/appbrain/n/b$f;)V

    sget-object v0, Lcom/appbrain/n/h;->d:Lcom/appbrain/n/h;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    invoke-static {v0}, Lcom/appbrain/n/b;->u(Lcom/appbrain/n/b;)Z

    :cond_1
    iget-object v0, p0, Lcom/appbrain/n/b$d;->c:Lcom/appbrain/n/b;

    iget-object v1, p0, Lcom/appbrain/n/b$d;->b:Lcom/appbrain/p/e;

    invoke-static {v0, v1, p1}, Lcom/appbrain/n/b;->c(Lcom/appbrain/n/b;Lcom/appbrain/p/e;Lcom/appbrain/n/h;)V

    :cond_2
    return-void
.end method

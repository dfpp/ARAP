.class final Lcom/appbrain/a/g0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/g0;
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

    iput-object p1, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/appbrain/t/s;->L()Lcom/appbrain/t/s$a;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-virtual {v1}, Lcom/appbrain/a/j1;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/appbrain/t/s$a;->A(I)Lcom/appbrain/t/s$a;

    iget-object v1, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-static {v1}, Lcom/appbrain/a/g0;->v(Lcom/appbrain/a/g0;)Lcom/appbrain/t/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/t/s$a;->x(Lcom/appbrain/t/t;)Lcom/appbrain/t/s$a;

    iget-object v1, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-static {v1}, Lcom/appbrain/a/g0;->y(Lcom/appbrain/a/g0;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bt"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/appbrain/t/s$a;->v(I)Lcom/appbrain/t/s$a;

    :cond_0
    iget-object v1, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-static {v1}, Lcom/appbrain/a/g0;->y(Lcom/appbrain/a/g0;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-static {v1}, Lcom/appbrain/a/g0;->y(Lcom/appbrain/a/g0;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appbrain/t/s$a;->z(Z)Lcom/appbrain/t/s$a;

    :cond_1
    iget-object v1, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-static {v1}, Lcom/appbrain/a/g0;->z(Lcom/appbrain/a/g0;)Lcom/appbrain/a/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/a/w;->g()Lcom/appbrain/b;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-static {v1}, Lcom/appbrain/a/g0;->z(Lcom/appbrain/a/g0;)Lcom/appbrain/a/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/a/w;->g()Lcom/appbrain/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appbrain/t/s$a;->B(I)Lcom/appbrain/t/s$a;

    :cond_2
    iget-object v1, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-virtual {v1}, Lcom/appbrain/a/j1;->t()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "full"

    goto :goto_0

    :cond_3
    const-string v1, "frag"

    :goto_0
    iget-object v2, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-static {v2}, Lcom/appbrain/a/g0;->z(Lcom/appbrain/a/g0;)Lcom/appbrain/a/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/a/w;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "&"

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v0, v1}, Lcom/appbrain/t/s$a;->y(Ljava/lang/String;)Lcom/appbrain/t/s$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-static {v2}, Lcom/appbrain/a/g0;->A(Lcom/appbrain/a/g0;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-static {v2}, Lcom/appbrain/a/g0;->A(Lcom/appbrain/a/g0;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move-object v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-static {v2}, Lcom/appbrain/a/g0;->B(Lcom/appbrain/a/g0;)Lcom/appbrain/a/j0;

    move-result-object v2

    invoke-virtual {v0}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v0

    const-string v3, "ow"

    invoke-virtual {v2, v0, v3}, Lcom/appbrain/a/j0;->a(Lcom/appbrain/q/q;Ljava/lang/String;)Lcom/appbrain/v/b$a;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/a/g0;->w(Lcom/appbrain/v/b$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-static {v1}, Lcom/appbrain/a/g0;->C(Lcom/appbrain/a/g0;)J

    iget-object v1, p0, Lcom/appbrain/a/g0$a;->a:Lcom/appbrain/a/g0;

    invoke-static {v1}, Lcom/appbrain/a/g0;->B(Lcom/appbrain/a/g0;)Lcom/appbrain/a/j0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/a/j0;->c()Ljava/util/List;

    return-object v0
.end method

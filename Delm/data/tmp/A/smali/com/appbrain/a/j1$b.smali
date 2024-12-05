.class public final Lcom/appbrain/a/j1$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/appbrain/a/j1$a;

.field private b:Lcom/appbrain/a/j1;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private i()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->a:Lcom/appbrain/a/j1$a;

    invoke-static {v0}, Lcom/appbrain/a/j1;->a(Lcom/appbrain/a/j1$a;)I

    move-result v0

    sget-object v1, Lcom/appbrain/a/k1$e;->c:Lcom/appbrain/a/k1$e;

    invoke-static {v0, v1}, Lcom/appbrain/a/k1;->c(ILcom/appbrain/a/k1$e;)V

    invoke-direct {p0}, Lcom/appbrain/a/j1$b;->j()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private j()Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/appbrain/a/j1$b;->a:Lcom/appbrain/a/j1$a;

    invoke-interface {v1}, Lcom/appbrain/a/j1$a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appbrain/a/j1;->h()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/appbrain/a/j1$a;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    iput-object p1, p0, Lcom/appbrain/a/j1$b;->a:Lcom/appbrain/a/j1$a;

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/h1;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/appbrain/a/j1$b;->i()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/appbrain/a/j1$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/appbrain/a/j1$b;->j()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/appbrain/a/m1;->f(Lcom/appbrain/a/j1$a;)Lcom/appbrain/a/j1;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/appbrain/a/j1$b;->i()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    :try_start_0
    invoke-interface {p1}, Lcom/appbrain/a/j1$a;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/appbrain/a/j1;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Creating AppBrainScreen"

    invoke-static {v1, v0}, Lcom/appbrain/o/i;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/appbrain/a/j1$b;->i()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez p2, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/a/j1$b;->c:J

    invoke-static {}, Lcom/appbrain/a/j1;->u()Lcom/appbrain/o/o0;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/appbrain/a/j1;->u()Lcom/appbrain/o/o0;

    move-result-object p2

    iget-object v1, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    invoke-interface {p2, v1}, Lcom/appbrain/o/o0;->a(Ljava/lang/Object;)V

    :cond_4
    invoke-static {p1}, Lcom/appbrain/a/j1;->a(Lcom/appbrain/a/j1$a;)I

    move-result p1

    sget-object p2, Lcom/appbrain/a/k1$e;->b:Lcom/appbrain/a/k1$e;

    invoke-static {p1, p2}, Lcom/appbrain/a/k1;->c(ILcom/appbrain/a/k1$e;)V

    goto :goto_1

    :cond_5
    const-string p1, "StartTime"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/appbrain/a/j1$b;->c:J

    :goto_1
    return-object v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 3

    iget-wide v0, p0, Lcom/appbrain/a/j1$b;->c:J

    const-string v2, "StartTime"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/appbrain/a/j1;->e(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 6

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appbrain/a/j1;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    invoke-virtual {v0}, Lcom/appbrain/a/j1;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/appbrain/a/j1$b;->c:J

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    const/16 v4, 0xbb8

    const-string v5, "bbt"

    invoke-static {v5, v4}, Lcom/appbrain/a/l1;->b(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/h1;->j()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Resume AppBrainScreen without screen set while SDK enabled"

    invoke-static {v0, v1}, Lcom/appbrain/o/i;->i(ZLjava/lang/String;)Z

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->a:Lcom/appbrain/a/j1$a;

    invoke-interface {v0}, Lcom/appbrain/a/j1$a;->close()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/appbrain/a/j1;->d()Ljava/lang/String;

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    invoke-virtual {v0}, Lcom/appbrain/a/j1;->j()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/appbrain/a/j1;->f(Lcom/appbrain/a/j1;)V

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    invoke-virtual {v0}, Lcom/appbrain/a/j1;->d()Ljava/lang/String;

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    invoke-virtual {v0}, Lcom/appbrain/a/j1;->k()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/appbrain/a/j1;->f(Lcom/appbrain/a/j1;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/appbrain/a/j1;->f(Lcom/appbrain/a/j1;)V

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    invoke-virtual {v0}, Lcom/appbrain/a/j1;->d()Ljava/lang/String;

    iget-object v0, p0, Lcom/appbrain/a/j1$b;->b:Lcom/appbrain/a/j1;

    invoke-virtual {v0}, Lcom/appbrain/a/j1;->l()V

    :cond_0
    return-void
.end method

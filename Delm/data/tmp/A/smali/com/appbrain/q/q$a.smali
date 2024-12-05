.class public abstract Lcom/appbrain/q/q$a;
.super Lcom/appbrain/q/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private final b:Lcom/appbrain/q/q;

.field protected c:Lcom/appbrain/q/q;

.field protected d:Z


# direct methods
.method protected constructor <init>(Lcom/appbrain/q/q;)V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/a$a;-><init>()V

    iput-object p1, p0, Lcom/appbrain/q/q$a;->b:Lcom/appbrain/q/q;

    sget-object v0, Lcom/appbrain/q/q$h;->f:Lcom/appbrain/q/q$h;

    invoke-virtual {p1, v0}, Lcom/appbrain/q/q;->v(Lcom/appbrain/q/q$h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/q/q;

    iput-object p1, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/appbrain/q/q$a;->d:Z

    return-void
.end method

.method private p()Lcom/appbrain/q/q$a;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/q/q$a;->b:Lcom/appbrain/q/q;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->F()Lcom/appbrain/q/q$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->t()Lcom/appbrain/q/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/q/q$a;->q(Lcom/appbrain/q/q;)Lcom/appbrain/q/q$a;

    return-object v0
.end method

.method private r(Lcom/appbrain/q/k;Lcom/appbrain/q/n;)Lcom/appbrain/q/q$a;
    .locals 2

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    sget-object v1, Lcom/appbrain/q/q$h;->d:Lcom/appbrain/q/q$h;

    invoke-virtual {v0, v1, p1, p2}, Lcom/appbrain/q/q;->w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_0
    throw p1
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/appbrain/q/x;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/q$a;->b:Lcom/appbrain/q/q;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    invoke-static {v0}, Lcom/appbrain/q/q;->C(Lcom/appbrain/q/q;)Z

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/q$a;->p()Lcom/appbrain/q/q$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lcom/appbrain/q/x;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic j(Lcom/appbrain/q/a;)Lcom/appbrain/q/a$a;
    .locals 0

    check-cast p1, Lcom/appbrain/q/q;

    invoke-virtual {p0, p1}, Lcom/appbrain/q/q$a;->q(Lcom/appbrain/q/q;)Lcom/appbrain/q/q$a;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic k(Lcom/appbrain/q/k;Lcom/appbrain/q/n;)Lcom/appbrain/q/a$a;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appbrain/q/q$a;->r(Lcom/appbrain/q/k;Lcom/appbrain/q/n;)Lcom/appbrain/q/q$a;

    return-object p0
.end method

.method public final q(Lcom/appbrain/q/q;)Lcom/appbrain/q/q$a;
    .locals 2

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    sget-object v1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    invoke-virtual {v0, v1, p1}, Lcom/appbrain/q/q;->z(Lcom/appbrain/q/q$i;Lcom/appbrain/q/q;)V

    return-object p0
.end method

.method protected final s()V
    .locals 3

    iget-boolean v0, p0, Lcom/appbrain/q/q$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    sget-object v1, Lcom/appbrain/q/q$h;->f:Lcom/appbrain/q/q$h;

    invoke-virtual {v0, v1}, Lcom/appbrain/q/q;->v(Lcom/appbrain/q/q$h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/q/q;

    sget-object v1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    iget-object v2, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/q/q;->z(Lcom/appbrain/q/q$i;Lcom/appbrain/q/q;)V

    iput-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appbrain/q/q$a;->d:Z

    :cond_0
    return-void
.end method

.method public final t()Lcom/appbrain/q/q;
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/q/q$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->G()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/q/q$a;->d:Z

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    return-object v0
.end method

.method public final u()Lcom/appbrain/q/q;
    .locals 2

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->t()Lcom/appbrain/q/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/q/q;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/appbrain/q/b;

    invoke-direct {v0}, Lcom/appbrain/q/b;-><init>()V

    throw v0
.end method

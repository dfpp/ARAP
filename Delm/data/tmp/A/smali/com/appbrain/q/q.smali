.class public abstract Lcom/appbrain/q/q;
.super Lcom/appbrain/q/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/q/q$g;,
        Lcom/appbrain/q/q$f;,
        Lcom/appbrain/q/q$c;,
        Lcom/appbrain/q/q$i;,
        Lcom/appbrain/q/q$b;,
        Lcom/appbrain/q/q$e;,
        Lcom/appbrain/q/q$d;,
        Lcom/appbrain/q/q$a;,
        Lcom/appbrain/q/q$h;
    }
.end annotation


# instance fields
.field protected c:Lcom/appbrain/q/c;

.field protected d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/a;-><init>()V

    invoke-static {}, Lcom/appbrain/q/c;->a()Lcom/appbrain/q/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    const/4 v0, -0x1

    iput v0, p0, Lcom/appbrain/q/q;->d:I

    return-void
.end method

.method protected static final C(Lcom/appbrain/q/q;)Z
    .locals 3

    sget-object v0, Lcom/appbrain/q/q$h;->b:Lcom/appbrain/q/q$h;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/appbrain/q/q;->w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static D(Lcom/appbrain/q/q;)Lcom/appbrain/q/q;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/appbrain/q/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appbrain/q/b;

    invoke-direct {v0}, Lcom/appbrain/q/b;-><init>()V

    invoke-virtual {v0}, Lcom/appbrain/q/b;->a()Lcom/appbrain/q/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/q/t;->b(Lcom/appbrain/q/x;)Lcom/appbrain/q/t;

    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private final E()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-static {}, Lcom/appbrain/q/c;->a()Lcom/appbrain/q/c;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/appbrain/q/c;->h()Lcom/appbrain/q/c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    :cond_0
    return-void
.end method

.method protected static I()Lcom/appbrain/q/s$c;
    .locals 1

    invoke-static {}, Lcom/appbrain/q/r;->j()Lcom/appbrain/q/r;

    move-result-object v0

    return-object v0
.end method

.method protected static J()Lcom/appbrain/q/s$b;
    .locals 1

    invoke-static {}, Lcom/appbrain/q/p;->j()Lcom/appbrain/q/p;

    move-result-object v0

    return-object v0
.end method

.method protected static K()Lcom/appbrain/q/s$d;
    .locals 1

    invoke-static {}, Lcom/appbrain/q/b0;->i()Lcom/appbrain/q/b0;

    move-result-object v0

    return-object v0
.end method

.method private n()Lcom/appbrain/q/q;
    .locals 2

    sget-object v0, Lcom/appbrain/q/q$h;->h:Lcom/appbrain/q/q$h;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/appbrain/q/q;->w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/q/q;

    return-object v0
.end method

.method static o(Lcom/appbrain/q/q;Lcom/appbrain/q/k;Lcom/appbrain/q/n;)Lcom/appbrain/q/q;
    .locals 2

    sget-object v0, Lcom/appbrain/q/q$h;->f:Lcom/appbrain/q/q$h;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/appbrain/q/q;->w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appbrain/q/q;

    :try_start_0
    sget-object v0, Lcom/appbrain/q/q$h;->d:Lcom/appbrain/q/q$h;

    invoke-virtual {p0, v0, p1, p2}, Lcom/appbrain/q/q;->w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/appbrain/q/q;->G()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/appbrain/q/t;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/appbrain/q/t;

    throw p0

    :cond_0
    throw p0
.end method

.method protected static p(Lcom/appbrain/q/q;Ljava/io/InputStream;)Lcom/appbrain/q/q;
    .locals 1

    invoke-static {p1}, Lcom/appbrain/q/k;->b(Ljava/io/InputStream;)Lcom/appbrain/q/k;

    move-result-object p1

    invoke-static {}, Lcom/appbrain/q/n;->a()Lcom/appbrain/q/n;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/appbrain/q/q;->o(Lcom/appbrain/q/q;Lcom/appbrain/q/k;Lcom/appbrain/q/n;)Lcom/appbrain/q/q;

    move-result-object p0

    invoke-static {p0}, Lcom/appbrain/q/q;->D(Lcom/appbrain/q/q;)Lcom/appbrain/q/q;

    return-object p0
.end method

.method protected static q(Lcom/appbrain/q/q;[B)Lcom/appbrain/q/q;
    .locals 1

    invoke-static {}, Lcom/appbrain/q/n;->a()Lcom/appbrain/q/n;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/appbrain/q/q;->r(Lcom/appbrain/q/q;[BLcom/appbrain/q/n;)Lcom/appbrain/q/q;

    move-result-object p0

    invoke-static {p0}, Lcom/appbrain/q/q;->D(Lcom/appbrain/q/q;)Lcom/appbrain/q/q;

    return-object p0
.end method

.method private static r(Lcom/appbrain/q/q;[BLcom/appbrain/q/n;)Lcom/appbrain/q/q;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/appbrain/q/k;->c([B)Lcom/appbrain/q/k;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/appbrain/q/q;->o(Lcom/appbrain/q/q;Lcom/appbrain/q/k;Lcom/appbrain/q/n;)Lcom/appbrain/q/q;

    move-result-object p0
    :try_end_0
    .catch Lcom/appbrain/q/t; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/appbrain/q/k;->f(I)V
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1, p0}, Lcom/appbrain/q/t;->b(Lcom/appbrain/q/x;)Lcom/appbrain/q/t;

    throw p1
    :try_end_2
    .catch Lcom/appbrain/q/t; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    throw p0
.end method

.method protected static s(Lcom/appbrain/q/s$b;)Lcom/appbrain/q/s$b;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, Lcom/appbrain/q/s$b;->c(I)Lcom/appbrain/q/s$b;

    move-result-object p0

    return-object p0
.end method

.method protected static t(Lcom/appbrain/q/s$c;)Lcom/appbrain/q/s$c;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, Lcom/appbrain/q/s$c;->c(I)Lcom/appbrain/q/s$c;

    move-result-object p0

    return-object p0
.end method

.method protected static u(Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, Lcom/appbrain/q/s$d;->g(I)Lcom/appbrain/q/s$d;

    move-result-object p0

    return-object p0
.end method

.method static varargs x(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method protected final A(ILcom/appbrain/q/k;)Z
    .locals 2

    invoke-static {p1}, Lcom/appbrain/q/f;->a(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/appbrain/q/q;->E()V

    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0, p1, p2}, Lcom/appbrain/q/c;->g(ILcom/appbrain/q/k;)Z

    move-result p1

    return p1
.end method

.method final B(Lcom/appbrain/q/q$c;Lcom/appbrain/q/x;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p2, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/appbrain/q/q;->n()Lcom/appbrain/q/q;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p2, Lcom/appbrain/q/q;

    invoke-virtual {p0, p1, p2}, Lcom/appbrain/q/q;->z(Lcom/appbrain/q/q$i;Lcom/appbrain/q/q;)V

    return v0
.end method

.method public final F()Lcom/appbrain/q/q$a;
    .locals 2

    sget-object v0, Lcom/appbrain/q/q$h;->g:Lcom/appbrain/q/q$h;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/appbrain/q/q;->w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/q/q$a;

    return-object v0
.end method

.method protected final G()V
    .locals 2

    sget-object v0, Lcom/appbrain/q/q$h;->e:Lcom/appbrain/q/q$h;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/appbrain/q/q;->w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0}, Lcom/appbrain/q/c;->i()V

    return-void
.end method

.method public final H()Lcom/appbrain/q/q$a;
    .locals 2

    sget-object v0, Lcom/appbrain/q/q$h;->g:Lcom/appbrain/q/q$h;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/appbrain/q/q;->w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/q/q$a;

    invoke-virtual {v0, p0}, Lcom/appbrain/q/q$a;->q(Lcom/appbrain/q/q;)Lcom/appbrain/q/q$a;

    return-object v0
.end method

.method public final synthetic a()Lcom/appbrain/q/x;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/q;->n()Lcom/appbrain/q/q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/appbrain/q/x$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 3

    sget-object v0, Lcom/appbrain/q/q$h;->b:Lcom/appbrain/q/q$h;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/appbrain/q/q;->w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/appbrain/q/q;->n()Lcom/appbrain/q/q;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    sget-object v1, Lcom/appbrain/q/q$c;->a:Lcom/appbrain/q/q$c;

    check-cast p1, Lcom/appbrain/q/q;

    invoke-virtual {p0, v1, p1}, Lcom/appbrain/q/q;->z(Lcom/appbrain/q/q$i;Lcom/appbrain/q/q;)V
    :try_end_0
    .catch Lcom/appbrain/q/q$c$a; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2
.end method

.method public final f()Lcom/appbrain/q/a0;
    .locals 2

    sget-object v0, Lcom/appbrain/q/q$h;->i:Lcom/appbrain/q/q$h;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/appbrain/q/q;->w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/q/a0;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/appbrain/q/a;->b:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/appbrain/q/q$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appbrain/q/q$f;-><init>(B)V

    invoke-virtual {p0, v0, p0}, Lcom/appbrain/q/q;->z(Lcom/appbrain/q/q$i;Lcom/appbrain/q/q;)V

    invoke-static {v0}, Lcom/appbrain/q/q$f;->o(Lcom/appbrain/q/q$f;)I

    move-result v0

    iput v0, p0, Lcom/appbrain/q/a;->b:I

    :cond_0
    iget v0, p0, Lcom/appbrain/q/a;->b:I

    return v0
.end method

.method final m(Lcom/appbrain/q/q$f;)I
    .locals 2

    iget v0, p0, Lcom/appbrain/q/a;->b:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/appbrain/q/q$f;->o(Lcom/appbrain/q/q$f;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/appbrain/q/q$f;->p(Lcom/appbrain/q/q$f;I)I

    invoke-virtual {p0, p1, p0}, Lcom/appbrain/q/q;->z(Lcom/appbrain/q/q$i;Lcom/appbrain/q/q;)V

    invoke-static {p1}, Lcom/appbrain/q/q$f;->o(Lcom/appbrain/q/q$f;)I

    move-result v1

    iput v1, p0, Lcom/appbrain/q/a;->b:I

    invoke-static {p1, v0}, Lcom/appbrain/q/q$f;->p(Lcom/appbrain/q/q$f;I)I

    :cond_0
    iget p1, p0, Lcom/appbrain/q/a;->b:I

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appbrain/q/z;->a(Lcom/appbrain/q/x;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final v(Lcom/appbrain/q/q$h;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/appbrain/q/q;->w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected final y(II)V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/q;->E()V

    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0, p1, p2}, Lcom/appbrain/q/c;->b(II)Lcom/appbrain/q/c;

    return-void
.end method

.method final z(Lcom/appbrain/q/q$i;Lcom/appbrain/q/q;)V
    .locals 1

    sget-object v0, Lcom/appbrain/q/q$h;->c:Lcom/appbrain/q/q$h;

    invoke-virtual {p0, v0, p1, p2}, Lcom/appbrain/q/q;->w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    iget-object p2, p2, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-interface {p1, v0, p2}, Lcom/appbrain/q/q$i;->m(Lcom/appbrain/q/c;Lcom/appbrain/q/c;)Lcom/appbrain/q/c;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    return-void
.end method

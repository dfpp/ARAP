.class public final Lcom/appbrain/o/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/o/p$a;,
        Lcom/appbrain/o/p$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/appbrain/o/p$b;

.field private final i:Z


# direct methods
.method private constructor <init>(Lcom/appbrain/o/p$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/appbrain/o/p$a;->f(Lcom/appbrain/o/p$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/o/p;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/appbrain/o/p$a;->k(Lcom/appbrain/o/p$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/o/p;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/appbrain/o/p$a;->n(Lcom/appbrain/o/p$a;)I

    move-result v0

    iput v0, p0, Lcom/appbrain/o/p;->c:I

    invoke-static {p1}, Lcom/appbrain/o/p$a;->r(Lcom/appbrain/o/p$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appbrain/o/p;->d:Z

    invoke-static {p1}, Lcom/appbrain/o/p$a;->s(Lcom/appbrain/o/p$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/o/p;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/appbrain/o/p$a;->t(Lcom/appbrain/o/p$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/o/p;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/appbrain/o/p$a;->u(Lcom/appbrain/o/p$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/o/p;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/appbrain/o/p$a;->v(Lcom/appbrain/o/p$a;)Lcom/appbrain/o/p$b;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/o/p;->h:Lcom/appbrain/o/p$b;

    invoke-static {p1}, Lcom/appbrain/o/p$a;->w(Lcom/appbrain/o/p$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/o/p;->i:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/appbrain/o/p$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/o/p;-><init>(Lcom/appbrain/o/p$a;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/appbrain/o/p$a;
    .locals 2

    new-instance v0, Lcom/appbrain/o/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appbrain/o/p$a;-><init>(Ljava/lang/String;B)V

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    iget-boolean v4, p0, Lcom/appbrain/o/p;->i:Z

    if-eqz v4, :cond_1

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "TestableUrl does not use https: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/appbrain/o/p;->h:Lcom/appbrain/o/p$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/appbrain/o/p$b;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->m()Lcom/appbrain/o/k0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appbrain/o/k0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/appbrain/o/p;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/appbrain/o/p;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/o/p;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/appbrain/o/p;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/appbrain/o/p;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/o/p;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/appbrain/o/p;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/appbrain/o/p;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/appbrain/o/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/appbrain/o/p$a;
    .locals 3

    new-instance v0, Lcom/appbrain/o/p$a;

    iget-object v1, p0, Lcom/appbrain/o/p;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/o/p$a;-><init>(Ljava/lang/String;B)V

    iget-object v1, p0, Lcom/appbrain/o/p;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appbrain/o/p$a;->g(Lcom/appbrain/o/p$a;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lcom/appbrain/o/p;->c:I

    invoke-static {v0, v1}, Lcom/appbrain/o/p$a;->a(Lcom/appbrain/o/p$a;I)I

    iget-boolean v1, p0, Lcom/appbrain/o/p;->d:Z

    invoke-static {v0, v1}, Lcom/appbrain/o/p$a;->h(Lcom/appbrain/o/p$a;Z)Z

    iget-object v1, p0, Lcom/appbrain/o/p;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appbrain/o/p$a;->l(Lcom/appbrain/o/p$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/appbrain/o/p;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appbrain/o/p$a;->p(Lcom/appbrain/o/p$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/appbrain/o/p;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appbrain/o/p$a;->q(Lcom/appbrain/o/p$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/appbrain/o/p;->h:Lcom/appbrain/o/p$b;

    invoke-static {v0, v1}, Lcom/appbrain/o/p$a;->e(Lcom/appbrain/o/p$a;Lcom/appbrain/o/p$b;)Lcom/appbrain/o/p$b;

    iget-boolean v1, p0, Lcom/appbrain/o/p;->i:Z

    invoke-static {v0, v1}, Lcom/appbrain/o/p$a;->m(Lcom/appbrain/o/p$a;Z)Z

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/o/p;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/o/p;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

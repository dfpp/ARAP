.class public abstract Lcom/appbrain/q/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/q/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private m([BI)Lcom/appbrain/q/a$a;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p2, v0}, Lcom/appbrain/q/k;->d([BIIZ)Lcom/appbrain/q/k;

    move-result-object p1

    invoke-static {}, Lcom/appbrain/q/n;->a()Lcom/appbrain/q/n;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/appbrain/q/a$a;->k(Lcom/appbrain/q/k;Lcom/appbrain/q/n;)Lcom/appbrain/q/a$a;

    invoke-virtual {p1, v0}, Lcom/appbrain/q/k;->f(I)V
    :try_end_0
    .catch Lcom/appbrain/q/t; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "byte array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " threw an IOException (should never happen)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method

.method private static n(Ljava/lang/Iterable;)V
    .locals 1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method protected static o(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    instance-of v1, p0, Lcom/appbrain/q/w;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/appbrain/q/w;

    invoke-interface {v0}, Lcom/appbrain/q/w;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/q/a$a;->n(Ljava/lang/Iterable;)V

    :goto_0
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/appbrain/q/a$a;->n(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    throw v0

    :cond_3
    return-void

    :cond_4
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final synthetic e(Lcom/appbrain/q/x;)Lcom/appbrain/q/x$a;
    .locals 1

    invoke-interface {p0}, Lcom/appbrain/q/y;->a()Lcom/appbrain/q/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/appbrain/q/a;

    invoke-virtual {p0, p1}, Lcom/appbrain/q/a$a;->j(Lcom/appbrain/q/a;)Lcom/appbrain/q/a$a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract j(Lcom/appbrain/q/a;)Lcom/appbrain/q/a$a;
.end method

.method public abstract k(Lcom/appbrain/q/k;Lcom/appbrain/q/n;)Lcom/appbrain/q/a$a;
.end method

.method public final l([B)Lcom/appbrain/q/a$a;
    .locals 1

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/appbrain/q/a$a;->m([BI)Lcom/appbrain/q/a$a;

    return-object p0
.end method

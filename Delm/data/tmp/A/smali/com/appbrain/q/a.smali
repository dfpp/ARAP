.class public abstract Lcom/appbrain/q/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/q/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/q/a$a;
    }
.end annotation


# instance fields
.field protected b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appbrain/q/a;->b:I

    return-void
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Serializing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected static l(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appbrain/q/a$a;->o(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final h()[B
    .locals 3

    :try_start_0
    invoke-interface {p0}, Lcom/appbrain/q/x;->d()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/appbrain/q/l;->e([B)Lcom/appbrain/q/l;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/appbrain/q/x;->g(Lcom/appbrain/q/l;)V

    invoke-virtual {v1}, Lcom/appbrain/q/l;->C()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lcom/appbrain/q/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final k(Ljava/io/OutputStream;)V
    .locals 1

    invoke-interface {p0}, Lcom/appbrain/q/x;->d()I

    move-result v0

    invoke-static {v0}, Lcom/appbrain/q/l;->b(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/appbrain/q/l;->d(Ljava/io/OutputStream;I)Lcom/appbrain/q/l;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/appbrain/q/x;->g(Lcom/appbrain/q/l;)V

    invoke-virtual {p1}, Lcom/appbrain/q/l;->f()V

    return-void
.end method

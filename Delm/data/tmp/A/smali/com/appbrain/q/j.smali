.class public abstract Lcom/appbrain/q/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/q/j$c;,
        Lcom/appbrain/q/j$g;,
        Lcom/appbrain/q/j$f;,
        Lcom/appbrain/q/j$e;,
        Lcom/appbrain/q/j$b;,
        Lcom/appbrain/q/j$h;,
        Lcom/appbrain/q/j$d;
    }
.end annotation


# static fields
.field public static final c:Lcom/appbrain/q/j;

.field private static final d:Lcom/appbrain/q/j$d;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/appbrain/q/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    new-instance v0, Lcom/appbrain/q/j$g;

    sget-object v1, Lcom/appbrain/q/s;->b:[B

    invoke-direct {v0, v1}, Lcom/appbrain/q/j$g;-><init>([B)V

    sput-object v0, Lcom/appbrain/q/j;->c:Lcom/appbrain/q/j;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.content.Context"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    new-instance v0, Lcom/appbrain/q/j$h;

    invoke-direct {v0, v1}, Lcom/appbrain/q/j$h;-><init>(B)V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/appbrain/q/j$b;

    invoke-direct {v0, v1}, Lcom/appbrain/q/j$b;-><init>(B)V

    :goto_1
    sput-object v0, Lcom/appbrain/q/j;->d:Lcom/appbrain/q/j$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appbrain/q/j;->b:I

    return-void
.end method

.method static j(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beginning index larger than ending index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Beginning index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static l(Ljava/lang/String;)Lcom/appbrain/q/j;
    .locals 2

    new-instance v0, Lcom/appbrain/q/j$g;

    sget-object v1, Lcom/appbrain/q/s;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/appbrain/q/j$g;-><init>([B)V

    return-object v0
.end method

.method public static m([B)Lcom/appbrain/q/j;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/appbrain/q/j;->n([BII)Lcom/appbrain/q/j;

    move-result-object p0

    return-object p0
.end method

.method public static n([BII)Lcom/appbrain/q/j;
    .locals 2

    new-instance v0, Lcom/appbrain/q/j$g;

    sget-object v1, Lcom/appbrain/q/j;->d:Lcom/appbrain/q/j$d;

    invoke-interface {v1, p0, p1, p2}, Lcom/appbrain/q/j$d;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/appbrain/q/j$g;-><init>([B)V

    return-object v0
.end method

.method static r([B)Lcom/appbrain/q/j;
    .locals 1

    new-instance v0, Lcom/appbrain/q/j$g;

    invoke-direct {v0, p0}, Lcom/appbrain/q/j$g;-><init>([B)V

    return-object v0
.end method

.method static s([BII)Lcom/appbrain/q/j;
    .locals 1

    new-instance v0, Lcom/appbrain/q/j$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/appbrain/q/j$c;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public abstract e(I)B
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/appbrain/q/j;->b:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/appbrain/q/j;->q()I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/appbrain/q/j;->i(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/appbrain/q/j;->b:I

    :cond_1
    return v0
.end method

.method protected abstract i(II)I
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/j;->k()Lcom/appbrain/q/j$e;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/appbrain/q/j$e;
    .locals 1

    new-instance v0, Lcom/appbrain/q/j$a;

    invoke-direct {v0, p0}, Lcom/appbrain/q/j$a;-><init>(Lcom/appbrain/q/j;)V

    return-object v0
.end method

.method abstract o(Lcom/appbrain/q/i;)V
.end method

.method protected abstract p([BI)V
.end method

.method public abstract q()I
.end method

.method public final t()[B
    .locals 2

    invoke-virtual {p0}, Lcom/appbrain/q/j;->q()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appbrain/q/s;->b:[B

    return-object v0

    :cond_0
    new-array v1, v0, [B

    invoke-virtual {p0, v1, v0}, Lcom/appbrain/q/j;->p([BI)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/appbrain/q/j;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract u()Lcom/appbrain/q/k;
.end method

.method protected final v()I
    .locals 1

    iget v0, p0, Lcom/appbrain/q/j;->b:I

    return v0
.end method

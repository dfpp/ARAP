.class final Lcom/appbrain/q/r;
.super Lcom/appbrain/q/h;
.source ""

# interfaces
.implements Lcom/appbrain/q/s$c;
.implements Ljava/util/RandomAccess;


# static fields
.field private static final e:Lcom/appbrain/q/r;


# instance fields
.field private c:[I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/q/r;

    invoke-direct {v0}, Lcom/appbrain/q/r;-><init>()V

    sput-object v0, Lcom/appbrain/q/r;->e:Lcom/appbrain/q/r;

    invoke-virtual {v0}, Lcom/appbrain/q/h;->b()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/appbrain/q/r;-><init>([II)V

    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/q/h;-><init>()V

    iput-object p1, p0, Lcom/appbrain/q/r;->c:[I

    iput p2, p0, Lcom/appbrain/q/r;->d:I

    return-void
.end method

.method private i(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/appbrain/q/h;->e()V

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/appbrain/q/r;->d:I

    if-gt p1, v0, :cond_1

    iget-object v1, p0, Lcom/appbrain/q/r;->c:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/appbrain/q/r;->c:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/appbrain/q/r;->d:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/appbrain/q/r;->c:[I

    :goto_0
    iget-object v0, p0, Lcom/appbrain/q/r;->c:[I

    aput p2, v0, p1

    iget p1, p0, Lcom/appbrain/q/r;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appbrain/q/r;->d:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/appbrain/q/r;->l(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static j()Lcom/appbrain/q/r;
    .locals 1

    sget-object v0, Lcom/appbrain/q/r;->e:Lcom/appbrain/q/r;

    return-object v0
.end method

.method private k(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/appbrain/q/r;->d:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/appbrain/q/r;->l(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/appbrain/q/r;->d:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/appbrain/q/r;->i(II)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/appbrain/q/h;->e()V

    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/appbrain/q/r;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/appbrain/q/h;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_0
    check-cast p1, Lcom/appbrain/q/r;

    iget v0, p1, Lcom/appbrain/q/r;->d:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    iget v3, p0, Lcom/appbrain/q/r;->d:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/appbrain/q/r;->c:[I

    array-length v2, v0

    if-le v3, v2, :cond_2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/q/r;->c:[I

    :cond_2
    iget-object v0, p1, Lcom/appbrain/q/r;->c:[I

    iget-object v2, p0, Lcom/appbrain/q/r;->c:[I

    iget v4, p0, Lcom/appbrain/q/r;->d:I

    iget p1, p1, Lcom/appbrain/q/r;->d:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/appbrain/q/r;->d:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    :cond_4
    const/4 p1, 0x0

    throw p1
.end method

.method public final c(I)Lcom/appbrain/q/s$c;
    .locals 2

    iget v0, p0, Lcom/appbrain/q/r;->d:I

    if-lt p1, v0, :cond_0

    new-instance v0, Lcom/appbrain/q/r;

    iget-object v1, p0, Lcom/appbrain/q/r;->c:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget v1, p0, Lcom/appbrain/q/r;->d:I

    invoke-direct {v0, p1, v1}, Lcom/appbrain/q/r;-><init>([II)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final d(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/appbrain/q/r;->k(I)V

    iget-object v0, p0, Lcom/appbrain/q/r;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/appbrain/q/r;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/appbrain/q/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/appbrain/q/r;

    iget v1, p0, Lcom/appbrain/q/r;->d:I

    iget v2, p1, Lcom/appbrain/q/r;->d:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object p1, p1, Lcom/appbrain/q/r;->c:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/appbrain/q/r;->d:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/appbrain/q/r;->c:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final f(I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/q/r;->d:I

    invoke-direct {p0, v0, p1}, Lcom/appbrain/q/r;->i(II)V

    return-void
.end method

.method public final synthetic g(I)Lcom/appbrain/q/s$d;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appbrain/q/r;->c(I)Lcom/appbrain/q/s$c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appbrain/q/r;->d(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/appbrain/q/r;->d:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appbrain/q/r;->c:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/appbrain/q/h;->e()V

    invoke-direct {p0, p1}, Lcom/appbrain/q/r;->k(I)V

    iget-object v0, p0, Lcom/appbrain/q/r;->c:[I

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/appbrain/q/r;->d:I

    sub-int/2addr v3, p1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/appbrain/q/r;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/appbrain/q/r;->d:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/appbrain/q/h;->e()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/appbrain/q/r;->d:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/appbrain/q/r;->c:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/appbrain/q/r;->c:[I

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/appbrain/q/r;->d:I

    sub-int/2addr v2, v1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/appbrain/q/r;->d:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/appbrain/q/r;->d:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0}, Lcom/appbrain/q/h;->e()V

    invoke-direct {p0, p1}, Lcom/appbrain/q/r;->k(I)V

    iget-object v0, p0, Lcom/appbrain/q/r;->c:[I

    aget v1, v0, p1

    aput p2, v0, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/appbrain/q/r;->d:I

    return v0
.end method

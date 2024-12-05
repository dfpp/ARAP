.class public final Lcom/appbrain/q/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final f:Lcom/appbrain/q/c;


# instance fields
.field private a:I

.field private b:[I

.field private c:[Ljava/lang/Object;

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/appbrain/q/c;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/appbrain/q/c;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/appbrain/q/c;->f:Lcom/appbrain/q/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/appbrain/q/c;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/appbrain/q/c;->d:I

    iput p1, p0, Lcom/appbrain/q/c;->a:I

    iput-object p2, p0, Lcom/appbrain/q/c;->b:[I

    iput-object p3, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/appbrain/q/c;->e:Z

    return-void
.end method

.method public static a()Lcom/appbrain/q/c;
    .locals 1

    sget-object v0, Lcom/appbrain/q/c;->f:Lcom/appbrain/q/c;

    return-object v0
.end method

.method static c(Lcom/appbrain/q/c;Lcom/appbrain/q/c;)Lcom/appbrain/q/c;
    .locals 6

    iget v0, p0, Lcom/appbrain/q/c;->a:I

    iget v1, p1, Lcom/appbrain/q/c;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/appbrain/q/c;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Lcom/appbrain/q/c;->b:[I

    iget v3, p0, Lcom/appbrain/q/c;->a:I

    iget v4, p1, Lcom/appbrain/q/c;->a:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    iget p0, p0, Lcom/appbrain/q/c;->a:I

    iget p1, p1, Lcom/appbrain/q/c;->a:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/appbrain/q/c;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/appbrain/q/c;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private d(ILjava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/appbrain/q/c;->a:I

    iget-object v1, p0, Lcom/appbrain/q/c;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, v0, 0x1

    :goto_0
    iget v1, p0, Lcom/appbrain/q/c;->a:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/appbrain/q/c;->b:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/q/c;->b:[I

    iget-object v0, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/appbrain/q/c;->b:[I

    iget v1, p0, Lcom/appbrain/q/c;->a:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/appbrain/q/c;->a:I

    return-void
.end method

.method static h()Lcom/appbrain/q/c;
    .locals 1

    new-instance v0, Lcom/appbrain/q/c;

    invoke-direct {v0}, Lcom/appbrain/q/c;-><init>()V

    return-object v0
.end method

.method private k()V
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/q/c;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method final b(II)Lcom/appbrain/q/c;
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/q/c;->k()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appbrain/q/f;->b(II)I

    move-result p1

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/appbrain/q/c;->d(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Lcom/appbrain/q/l;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/appbrain/q/c;->a:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/appbrain/q/c;->b:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/appbrain/q/f;->c(I)I

    move-result v2

    invoke-static {v1}, Lcom/appbrain/q/f;->a(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/appbrain/q/l;->D(II)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/appbrain/q/t;->g()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p1, v2, v3}, Lcom/appbrain/q/l;->i(II)V

    iget-object v1, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/appbrain/q/c;

    invoke-virtual {v1, p1}, Lcom/appbrain/q/c;->e(Lcom/appbrain/q/l;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/appbrain/q/l;->i(II)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/appbrain/q/j;

    invoke-virtual {p1, v2, v1}, Lcom/appbrain/q/l;->k(ILcom/appbrain/q/j;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/appbrain/q/l;->z(IJ)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/appbrain/q/l;->j(IJ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/appbrain/q/c;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/appbrain/q/c;

    iget v2, p0, Lcom/appbrain/q/c;->a:I

    iget v3, p1, Lcom/appbrain/q/c;->a:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/appbrain/q/c;->b:[I

    iget-object v3, p1, Lcom/appbrain/q/c;->b:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method final f(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/appbrain/q/c;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/appbrain/q/c;->b:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/appbrain/q/f;->c(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/appbrain/q/z;->d(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final g(ILcom/appbrain/q/k;)Z
    .locals 5

    invoke-direct {p0}, Lcom/appbrain/q/c;->k()V

    invoke-static {p1}, Lcom/appbrain/q/f;->c(I)I

    move-result v0

    invoke-static {p1}, Lcom/appbrain/q/f;->a(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Lcom/appbrain/q/k;->q()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/appbrain/q/c;->d(ILjava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/appbrain/q/t;->g()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance v1, Lcom/appbrain/q/c;

    invoke-direct {v1}, Lcom/appbrain/q/c;-><init>()V

    :cond_3
    invoke-virtual {p2}, Lcom/appbrain/q/k;->a()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v3, p2}, Lcom/appbrain/q/c;->g(ILcom/appbrain/q/k;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    invoke-static {v0, v4}, Lcom/appbrain/q/f;->b(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/appbrain/q/k;->f(I)V

    invoke-direct {p0, p1, v1}, Lcom/appbrain/q/c;->d(ILjava/lang/Object;)V

    return v2

    :cond_5
    invoke-virtual {p2}, Lcom/appbrain/q/k;->v()Lcom/appbrain/q/j;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/appbrain/q/c;->d(ILjava/lang/Object;)V

    return v2

    :cond_6
    invoke-virtual {p2}, Lcom/appbrain/q/k;->o()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/appbrain/q/c;->d(ILjava/lang/Object;)V

    return v2

    :cond_7
    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/appbrain/q/c;->d(ILjava/lang/Object;)V

    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/appbrain/q/c;->a:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appbrain/q/c;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appbrain/q/c;->e:Z

    return-void
.end method

.method public final j()I
    .locals 6

    iget v0, p0, Lcom/appbrain/q/c;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/appbrain/q/c;->a:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/appbrain/q/c;->b:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/appbrain/q/f;->c(I)I

    move-result v3

    invoke-static {v2}, Lcom/appbrain/q/f;->a(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    invoke-static {v3}, Lcom/appbrain/q/l;->A(I)I

    move-result v2

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/appbrain/q/t;->g()Lcom/appbrain/q/t;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    invoke-static {v3}, Lcom/appbrain/q/l;->N(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/appbrain/q/c;

    invoke-virtual {v3}, Lcom/appbrain/q/c;->j()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/appbrain/q/j;

    invoke-static {v3, v2}, Lcom/appbrain/q/l;->s(ILcom/appbrain/q/j;)I

    move-result v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    invoke-static {v3}, Lcom/appbrain/q/l;->E(I)I

    move-result v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/appbrain/q/c;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/appbrain/q/l;->G(IJ)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v1, p0, Lcom/appbrain/q/c;->d:I

    return v1
.end method

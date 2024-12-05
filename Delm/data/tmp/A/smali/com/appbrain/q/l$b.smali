.class final Lcom/appbrain/q/l$b;
.super Lcom/appbrain/q/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final d:[B

.field private final e:I

.field private f:I


# direct methods
.method constructor <init>([BI)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/q/l;-><init>(B)V

    if-eqz p1, :cond_1

    or-int/lit8 v1, p2, 0x0

    array-length v2, p1

    add-int/lit8 v3, p2, 0x0

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    iput-object p1, p0, Lcom/appbrain/q/l$b;->d:[B

    iput v0, p0, Lcom/appbrain/q/l$b;->f:I

    iput v3, p0, Lcom/appbrain/q/l$b;->e:I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final D(II)V
    .locals 3

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$b;->i(II)V

    :try_start_0
    iget-object p1, p0, Lcom/appbrain/q/l$b;->d:[B

    iget v0, p0, Lcom/appbrain/q/l$b;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appbrain/q/l$b;->f:I

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    iget-object p1, p0, Lcom/appbrain/q/l$b;->d:[B

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/appbrain/q/l$b;->f:I

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object p1, p0, Lcom/appbrain/q/l$b;->d:[B

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appbrain/q/l$b;->f:I

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    iget-object p1, p0, Lcom/appbrain/q/l$b;->d:[B

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/appbrain/q/l$b;->f:I

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/appbrain/q/l$c;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/appbrain/q/l$b;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/appbrain/q/l$b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/appbrain/q/l$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a([BII)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/q/l$b;->d:[B

    iget v1, p0, Lcom/appbrain/q/l$b;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/appbrain/q/l$b;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/appbrain/q/l$b;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/appbrain/q/l$c;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/appbrain/q/l$b;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/appbrain/q/l$b;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/appbrain/q/l$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final i(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/appbrain/q/f;->b(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appbrain/q/l$b;->x(I)V

    return-void
.end method

.method public final j(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$b;->i(II)V

    invoke-virtual {p0, p2, p3}, Lcom/appbrain/q/l$b;->o(J)V

    return-void
.end method

.method public final k(ILcom/appbrain/q/j;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$b;->i(II)V

    invoke-virtual {p2}, Lcom/appbrain/q/j;->q()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appbrain/q/l$b;->x(I)V

    invoke-virtual {p2, p0}, Lcom/appbrain/q/j;->o(Lcom/appbrain/q/i;)V

    return-void
.end method

.method public final l(ILcom/appbrain/q/x;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$b;->i(II)V

    invoke-interface {p2}, Lcom/appbrain/q/x;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appbrain/q/l$b;->x(I)V

    invoke-interface {p2, p0}, Lcom/appbrain/q/x;->g(Lcom/appbrain/q/l;)V

    return-void
.end method

.method public final m(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$b;->i(II)V

    invoke-virtual {p0, p2}, Lcom/appbrain/q/l$b;->p(Ljava/lang/String;)V

    return-void
.end method

.method public final n(IZ)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$b;->i(II)V

    int-to-byte p1, p2

    :try_start_0
    iget-object p2, p0, Lcom/appbrain/q/l$b;->d:[B

    iget v1, p0, Lcom/appbrain/q/l$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/appbrain/q/l$b;->f:I

    aput-byte p1, p2, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/appbrain/q/l$c;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/appbrain/q/l$b;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    iget v0, p0, Lcom/appbrain/q/l$b;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/appbrain/q/l$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final o(J)V
    .locals 12

    invoke-static {}, Lcom/appbrain/q/l;->H()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appbrain/q/l$b;->r()I

    move-result v0

    const/16 v7, 0xa

    if-lt v0, v7, :cond_1

    invoke-static {}, Lcom/appbrain/q/l;->K()J

    move-result-wide v7

    iget v0, p0, Lcom/appbrain/q/l$b;->f:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    :goto_0
    and-long v9, p1, v4

    cmp-long v0, v9, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/q/l$b;->d:[B

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v7, v8, p1}, Lcom/appbrain/q/d;->b([BJB)V

    iget p1, p0, Lcom/appbrain/q/l$b;->f:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/appbrain/q/l$b;->f:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appbrain/q/l$b;->d:[B

    const-wide/16 v9, 0x1

    add-long/2addr v9, v7

    long-to-int v11, p1

    and-int/lit8 v11, v11, 0x7f

    or-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    invoke-static {v0, v7, v8, v11}, Lcom/appbrain/q/d;->b([BJB)V

    iget v0, p0, Lcom/appbrain/q/l$b;->f:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/appbrain/q/l$b;->f:I

    ushr-long/2addr p1, v1

    move-wide v7, v9

    goto :goto_0

    :cond_1
    :goto_1
    and-long v7, p1, v4

    cmp-long v0, v7, v2

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/q/l$b;->d:[B

    iget v1, p0, Lcom/appbrain/q/l$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/appbrain/q/l$b;->f:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/appbrain/q/l$b;->d:[B

    iget v7, p0, Lcom/appbrain/q/l$b;->f:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/appbrain/q/l$b;->f:I

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/appbrain/q/l$c;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/appbrain/q/l$b;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/appbrain/q/l$b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/appbrain/q/l$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public final p(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, Lcom/appbrain/q/l$b;->f:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/appbrain/q/l;->P(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/appbrain/q/l;->P(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    iput v1, p0, Lcom/appbrain/q/l$b;->f:I

    iget-object v3, p0, Lcom/appbrain/q/l$b;->d:[B

    invoke-virtual {p0}, Lcom/appbrain/q/l$b;->r()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lcom/appbrain/q/e;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcom/appbrain/q/l$b;->f:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/appbrain/q/l$b;->x(I)V

    iput v1, p0, Lcom/appbrain/q/l$b;->f:I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/appbrain/q/e;->a(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/appbrain/q/l$b;->x(I)V

    iget-object v1, p0, Lcom/appbrain/q/l$b;->d:[B

    iget v2, p0, Lcom/appbrain/q/l$b;->f:I

    invoke-virtual {p0}, Lcom/appbrain/q/l$b;->r()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/appbrain/q/e;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/appbrain/q/l$b;->f:I
    :try_end_0
    .catch Lcom/appbrain/q/e$c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/appbrain/q/l$c;

    invoke-direct {v0, p1}, Lcom/appbrain/q/l$c;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    iput v0, p0, Lcom/appbrain/q/l$b;->f:I

    invoke-virtual {p0, p1, v1}, Lcom/appbrain/q/l;->q(Ljava/lang/String;Lcom/appbrain/q/e$c;)V

    return-void
.end method

.method public final r()I
    .locals 2

    iget v0, p0, Lcom/appbrain/q/l$b;->e:I

    iget v1, p0, Lcom/appbrain/q/l$b;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final x(I)V
    .locals 7

    invoke-static {}, Lcom/appbrain/q/l;->H()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appbrain/q/l$b;->r()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    invoke-static {}, Lcom/appbrain/q/l;->K()J

    move-result-wide v2

    iget v0, p0, Lcom/appbrain/q/l$b;->f:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/q/l$b;->d:[B

    int-to-byte p1, p1

    invoke-static {v0, v2, v3, p1}, Lcom/appbrain/q/d;->b([BJB)V

    iget p1, p0, Lcom/appbrain/q/l$b;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/appbrain/q/l$b;->f:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appbrain/q/l$b;->d:[B

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    and-int/lit8 v6, p1, 0x7f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    invoke-static {v0, v2, v3, v6}, Lcom/appbrain/q/d;->b([BJB)V

    iget v0, p0, Lcom/appbrain/q/l$b;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/q/l$b;->f:I

    ushr-int/lit8 p1, p1, 0x7

    move-wide v2, v4

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/q/l$b;->d:[B

    iget v2, p0, Lcom/appbrain/q/l$b;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/appbrain/q/l$b;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/appbrain/q/l$b;->d:[B

    iget v2, p0, Lcom/appbrain/q/l$b;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/appbrain/q/l$b;->f:I

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/appbrain/q/l$c;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/appbrain/q/l$b;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/appbrain/q/l$b;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/appbrain/q/l$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final y(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$b;->i(II)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/appbrain/q/l$b;->x(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/appbrain/q/l$b;->o(J)V

    return-void
.end method

.method public final z(IJ)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$b;->i(II)V

    :try_start_0
    iget-object p1, p0, Lcom/appbrain/q/l$b;->d:[B

    iget v1, p0, Lcom/appbrain/q/l$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/appbrain/q/l$b;->f:I

    long-to-int v3, p2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    iget-object p1, p0, Lcom/appbrain/q/l$b;->d:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/appbrain/q/l$b;->f:I

    const/16 v3, 0x8

    shr-long v3, p2, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    iget-object p1, p0, Lcom/appbrain/q/l$b;->d:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/appbrain/q/l$b;->f:I

    const/16 v3, 0x10

    shr-long v3, p2, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    iget-object p1, p0, Lcom/appbrain/q/l$b;->d:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/appbrain/q/l$b;->f:I

    const/16 v3, 0x18

    shr-long v3, p2, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    iget-object p1, p0, Lcom/appbrain/q/l$b;->d:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/appbrain/q/l$b;->f:I

    const/16 v3, 0x20

    shr-long v3, p2, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    iget-object p1, p0, Lcom/appbrain/q/l$b;->d:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/appbrain/q/l$b;->f:I

    const/16 v3, 0x28

    shr-long v3, p2, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    iget-object p1, p0, Lcom/appbrain/q/l$b;->d:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/appbrain/q/l$b;->f:I

    const/16 v3, 0x30

    shr-long v3, p2, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    iget-object p1, p0, Lcom/appbrain/q/l$b;->d:[B

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/appbrain/q/l$b;->f:I

    const/16 v1, 0x38

    shr-long/2addr p2, v1

    long-to-int p3, p2

    and-int/lit16 p2, p3, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/appbrain/q/l$c;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/appbrain/q/l$b;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v1

    iget v1, p0, Lcom/appbrain/q/l$b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v1

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/appbrain/q/l$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

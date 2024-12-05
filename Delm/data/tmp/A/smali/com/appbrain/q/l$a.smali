.class abstract Lcom/appbrain/q/l$a;
.super Lcom/appbrain/q/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation


# instance fields
.field final d:[B

.field final e:I

.field f:I

.field g:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/q/l;-><init>(B)V

    if-ltz p1, :cond_0

    const/16 v0, 0x14

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/appbrain/q/l$a;->d:[B

    array-length p1, p1

    iput p1, p0, Lcom/appbrain/q/l$a;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bufferSize must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final Q(J)V
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lcom/appbrain/q/l;->H()Z

    move-result v1

    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x80

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/appbrain/q/l;->K()J

    move-result-wide v7

    iget v1, v0, Lcom/appbrain/q/l$a;->f:I

    int-to-long v9, v1

    add-long/2addr v7, v9

    move-wide/from16 v9, p1

    move-wide v11, v7

    :goto_0
    and-long v13, v9, v5

    const-wide/16 v15, 0x1

    cmp-long v1, v13, v3

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/appbrain/q/l$a;->d:[B

    add-long/2addr v15, v11

    long-to-int v2, v9

    int-to-byte v2, v2

    invoke-static {v1, v11, v12, v2}, Lcom/appbrain/q/d;->b([BJB)V

    sub-long v1, v15, v7

    long-to-int v2, v1

    iget v1, v0, Lcom/appbrain/q/l$a;->f:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/appbrain/q/l$a;->f:I

    iget v1, v0, Lcom/appbrain/q/l$a;->g:I

    add-int/2addr v1, v2

    :goto_1
    iput v1, v0, Lcom/appbrain/q/l$a;->g:I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/appbrain/q/l$a;->d:[B

    add-long/2addr v15, v11

    long-to-int v13, v9

    and-int/lit8 v13, v13, 0x7f

    or-int/lit16 v13, v13, 0x80

    int-to-byte v13, v13

    invoke-static {v1, v11, v12, v13}, Lcom/appbrain/q/d;->b([BJB)V

    ushr-long/2addr v9, v2

    move-wide v11, v15

    goto :goto_0

    :cond_1
    move-wide/from16 v7, p1

    :goto_2
    and-long v9, v7, v5

    cmp-long v1, v9, v3

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/appbrain/q/l$a;->d:[B

    iget v2, v0, Lcom/appbrain/q/l$a;->f:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/appbrain/q/l$a;->f:I

    long-to-int v3, v7

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v1, v0, Lcom/appbrain/q/l$a;->g:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/appbrain/q/l$a;->d:[B

    iget v9, v0, Lcom/appbrain/q/l$a;->f:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/appbrain/q/l$a;->f:I

    long-to-int v10, v7

    and-int/lit8 v10, v10, 0x7f

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    iget v1, v0, Lcom/appbrain/q/l$a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/appbrain/q/l$a;->g:I

    ushr-long/2addr v7, v2

    goto :goto_2
.end method

.method final R(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/appbrain/q/f;->b(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appbrain/q/l$a;->S(I)V

    return-void
.end method

.method final S(I)V
    .locals 8

    invoke-static {}, Lcom/appbrain/q/l;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/appbrain/q/l;->K()J

    move-result-wide v0

    iget v2, p0, Lcom/appbrain/q/l$a;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    move-wide v2, v0

    :goto_0
    and-int/lit8 v4, p1, -0x80

    const-wide/16 v5, 0x1

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/appbrain/q/l$a;->d:[B

    add-long/2addr v5, v2

    int-to-byte p1, p1

    invoke-static {v4, v2, v3, p1}, Lcom/appbrain/q/d;->b([BJB)V

    sub-long/2addr v5, v0

    long-to-int p1, v5

    iget v0, p0, Lcom/appbrain/q/l$a;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/appbrain/q/l$a;->f:I

    iget v0, p0, Lcom/appbrain/q/l$a;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/appbrain/q/l$a;->g:I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/appbrain/q/l$a;->d:[B

    add-long/2addr v5, v2

    and-int/lit8 v7, p1, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    invoke-static {v4, v2, v3, v7}, Lcom/appbrain/q/d;->b([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    move-wide v2, v5

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appbrain/q/l$a;->d:[B

    iget v1, p0, Lcom/appbrain/q/l$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/appbrain/q/l$a;->f:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iget p1, p0, Lcom/appbrain/q/l$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appbrain/q/l$a;->g:I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/appbrain/q/l$a;->d:[B

    iget v1, p0, Lcom/appbrain/q/l$a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/appbrain/q/l$a;->f:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/appbrain/q/l$a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/q/l$a;->g:I

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method public final r()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class final Lcom/appbrain/q/l$d;
.super Lcom/appbrain/q/l$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final h:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/appbrain/q/l$a;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/appbrain/q/l$d;->h:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private T([BII)V
    .locals 3

    iget v0, p0, Lcom/appbrain/q/l$a;->e:I

    iget v1, p0, Lcom/appbrain/q/l$a;->f:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    iget-object v0, p0, Lcom/appbrain/q/l$a;->d:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/appbrain/q/l$a;->f:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/appbrain/q/l$a;->f:I

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/appbrain/q/l$a;->d:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Lcom/appbrain/q/l$a;->e:I

    iput v1, p0, Lcom/appbrain/q/l$a;->f:I

    iget v1, p0, Lcom/appbrain/q/l$a;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/appbrain/q/l$a;->g:I

    invoke-direct {p0}, Lcom/appbrain/q/l$d;->U()V

    iget v0, p0, Lcom/appbrain/q/l$a;->e:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/q/l$a;->d:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/appbrain/q/l$a;->f:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appbrain/q/l$d;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iget p1, p0, Lcom/appbrain/q/l$a;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/appbrain/q/l$a;->g:I

    return-void
.end method

.method private U()V
    .locals 4

    iget-object v0, p0, Lcom/appbrain/q/l$d;->h:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/appbrain/q/l$a;->d:[B

    iget v2, p0, Lcom/appbrain/q/l$a;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/appbrain/q/l$a;->f:I

    return-void
.end method

.method private V(I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/q/l$a;->e:I

    iget v1, p0, Lcom/appbrain/q/l$a;->f:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-direct {p0}, Lcom/appbrain/q/l$d;->U()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final D(II)V
    .locals 3

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/appbrain/q/l$d;->V(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$a;->R(II)V

    iget-object p1, p0, Lcom/appbrain/q/l$a;->d:[B

    iget v0, p0, Lcom/appbrain/q/l$a;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appbrain/q/l$a;->f:I

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/appbrain/q/l$a;->f:I

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appbrain/q/l$a;->f:I

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/appbrain/q/l$a;->f:I

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    iget p1, p0, Lcom/appbrain/q/l$a;->g:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/appbrain/q/l$a;->g:I

    return-void
.end method

.method public final a([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appbrain/q/l$d;->T([BII)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget v0, p0, Lcom/appbrain/q/l$a;->f:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/appbrain/q/l$d;->U()V

    :cond_0
    return-void
.end method

.method public final i(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/appbrain/q/f;->b(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appbrain/q/l$d;->x(I)V

    return-void
.end method

.method public final j(IJ)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/appbrain/q/l$d;->V(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$a;->R(II)V

    invoke-virtual {p0, p2, p3}, Lcom/appbrain/q/l$a;->Q(J)V

    return-void
.end method

.method public final k(ILcom/appbrain/q/j;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$d;->i(II)V

    invoke-virtual {p2}, Lcom/appbrain/q/j;->q()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appbrain/q/l$d;->x(I)V

    invoke-virtual {p2, p0}, Lcom/appbrain/q/j;->o(Lcom/appbrain/q/i;)V

    return-void
.end method

.method public final l(ILcom/appbrain/q/x;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$d;->i(II)V

    invoke-interface {p2}, Lcom/appbrain/q/x;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/appbrain/q/l$d;->x(I)V

    invoke-interface {p2, p0}, Lcom/appbrain/q/x;->g(Lcom/appbrain/q/l;)V

    return-void
.end method

.method public final m(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$d;->i(II)V

    invoke-virtual {p0, p2}, Lcom/appbrain/q/l$d;->p(Ljava/lang/String;)V

    return-void
.end method

.method public final n(IZ)V
    .locals 2

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/appbrain/q/l$d;->V(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$a;->R(II)V

    int-to-byte p1, p2

    iget-object p2, p0, Lcom/appbrain/q/l$a;->d:[B

    iget v0, p0, Lcom/appbrain/q/l$a;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appbrain/q/l$a;->f:I

    aput-byte p1, p2, v0

    iget p1, p0, Lcom/appbrain/q/l$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appbrain/q/l$a;->g:I

    return-void
.end method

.method public final o(J)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/appbrain/q/l$d;->V(I)V

    invoke-virtual {p0, p1, p2}, Lcom/appbrain/q/l$a;->Q(J)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/appbrain/q/l;->P(I)I

    move-result v1

    add-int v2, v1, v0

    iget v3, p0, Lcom/appbrain/q/l$a;->e:I

    if-le v2, v3, :cond_0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/appbrain/q/e;->b(Ljava/lang/CharSequence;[BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appbrain/q/l$d;->x(I)V

    invoke-direct {p0, v1, v2, v0}, Lcom/appbrain/q/l$d;->T([BII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/appbrain/q/l$a;->e:I

    iget v3, p0, Lcom/appbrain/q/l$a;->f:I

    sub-int/2addr v0, v3

    if-le v2, v0, :cond_1

    invoke-direct {p0}, Lcom/appbrain/q/l$d;->U()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/appbrain/q/l;->P(I)I

    move-result v0

    iget v2, p0, Lcom/appbrain/q/l$a;->f:I
    :try_end_0
    .catch Lcom/appbrain/q/e$c; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    :try_start_1
    iput v1, p0, Lcom/appbrain/q/l$a;->f:I

    iget-object v3, p0, Lcom/appbrain/q/l$a;->d:[B

    iget v4, p0, Lcom/appbrain/q/l$a;->e:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lcom/appbrain/q/e;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v2, p0, Lcom/appbrain/q/l$a;->f:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/appbrain/q/l$a;->S(I)V

    iput v1, p0, Lcom/appbrain/q/l$a;->f:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/appbrain/q/e;->a(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/appbrain/q/l$a;->S(I)V

    iget-object v0, p0, Lcom/appbrain/q/l$a;->d:[B

    iget v1, p0, Lcom/appbrain/q/l$a;->f:I

    invoke-static {p1, v0, v1, v3}, Lcom/appbrain/q/e;->b(Ljava/lang/CharSequence;[BII)I

    move-result v0

    iput v0, p0, Lcom/appbrain/q/l$a;->f:I

    :goto_0
    iget v0, p0, Lcom/appbrain/q/l$a;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/appbrain/q/l$a;->g:I
    :try_end_1
    .catch Lcom/appbrain/q/e$c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/appbrain/q/l$c;

    invoke-direct {v1, v0}, Lcom/appbrain/q/l$c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    iget v1, p0, Lcom/appbrain/q/l$a;->g:I

    iget v3, p0, Lcom/appbrain/q/l$a;->f:I

    sub-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/appbrain/q/l$a;->g:I

    iput v2, p0, Lcom/appbrain/q/l$a;->f:I

    throw v0
    :try_end_2
    .catch Lcom/appbrain/q/e$c; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l;->q(Ljava/lang/String;Lcom/appbrain/q/e$c;)V

    return-void
.end method

.method public final x(I)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/appbrain/q/l$d;->V(I)V

    invoke-virtual {p0, p1}, Lcom/appbrain/q/l$a;->S(I)V

    return-void
.end method

.method public final y(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/appbrain/q/l$d;->V(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$a;->R(II)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/appbrain/q/l$a;->S(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/appbrain/q/l$a;->Q(J)V

    return-void
.end method

.method public final z(IJ)V
    .locals 7

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/appbrain/q/l$d;->V(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/q/l$a;->R(II)V

    iget-object p1, p0, Lcom/appbrain/q/l$a;->d:[B

    iget v0, p0, Lcom/appbrain/q/l$a;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appbrain/q/l$a;->f:I

    const-wide/16 v2, 0xff

    and-long v4, p2, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, p1, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/appbrain/q/l$a;->f:I

    const/16 v4, 0x8

    shr-long v5, p2, v4

    and-long/2addr v5, v2

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, p1, v1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appbrain/q/l$a;->f:I

    const/16 v5, 0x10

    shr-long v5, p2, v5

    and-long/2addr v5, v2

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, p1, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/appbrain/q/l$a;->f:I

    const/16 v5, 0x18

    shr-long v5, p2, v5

    and-long/2addr v2, v5

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appbrain/q/l$a;->f:I

    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/appbrain/q/l$a;->f:I

    const/16 v2, 0x28

    shr-long v2, p2, v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/appbrain/q/l$a;->f:I

    const/16 v2, 0x30

    shr-long v2, p2, v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/appbrain/q/l$a;->f:I

    const/16 v0, 0x38

    shr-long/2addr p2, v0

    long-to-int p3, p2

    and-int/lit16 p2, p3, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v1

    iget p1, p0, Lcom/appbrain/q/l$a;->g:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/appbrain/q/l$a;->g:I

    return-void
.end method

.class public final Lcom/appbrain/q/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:[B

.field private final b:Z

.field private c:I

.field private d:I

.field private e:I

.field private final f:Ljava/io/InputStream;

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appbrain/q/k;->h:Z

    const v1, 0x7fffffff

    iput v1, p0, Lcom/appbrain/q/k;->j:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/appbrain/q/k;->l:I

    const/high16 v1, 0x4000000

    iput v1, p0, Lcom/appbrain/q/k;->m:I

    const/16 v1, 0x1000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/appbrain/q/k;->a:[B

    iput v0, p0, Lcom/appbrain/q/k;->e:I

    iput v0, p0, Lcom/appbrain/q/k;->i:I

    iput-object p1, p0, Lcom/appbrain/q/k;->f:Ljava/io/InputStream;

    iput-boolean v0, p0, Lcom/appbrain/q/k;->b:Z

    return-void
.end method

.method private constructor <init>([BIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appbrain/q/k;->h:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/appbrain/q/k;->j:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/appbrain/q/k;->l:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/appbrain/q/k;->m:I

    iput-object p1, p0, Lcom/appbrain/q/k;->a:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/appbrain/q/k;->c:I

    iput p2, p0, Lcom/appbrain/q/k;->e:I

    neg-int p1, p2

    iput p1, p0, Lcom/appbrain/q/k;->i:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/appbrain/q/k;->f:Ljava/io/InputStream;

    iput-boolean p4, p0, Lcom/appbrain/q/k;->b:Z

    return-void
.end method

.method private A()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/appbrain/q/k;->E()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/appbrain/q/t;->d()Lcom/appbrain/q/t;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private B()I
    .locals 4

    iget v0, p0, Lcom/appbrain/q/k;->e:I

    iget v1, p0, Lcom/appbrain/q/k;->c:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/appbrain/q/k;->l(I)V

    iget v0, p0, Lcom/appbrain/q/k;->e:I

    :cond_0
    iget-object v1, p0, Lcom/appbrain/q/k;->a:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/appbrain/q/k;->e:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private C()J
    .locals 9

    iget v0, p0, Lcom/appbrain/q/k;->e:I

    iget v1, p0, Lcom/appbrain/q/k;->c:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/appbrain/q/k;->l(I)V

    iget v0, p0, Lcom/appbrain/q/k;->e:I

    :cond_0
    iget-object v1, p0, Lcom/appbrain/q/k;->a:[B

    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/appbrain/q/k;->e:I

    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x6

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0
.end method

.method private D()V
    .locals 3

    iget v0, p0, Lcom/appbrain/q/k;->c:I

    iget v1, p0, Lcom/appbrain/q/k;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/q/k;->c:I

    iget v1, p0, Lcom/appbrain/q/k;->i:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/appbrain/q/k;->j:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/appbrain/q/k;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/q/k;->c:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/appbrain/q/k;->d:I

    return-void
.end method

.method private E()B
    .locals 3

    iget v0, p0, Lcom/appbrain/q/k;->e:I

    iget v1, p0, Lcom/appbrain/q/k;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/appbrain/q/k;->l(I)V

    :cond_0
    iget-object v0, p0, Lcom/appbrain/q/k;->a:[B

    iget v1, p0, Lcom/appbrain/q/k;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/appbrain/q/k;->e:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public static b(Ljava/io/InputStream;)Lcom/appbrain/q/k;
    .locals 1

    new-instance v0, Lcom/appbrain/q/k;

    invoke-direct {v0, p0}, Lcom/appbrain/q/k;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static c([B)Lcom/appbrain/q/k;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/appbrain/q/k;->d([BIIZ)Lcom/appbrain/q/k;

    move-result-object p0

    return-object p0
.end method

.method static d([BIIZ)Lcom/appbrain/q/k;
    .locals 1

    new-instance v0, Lcom/appbrain/q/k;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/appbrain/q/k;-><init>([BIIZ)V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/appbrain/q/k;->h(I)I
    :try_end_0
    .catch Lcom/appbrain/q/t; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private l(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/q/k;->n(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/appbrain/q/t;->a()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1
.end method

.method private n(I)Z
    .locals 5

    :cond_0
    iget v0, p0, Lcom/appbrain/q/k;->e:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/appbrain/q/k;->c:I

    if-le v1, v2, :cond_7

    iget v1, p0, Lcom/appbrain/q/k;->i:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget v3, p0, Lcom/appbrain/q/k;->j:I

    const/4 v4, 0x0

    if-le v1, v3, :cond_1

    return v4

    :cond_1
    iget-object v1, p0, Lcom/appbrain/q/k;->f:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    if-lez v0, :cond_3

    if-le v2, v0, :cond_2

    iget-object v1, p0, Lcom/appbrain/q/k;->a:[B

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v1, p0, Lcom/appbrain/q/k;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/appbrain/q/k;->i:I

    iget v1, p0, Lcom/appbrain/q/k;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/appbrain/q/k;->c:I

    iput v4, p0, Lcom/appbrain/q/k;->e:I

    :cond_3
    iget-object v0, p0, Lcom/appbrain/q/k;->f:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/appbrain/q/k;->a:[B

    iget v2, p0, Lcom/appbrain/q/k;->c:I

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    if-lt v0, v1, :cond_5

    iget-object v1, p0, Lcom/appbrain/q/k;->a:[B

    array-length v1, v1

    if-gt v0, v1, :cond_5

    if-lez v0, :cond_6

    iget v1, p0, Lcom/appbrain/q/k;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/appbrain/q/k;->c:I

    iget v0, p0, Lcom/appbrain/q/k;->i:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/appbrain/q/k;->m:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_4

    invoke-direct {p0}, Lcom/appbrain/q/k;->D()V

    iget v0, p0, Lcom/appbrain/q/k;->c:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-static {}, Lcom/appbrain/q/t;->i()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return v4

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refillBuffer() called when "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method private p(I)[B
    .locals 12

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Lcom/appbrain/q/s;->b:[B

    return-object p1

    :cond_0
    invoke-static {}, Lcom/appbrain/q/t;->c()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1

    :cond_1
    iget v0, p0, Lcom/appbrain/q/k;->i:I

    iget v1, p0, Lcom/appbrain/q/k;->e:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/appbrain/q/k;->m:I

    if-gt v2, v3, :cond_c

    iget v3, p0, Lcom/appbrain/q/k;->j:I

    if-gt v2, v3, :cond_b

    iget-object v2, p0, Lcom/appbrain/q/k;->f:Ljava/io/InputStream;

    if-eqz v2, :cond_a

    iget v3, p0, Lcom/appbrain/q/k;->c:I

    sub-int v4, v3, v1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/appbrain/q/k;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/appbrain/q/k;->e:I

    iput v0, p0, Lcom/appbrain/q/k;->c:I

    sub-int v3, p1, v4

    const/4 v5, -0x1

    const/16 v6, 0x1000

    if-lt v3, v6, :cond_7

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v3, v2, :cond_2

    goto :goto_3

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez v3, :cond_5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v8, v7, [B

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_4

    iget-object v10, p0, Lcom/appbrain/q/k;->f:Ljava/io/InputStream;

    sub-int v11, v7, v9

    invoke-virtual {v10, v8, v9, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v10, v5, :cond_3

    iget v11, p0, Lcom/appbrain/q/k;->i:I

    add-int/2addr v11, v10

    iput v11, p0, Lcom/appbrain/q/k;->i:I

    add-int/2addr v9, v10

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/appbrain/q/t;->a()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1

    :cond_4
    sub-int/2addr v3, v7

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-array p1, p1, [B

    iget-object v3, p0, Lcom/appbrain/q/k;->a:[B

    invoke-static {v3, v1, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v3, v2

    invoke-static {v2, v0, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v4, v2

    goto :goto_2

    :cond_6
    return-object p1

    :cond_7
    :goto_3
    new-array v2, p1, [B

    iget-object v3, p0, Lcom/appbrain/q/k;->a:[B

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-ge v4, p1, :cond_9

    iget-object v0, p0, Lcom/appbrain/q/k;->f:Ljava/io/InputStream;

    sub-int v1, p1, v4

    invoke-virtual {v0, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v5, :cond_8

    iget v1, p0, Lcom/appbrain/q/k;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/appbrain/q/k;->i:I

    add-int/2addr v4, v0

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/appbrain/q/t;->a()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1

    :cond_9
    return-object v2

    :cond_a
    invoke-static {}, Lcom/appbrain/q/t;->a()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1

    :cond_b
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/appbrain/q/k;->r(I)V

    invoke-static {}, Lcom/appbrain/q/t;->a()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1

    :cond_c
    invoke-static {}, Lcom/appbrain/q/t;->i()Lcom/appbrain/q/t;

    move-result-object p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private r(I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/q/k;->c:I

    iget v1, p0, Lcom/appbrain/q/k;->e:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/appbrain/q/k;->e:I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/appbrain/q/k;->s(I)V

    return-void
.end method

.method private s(I)V
    .locals 4

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/appbrain/q/k;->i:I

    iget v1, p0, Lcom/appbrain/q/k;->e:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/appbrain/q/k;->j:I

    if-gt v2, v3, :cond_1

    iget v0, p0, Lcom/appbrain/q/k;->c:I

    sub-int v1, v0, v1

    iput v0, p0, Lcom/appbrain/q/k;->e:I

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/appbrain/q/k;->l(I)V

    sub-int v2, p1, v1

    iget v3, p0, Lcom/appbrain/q/k;->c:I

    if-le v2, v3, :cond_0

    add-int/2addr v1, v3

    iput v3, p0, Lcom/appbrain/q/k;->e:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/appbrain/q/k;->e:I

    return-void

    :cond_1
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/appbrain/q/k;->r(I)V

    invoke-static {}, Lcom/appbrain/q/t;->a()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {}, Lcom/appbrain/q/t;->c()Lcom/appbrain/q/t;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private z()J
    .locals 11

    iget v0, p0, Lcom/appbrain/q/k;->e:I

    iget v1, p0, Lcom/appbrain/q/k;->c:I

    if-eq v1, v0, :cond_9

    iget-object v2, p0, Lcom/appbrain/q/k;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lcom/appbrain/q/k;->e:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_9

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_3
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long/2addr v1, v3

    move-wide v2, v1

    move v1, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long/2addr v3, v5

    :goto_3
    move-wide v2, v3

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_3

    :cond_8
    move v1, v0

    goto :goto_3

    :goto_4
    iput v1, p0, Lcom/appbrain/q/k;->e:I

    return-wide v2

    :cond_9
    invoke-direct {p0}, Lcom/appbrain/q/k;->A()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget v0, p0, Lcom/appbrain/q/k;->e:I

    iget v1, p0, Lcom/appbrain/q/k;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/appbrain/q/k;->n(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iput v3, p0, Lcom/appbrain/q/k;->g:I

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/appbrain/q/k;->x()I

    move-result v0

    iput v0, p0, Lcom/appbrain/q/k;->g:I

    invoke-static {v0}, Lcom/appbrain/q/f;->c(I)I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/appbrain/q/k;->g:I

    return v0

    :cond_2
    invoke-static {}, Lcom/appbrain/q/t;->e()Lcom/appbrain/q/t;

    move-result-object v0

    throw v0
.end method

.method public final e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;
    .locals 3

    invoke-virtual {p0}, Lcom/appbrain/q/k;->x()I

    move-result v0

    iget v1, p0, Lcom/appbrain/q/k;->k:I

    iget v2, p0, Lcom/appbrain/q/k;->l:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/appbrain/q/k;->h(I)I

    move-result v0

    iget v1, p0, Lcom/appbrain/q/k;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/appbrain/q/k;->k:I

    invoke-interface {p1, p0, p2}, Lcom/appbrain/q/a0;->b(Lcom/appbrain/q/k;Lcom/appbrain/q/n;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/q/x;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/appbrain/q/k;->f(I)V

    iget p2, p0, Lcom/appbrain/q/k;->k:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/appbrain/q/k;->k:I

    invoke-virtual {p0, v0}, Lcom/appbrain/q/k;->j(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/appbrain/q/t;->h()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1
.end method

.method public final f(I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/q/k;->g:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/appbrain/q/t;->f()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1
.end method

.method public final g()D
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/q/k;->C()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final h(I)I
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/appbrain/q/k;->i:I

    iget v1, p0, Lcom/appbrain/q/k;->e:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/appbrain/q/k;->j:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/appbrain/q/k;->j:I

    invoke-direct {p0}, Lcom/appbrain/q/k;->D()V

    return v0

    :cond_0
    invoke-static {}, Lcom/appbrain/q/t;->a()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/appbrain/q/t;->c()Lcom/appbrain/q/t;

    move-result-object p1

    throw p1
.end method

.method public final i()F
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/k;->B()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lcom/appbrain/q/k;->j:I

    invoke-direct {p0}, Lcom/appbrain/q/k;->D()V

    return-void
.end method

.method public final k()J
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/q/k;->z()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()I
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/k;->x()I

    move-result v0

    return v0
.end method

.method public final o()J
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/q/k;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()I
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/k;->B()I

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 5

    invoke-direct {p0}, Lcom/appbrain/q/k;->z()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final u()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/appbrain/q/k;->x()I

    move-result v0

    iget v1, p0, Lcom/appbrain/q/k;->c:I

    iget v2, p0, Lcom/appbrain/q/k;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/appbrain/q/k;->a:[B

    iget v3, p0, Lcom/appbrain/q/k;->e:I

    sget-object v4, Lcom/appbrain/q/s;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/appbrain/q/k;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/appbrain/q/k;->e:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    iget v1, p0, Lcom/appbrain/q/k;->c:I

    if-gt v0, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/appbrain/q/k;->l(I)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/appbrain/q/k;->a:[B

    iget v3, p0, Lcom/appbrain/q/k;->e:I

    sget-object v4, Lcom/appbrain/q/s;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/appbrain/q/k;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/appbrain/q/k;->e:I

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/appbrain/q/k;->p(I)[B

    move-result-object v0

    sget-object v2, Lcom/appbrain/q/s;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final v()Lcom/appbrain/q/j;
    .locals 3

    invoke-virtual {p0}, Lcom/appbrain/q/k;->x()I

    move-result v0

    iget v1, p0, Lcom/appbrain/q/k;->c:I

    iget v2, p0, Lcom/appbrain/q/k;->e:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    if-lez v0, :cond_1

    iget-boolean v1, p0, Lcom/appbrain/q/k;->b:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/appbrain/q/k;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appbrain/q/k;->a:[B

    invoke-static {v1, v2, v0}, Lcom/appbrain/q/j;->s([BII)Lcom/appbrain/q/j;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/appbrain/q/k;->a:[B

    iget v2, p0, Lcom/appbrain/q/k;->e:I

    invoke-static {v1, v2, v0}, Lcom/appbrain/q/j;->n([BII)Lcom/appbrain/q/j;

    move-result-object v1

    :goto_0
    iget v2, p0, Lcom/appbrain/q/k;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/appbrain/q/k;->e:I

    return-object v1

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/appbrain/q/j;->c:Lcom/appbrain/q/j;

    return-object v0

    :cond_2
    invoke-direct {p0, v0}, Lcom/appbrain/q/k;->p(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/q/j;->r([B)Lcom/appbrain/q/j;

    move-result-object v0

    return-object v0
.end method

.method public final w()I
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/k;->x()I

    move-result v0

    return v0
.end method

.method public final x()I
    .locals 5

    iget v0, p0, Lcom/appbrain/q/k;->e:I

    iget v1, p0, Lcom/appbrain/q/k;->c:I

    if-eq v1, v0, :cond_6

    iget-object v2, p0, Lcom/appbrain/q/k;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    iput v3, p0, Lcom/appbrain/q/k;->e:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    :cond_5
    :goto_0
    iput v1, p0, Lcom/appbrain/q/k;->e:I

    return v0

    :cond_6
    invoke-direct {p0}, Lcom/appbrain/q/k;->A()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final y()I
    .locals 3

    iget v0, p0, Lcom/appbrain/q/k;->j:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v1, p0, Lcom/appbrain/q/k;->i:I

    iget v2, p0, Lcom/appbrain/q/k;->e:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

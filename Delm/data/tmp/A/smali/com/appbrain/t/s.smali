.class public final Lcom/appbrain/t/s;
.super Lcom/appbrain/q/q;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/t/s$a;
    }
.end annotation


# static fields
.field private static final m:Lcom/appbrain/t/s;

.field private static volatile n:Lcom/appbrain/q/a0;


# instance fields
.field private e:I

.field private f:Lcom/appbrain/t/j;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/t/s;

    invoke-direct {v0}, Lcom/appbrain/t/s;-><init>()V

    sput-object v0, Lcom/appbrain/t/s;->m:Lcom/appbrain/t/s;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->G()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/q;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/appbrain/t/s;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/t/s;->j:Ljava/lang/String;

    return-void
.end method

.method public static L()Lcom/appbrain/t/s$a;
    .locals 1

    sget-object v0, Lcom/appbrain/t/s;->m:Lcom/appbrain/t/s;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v0

    check-cast v0, Lcom/appbrain/t/s$a;

    return-object v0
.end method

.method static synthetic M(Lcom/appbrain/t/s;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/s;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/t/s;->e:I

    iput p1, p0, Lcom/appbrain/t/s;->h:I

    return-void
.end method

.method static synthetic N(Lcom/appbrain/t/s;Lcom/appbrain/t/j;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/appbrain/t/s;->f:Lcom/appbrain/t/j;

    iget p1, p0, Lcom/appbrain/t/s;->e:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appbrain/t/s;->e:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic O(Lcom/appbrain/t/s;Lcom/appbrain/t/t;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/s;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/t/s;->e:I

    invoke-virtual {p1}, Lcom/appbrain/t/t;->c()I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/s;->g:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic P(Lcom/appbrain/t/s;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/s;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/appbrain/t/s;->e:I

    iput-object p1, p0, Lcom/appbrain/t/s;->j:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic Q(Lcom/appbrain/t/s;Z)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/s;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/t/s;->e:I

    iput-boolean p1, p0, Lcom/appbrain/t/s;->i:Z

    return-void
.end method

.method public static R()Lcom/appbrain/t/s;
    .locals 1

    sget-object v0, Lcom/appbrain/t/s;->m:Lcom/appbrain/t/s;

    return-object v0
.end method

.method static synthetic S(Lcom/appbrain/t/s;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/s;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/appbrain/t/s;->e:I

    iput p1, p0, Lcom/appbrain/t/s;->k:I

    return-void
.end method

.method static synthetic T()Lcom/appbrain/t/s;
    .locals 1

    sget-object v0, Lcom/appbrain/t/s;->m:Lcom/appbrain/t/s;

    return-object v0
.end method

.method static synthetic U(Lcom/appbrain/t/s;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/s;->e:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/appbrain/t/s;->e:I

    iput p1, p0, Lcom/appbrain/t/s;->l:I

    return-void
.end method

.method private V()Lcom/appbrain/t/j;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/s;->f:Lcom/appbrain/t/j;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appbrain/t/j;->i1()Lcom/appbrain/t/j;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private W()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private X()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Y()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Z()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private a0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final d()I
    .locals 3

    iget v0, p0, Lcom/appbrain/q/q;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/appbrain/t/s;->V()Lcom/appbrain/t/j;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->t(ILcom/appbrain/q/x;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    iget v1, p0, Lcom/appbrain/t/s;->g:I

    invoke-static {v0, v1}, Lcom/appbrain/q/l;->J(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x7

    iget v1, p0, Lcom/appbrain/t/s;->h:I

    invoke-static {v0, v1}, Lcom/appbrain/q/l;->F(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    invoke-static {v1}, Lcom/appbrain/q/l;->M(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/appbrain/t/s;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/16 v0, 0xa

    iget v1, p0, Lcom/appbrain/t/s;->k:I

    invoke-static {v0, v1}, Lcom/appbrain/q/l;->F(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_6
    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/16 v0, 0xb

    iget v1, p0, Lcom/appbrain/t/s;->l:I

    invoke-static {v0, v1}, Lcom/appbrain/q/l;->F(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_7
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0}, Lcom/appbrain/q/c;->j()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/appbrain/q/q;->d:I

    return v2
.end method

.method public final g(Lcom/appbrain/q/l;)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/appbrain/t/s;->V()Lcom/appbrain/t/j;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->l(ILcom/appbrain/q/x;)V

    :cond_0
    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/appbrain/t/s;->g:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->y(II)V

    :cond_1
    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x7

    iget v1, p0, Lcom/appbrain/t/s;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->y(II)V

    :cond_2
    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/appbrain/t/s;->i:Z

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_3
    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/appbrain/t/s;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/16 v0, 0xa

    iget v1, p0, Lcom/appbrain/t/s;->k:I

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->y(II)V

    :cond_5
    iget v0, p0, Lcom/appbrain/t/s;->e:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/16 v0, 0xb

    iget v1, p0, Lcom/appbrain/t/s;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->y(II)V

    :cond_6
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0, p1}, Lcom/appbrain/q/c;->e(Lcom/appbrain/q/l;)V

    return-void
.end method

.method protected final w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/appbrain/t/k;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/appbrain/t/s;->n:Lcom/appbrain/q/a0;

    if-nez p1, :cond_1

    const-class p1, Lcom/appbrain/t/s;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/appbrain/t/s;->n:Lcom/appbrain/q/a0;

    if-nez p2, :cond_0

    new-instance p2, Lcom/appbrain/q/q$b;

    sget-object p3, Lcom/appbrain/t/s;->m:Lcom/appbrain/t/s;

    invoke-direct {p2, p3}, Lcom/appbrain/q/q$b;-><init>(Lcom/appbrain/q/q;)V

    sput-object p2, Lcom/appbrain/t/s;->n:Lcom/appbrain/q/a0;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/appbrain/t/s;->n:Lcom/appbrain/q/a0;

    return-object p1

    :pswitch_1
    check-cast p2, Lcom/appbrain/q/k;

    check-cast p3, Lcom/appbrain/q/n;

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_e

    :try_start_1
    invoke-virtual {p2}, Lcom/appbrain/q/k;->a()I

    move-result v2

    if-eqz v2, :cond_d

    const/16 v3, 0xa

    if-eq v2, v3, :cond_a

    const/16 v3, 0x30

    if-eq v2, v3, :cond_8

    const/16 v3, 0x38

    if-eq v2, v3, :cond_7

    const/16 v3, 0x40

    if-eq v2, v3, :cond_6

    const/16 v4, 0x4a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x50

    if-eq v2, v4, :cond_4

    const/16 v4, 0x58

    if-eq v2, v4, :cond_3

    invoke-virtual {p0, v2, p2}, Lcom/appbrain/q/q;->A(ILcom/appbrain/q/k;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    :cond_3
    iget v2, p0, Lcom/appbrain/t/s;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/appbrain/t/s;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result v2

    iput v2, p0, Lcom/appbrain/t/s;->l:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/appbrain/t/s;->e:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/appbrain/t/s;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result v2

    iput v2, p0, Lcom/appbrain/t/s;->k:I

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/appbrain/t/s;->e:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/appbrain/t/s;->e:I

    iput-object v2, p0, Lcom/appbrain/t/s;->j:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/appbrain/t/s;->e:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/appbrain/t/s;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result v2

    iput-boolean v2, p0, Lcom/appbrain/t/s;->i:Z

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/appbrain/t/s;->e:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/appbrain/t/s;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result v2

    iput v2, p0, Lcom/appbrain/t/s;->h:I

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Lcom/appbrain/q/k;->w()I

    move-result v2

    invoke-static {v2}, Lcom/appbrain/t/t;->d(I)Lcom/appbrain/t/t;

    move-result-object v3

    if-nez v3, :cond_9

    const/4 v3, 0x6

    invoke-super {p0, v3, v2}, Lcom/appbrain/q/q;->y(II)V

    goto :goto_1

    :cond_9
    iget v3, p0, Lcom/appbrain/t/s;->e:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/appbrain/t/s;->e:I

    iput v2, p0, Lcom/appbrain/t/s;->g:I

    goto/16 :goto_1

    :cond_a
    iget v2, p0, Lcom/appbrain/t/s;->e:I

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_b

    iget-object v2, p0, Lcom/appbrain/t/s;->f:Lcom/appbrain/t/j;

    invoke-virtual {v2}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v2

    check-cast v2, Lcom/appbrain/t/j$a;

    goto :goto_2

    :cond_b
    move-object v2, v1

    :goto_2
    invoke-static {}, Lcom/appbrain/t/j;->m1()Lcom/appbrain/q/a0;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/appbrain/q/k;->e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object v3

    check-cast v3, Lcom/appbrain/t/j;

    iput-object v3, p0, Lcom/appbrain/t/s;->f:Lcom/appbrain/t/j;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v3}, Lcom/appbrain/q/q$a;->q(Lcom/appbrain/q/q;)Lcom/appbrain/q/q$a;

    invoke-virtual {v2}, Lcom/appbrain/q/q$a;->t()Lcom/appbrain/q/q;

    move-result-object v2

    check-cast v2, Lcom/appbrain/t/j;

    iput-object v2, p0, Lcom/appbrain/t/s;->f:Lcom/appbrain/t/j;

    :cond_c
    iget v2, p0, Lcom/appbrain/t/s;->e:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/appbrain/t/s;->e:I
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_d
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/appbrain/q/t;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/appbrain/q/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/appbrain/q/t;->b(Lcom/appbrain/q/x;)Lcom/appbrain/q/t;

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/appbrain/q/t;->b(Lcom/appbrain/q/x;)Lcom/appbrain/q/t;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    throw p1

    :cond_e
    :pswitch_2
    sget-object p1, Lcom/appbrain/t/s;->m:Lcom/appbrain/t/s;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/appbrain/q/q$i;

    check-cast p3, Lcom/appbrain/t/s;

    iget-object p1, p0, Lcom/appbrain/t/s;->f:Lcom/appbrain/t/j;

    iget-object v0, p3, Lcom/appbrain/t/s;->f:Lcom/appbrain/t/j;

    invoke-interface {p2, p1, v0}, Lcom/appbrain/q/q$i;->a(Lcom/appbrain/q/x;Lcom/appbrain/q/x;)Lcom/appbrain/q/x;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/j;

    iput-object p1, p0, Lcom/appbrain/t/s;->f:Lcom/appbrain/t/j;

    invoke-direct {p0}, Lcom/appbrain/t/s;->W()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/s;->g:I

    invoke-direct {p3}, Lcom/appbrain/t/s;->W()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/s;->g:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/s;->g:I

    invoke-direct {p0}, Lcom/appbrain/t/s;->X()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/s;->h:I

    invoke-direct {p3}, Lcom/appbrain/t/s;->X()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/s;->h:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/s;->h:I

    invoke-direct {p0}, Lcom/appbrain/t/s;->Y()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/t/s;->i:Z

    invoke-direct {p3}, Lcom/appbrain/t/s;->Y()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/t/s;->i:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/t/s;->i:Z

    invoke-direct {p0}, Lcom/appbrain/t/s;->Z()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/s;->j:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/s;->Z()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/s;->j:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/s;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/s;->a0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/s;->k:I

    invoke-direct {p3}, Lcom/appbrain/t/s;->a0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/s;->k:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/s;->k:I

    invoke-direct {p0}, Lcom/appbrain/t/s;->b0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/s;->l:I

    invoke-direct {p3}, Lcom/appbrain/t/s;->b0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/s;->l:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/s;->l:I

    sget-object p1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    if-ne p2, p1, :cond_f

    iget p1, p0, Lcom/appbrain/t/s;->e:I

    iget p2, p3, Lcom/appbrain/t/s;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/t/s;->e:I

    :cond_f
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/appbrain/t/s$a;

    invoke-direct {p1, v0}, Lcom/appbrain/t/s$a;-><init>(B)V

    return-object p1

    :pswitch_5
    return-object v1

    :pswitch_6
    sget-object p1, Lcom/appbrain/t/s;->m:Lcom/appbrain/t/s;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/appbrain/t/s;

    invoke-direct {p1}, Lcom/appbrain/t/s;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

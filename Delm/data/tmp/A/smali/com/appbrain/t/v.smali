.class public final Lcom/appbrain/t/v;
.super Lcom/appbrain/q/q;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/t/v$a;
    }
.end annotation


# static fields
.field private static final o:Lcom/appbrain/t/v;

.field private static volatile p:Lcom/appbrain/q/a0;


# instance fields
.field private e:I

.field private f:Lcom/appbrain/t/j;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/t/v;

    invoke-direct {v0}, Lcom/appbrain/t/v;-><init>()V

    sput-object v0, Lcom/appbrain/t/v;->o:Lcom/appbrain/t/v;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->G()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/q/q;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/t/v;->g:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/appbrain/t/v;->h:I

    iput-object v0, p0, Lcom/appbrain/t/v;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/v;->l:Ljava/lang/String;

    return-void
.end method

.method public static L()Lcom/appbrain/t/v$a;
    .locals 1

    sget-object v0, Lcom/appbrain/t/v;->o:Lcom/appbrain/t/v;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v0

    check-cast v0, Lcom/appbrain/t/v$a;

    return-object v0
.end method

.method static synthetic M(Lcom/appbrain/t/v;)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/appbrain/t/v;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/t/v;->m:Z

    return-void
.end method

.method static synthetic N(Lcom/appbrain/t/v;J)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/t/v;->e:I

    iput-wide p1, p0, Lcom/appbrain/t/v;->i:J

    return-void
.end method

.method static synthetic O(Lcom/appbrain/t/v;Lcom/appbrain/t/j;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/appbrain/t/v;->f:Lcom/appbrain/t/j;

    iget p1, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appbrain/t/v;->e:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic P(Lcom/appbrain/t/v;Lcom/appbrain/t/m;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/t/v;->e:I

    invoke-virtual {p1}, Lcom/appbrain/t/m;->c()I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/v;->h:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic Q(Lcom/appbrain/t/v;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/t/v;->e:I

    iput-object p1, p0, Lcom/appbrain/t/v;->g:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static R()Lcom/appbrain/q/a0;
    .locals 1

    sget-object v0, Lcom/appbrain/t/v;->o:Lcom/appbrain/t/v;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->f()Lcom/appbrain/q/a0;

    move-result-object v0

    return-object v0
.end method

.method static synthetic S(Lcom/appbrain/t/v;J)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/appbrain/t/v;->e:I

    iput-wide p1, p0, Lcom/appbrain/t/v;->j:J

    return-void
.end method

.method static synthetic T(Lcom/appbrain/t/v;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/appbrain/t/v;->e:I

    iput-object p1, p0, Lcom/appbrain/t/v;->k:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic U()Lcom/appbrain/t/v;
    .locals 1

    sget-object v0, Lcom/appbrain/t/v;->o:Lcom/appbrain/t/v;

    return-object v0
.end method

.method static synthetic V(Lcom/appbrain/t/v;J)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/appbrain/t/v;->e:I

    iput-wide p1, p0, Lcom/appbrain/t/v;->n:J

    return-void
.end method

.method static synthetic W(Lcom/appbrain/t/v;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/appbrain/t/v;->e:I

    iput-object p1, p0, Lcom/appbrain/t/v;->l:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private X()Lcom/appbrain/t/j;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/v;->f:Lcom/appbrain/t/j;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appbrain/t/j;->i1()Lcom/appbrain/t/j;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private Y()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/4 v1, 0x2

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

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/4 v1, 0x4

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

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v1, 0x8

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

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v1, 0x100

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
    .locals 5

    iget v0, p0, Lcom/appbrain/q/q;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/appbrain/t/v;->X()Lcom/appbrain/t/j;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->t(ILcom/appbrain/q/x;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/appbrain/t/v;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/appbrain/t/v;->h:I

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->J(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-wide v3, p0, Lcom/appbrain/t/v;->i:J

    invoke-static {v0, v3, v4}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    const/4 v0, 0x6

    iget-wide v3, p0, Lcom/appbrain/t/v;->j:J

    invoke-static {v0, v3, v4}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v3, 0x20

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/appbrain/t/v;->k:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_6
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v3, 0x40

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/appbrain/t/v;->l:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_7
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/appbrain/q/l;->M(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_8
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xb

    iget-wide v3, p0, Lcom/appbrain/t/v;->n:J

    invoke-static {v0, v3, v4}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_9
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0}, Lcom/appbrain/q/c;->j()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/appbrain/q/q;->d:I

    return v2
.end method

.method public final g(Lcom/appbrain/q/l;)V
    .locals 4

    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/appbrain/t/v;->X()Lcom/appbrain/t/j;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->l(ILcom/appbrain/q/x;)V

    :cond_0
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appbrain/t/v;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/appbrain/t/v;->h:I

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->y(II)V

    :cond_2
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    iget-wide v2, p0, Lcom/appbrain/t/v;->i:J

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2, v3}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_3
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    iget-wide v2, p0, Lcom/appbrain/t/v;->j:J

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2, v3}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_4
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/appbrain/t/v;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v2, 0x40

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/appbrain/t/v;->l:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/appbrain/t/v;->m:Z

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_7
    iget v0, p0, Lcom/appbrain/t/v;->e:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    iget-wide v0, p0, Lcom/appbrain/t/v;->n:J

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0, v1}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_8
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0, p1}, Lcom/appbrain/q/c;->e(Lcom/appbrain/q/l;)V

    return-void
.end method

.method protected final w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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
    sget-object p1, Lcom/appbrain/t/v;->p:Lcom/appbrain/q/a0;

    if-nez p1, :cond_1

    const-class p1, Lcom/appbrain/t/v;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/appbrain/t/v;->p:Lcom/appbrain/q/a0;

    if-nez p2, :cond_0

    new-instance p2, Lcom/appbrain/q/q$b;

    sget-object p3, Lcom/appbrain/t/v;->o:Lcom/appbrain/t/v;

    invoke-direct {p2, p3}, Lcom/appbrain/q/q$b;-><init>(Lcom/appbrain/q/q;)V

    sput-object p2, Lcom/appbrain/t/v;->p:Lcom/appbrain/q/a0;

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
    sget-object p1, Lcom/appbrain/t/v;->p:Lcom/appbrain/q/a0;

    return-object p1

    :pswitch_1
    check-cast p2, Lcom/appbrain/q/k;

    check-cast p3, Lcom/appbrain/q/n;

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_10

    :try_start_1
    invoke-virtual {p2}, Lcom/appbrain/q/k;->a()I

    move-result v2

    if-eqz v2, :cond_f

    const/16 v3, 0xa

    if-eq v2, v3, :cond_c

    const/16 v3, 0x12

    if-eq v2, v3, :cond_b

    const/16 v3, 0x20

    if-eq v2, v3, :cond_9

    const/16 v4, 0x28

    if-eq v2, v4, :cond_8

    const/16 v4, 0x30

    if-eq v2, v4, :cond_7

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_6

    const/16 v3, 0x42

    if-eq v2, v3, :cond_5

    const/16 v3, 0x48

    if-eq v2, v3, :cond_4

    const/16 v3, 0x58

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, v2, p2}, Lcom/appbrain/q/q;->A(ILcom/appbrain/q/k;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_4

    :cond_3
    iget v2, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/appbrain/t/v;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appbrain/t/v;->n:J

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/appbrain/t/v;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result v2

    iput-boolean v2, p0, Lcom/appbrain/t/v;->m:Z

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/appbrain/t/v;->e:I

    iput-object v2, p0, Lcom/appbrain/t/v;->l:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/appbrain/t/v;->e:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/appbrain/t/v;->e:I

    iput-object v2, p0, Lcom/appbrain/t/v;->k:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/appbrain/t/v;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appbrain/t/v;->j:J

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/appbrain/t/v;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appbrain/t/v;->i:J

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p2}, Lcom/appbrain/q/k;->w()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    move-object v3, v1

    goto :goto_2

    :pswitch_2
    sget-object v3, Lcom/appbrain/t/m;->j:Lcom/appbrain/t/m;

    goto :goto_2

    :pswitch_3
    sget-object v3, Lcom/appbrain/t/m;->i:Lcom/appbrain/t/m;

    goto :goto_2

    :pswitch_4
    sget-object v3, Lcom/appbrain/t/m;->h:Lcom/appbrain/t/m;

    goto :goto_2

    :pswitch_5
    sget-object v3, Lcom/appbrain/t/m;->g:Lcom/appbrain/t/m;

    goto :goto_2

    :pswitch_6
    sget-object v3, Lcom/appbrain/t/m;->f:Lcom/appbrain/t/m;

    goto :goto_2

    :pswitch_7
    sget-object v3, Lcom/appbrain/t/m;->e:Lcom/appbrain/t/m;

    goto :goto_2

    :pswitch_8
    sget-object v3, Lcom/appbrain/t/m;->d:Lcom/appbrain/t/m;

    goto :goto_2

    :pswitch_9
    sget-object v3, Lcom/appbrain/t/m;->c:Lcom/appbrain/t/m;

    :goto_2
    const/4 v4, 0x4

    if-nez v3, :cond_a

    invoke-super {p0, v4, v2}, Lcom/appbrain/q/q;->y(II)V

    goto/16 :goto_1

    :cond_a
    iget v3, p0, Lcom/appbrain/t/v;->e:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/appbrain/t/v;->e:I

    iput v2, p0, Lcom/appbrain/t/v;->h:I

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/appbrain/t/v;->e:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/appbrain/t/v;->e:I

    iput-object v2, p0, Lcom/appbrain/t/v;->g:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    iget v2, p0, Lcom/appbrain/t/v;->e:I

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_d

    iget-object v2, p0, Lcom/appbrain/t/v;->f:Lcom/appbrain/t/j;

    invoke-virtual {v2}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v2

    check-cast v2, Lcom/appbrain/t/j$a;

    goto :goto_3

    :cond_d
    move-object v2, v1

    :goto_3
    invoke-static {}, Lcom/appbrain/t/j;->m1()Lcom/appbrain/q/a0;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/appbrain/q/k;->e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object v3

    check-cast v3, Lcom/appbrain/t/j;

    iput-object v3, p0, Lcom/appbrain/t/v;->f:Lcom/appbrain/t/j;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v3}, Lcom/appbrain/q/q$a;->q(Lcom/appbrain/q/q;)Lcom/appbrain/q/q$a;

    invoke-virtual {v2}, Lcom/appbrain/q/q$a;->t()Lcom/appbrain/q/q;

    move-result-object v2

    check-cast v2, Lcom/appbrain/t/j;

    iput-object v2, p0, Lcom/appbrain/t/v;->f:Lcom/appbrain/t/j;

    :cond_e
    iget v2, p0, Lcom/appbrain/t/v;->e:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/appbrain/t/v;->e:I
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_f
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

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

    :goto_5
    throw p1

    :cond_10
    :pswitch_a
    sget-object p1, Lcom/appbrain/t/v;->o:Lcom/appbrain/t/v;

    return-object p1

    :pswitch_b
    check-cast p2, Lcom/appbrain/q/q$i;

    check-cast p3, Lcom/appbrain/t/v;

    iget-object p1, p0, Lcom/appbrain/t/v;->f:Lcom/appbrain/t/j;

    iget-object v0, p3, Lcom/appbrain/t/v;->f:Lcom/appbrain/t/j;

    invoke-interface {p2, p1, v0}, Lcom/appbrain/q/q$i;->a(Lcom/appbrain/q/x;Lcom/appbrain/q/x;)Lcom/appbrain/q/x;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/j;

    iput-object p1, p0, Lcom/appbrain/t/v;->f:Lcom/appbrain/t/j;

    invoke-direct {p0}, Lcom/appbrain/t/v;->Y()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/v;->g:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/v;->Y()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/v;->g:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/v;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/v;->Z()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/v;->h:I

    invoke-direct {p3}, Lcom/appbrain/t/v;->Z()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/v;->h:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/v;->h:I

    invoke-direct {p0}, Lcom/appbrain/t/v;->a0()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/t/v;->i:J

    invoke-direct {p3}, Lcom/appbrain/t/v;->a0()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/t/v;->i:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/t/v;->i:J

    invoke-direct {p0}, Lcom/appbrain/t/v;->b0()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/t/v;->j:J

    invoke-direct {p3}, Lcom/appbrain/t/v;->b0()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/t/v;->j:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/t/v;->j:J

    invoke-direct {p0}, Lcom/appbrain/t/v;->c0()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/v;->k:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/v;->c0()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/v;->k:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/v;->k:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/v;->d0()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/v;->l:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/v;->d0()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/v;->l:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/v;->l:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/v;->e0()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/t/v;->m:Z

    invoke-direct {p3}, Lcom/appbrain/t/v;->e0()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/t/v;->m:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/t/v;->m:Z

    invoke-direct {p0}, Lcom/appbrain/t/v;->f0()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/t/v;->n:J

    invoke-direct {p3}, Lcom/appbrain/t/v;->f0()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/t/v;->n:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/t/v;->n:J

    sget-object p1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    if-ne p2, p1, :cond_11

    iget p1, p0, Lcom/appbrain/t/v;->e:I

    iget p2, p3, Lcom/appbrain/t/v;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/t/v;->e:I

    :cond_11
    return-object p0

    :pswitch_c
    new-instance p1, Lcom/appbrain/t/v$a;

    invoke-direct {p1, v0}, Lcom/appbrain/t/v$a;-><init>(B)V

    return-object p1

    :pswitch_d
    return-object v1

    :pswitch_e
    sget-object p1, Lcom/appbrain/t/v;->o:Lcom/appbrain/t/v;

    return-object p1

    :pswitch_f
    new-instance p1, Lcom/appbrain/t/v;

    invoke-direct {p1}, Lcom/appbrain/t/v;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_1
        :pswitch_a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

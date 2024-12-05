.class public final Lcom/appbrain/p/b;
.super Lcom/appbrain/q/q;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/p/b$a;
    }
.end annotation


# static fields
.field private static final m:Lcom/appbrain/p/b;

.field private static volatile n:Lcom/appbrain/q/a0;


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Lcom/appbrain/q/s$d;

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/appbrain/t/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/p/b;

    invoke-direct {v0}, Lcom/appbrain/p/b;-><init>()V

    sput-object v0, Lcom/appbrain/p/b;->m:Lcom/appbrain/p/b;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->G()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/q;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/p/b;->f:Ljava/lang/String;

    invoke-static {}, Lcom/appbrain/q/q;->K()Lcom/appbrain/q/s$d;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    return-void
.end method

.method static synthetic M(Lcom/appbrain/p/b;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/p/b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/p/b;->e:I

    iput p1, p0, Lcom/appbrain/p/b;->i:I

    return-void
.end method

.method static synthetic N(Lcom/appbrain/p/b;J)V
    .locals 1

    iget v0, p0, Lcom/appbrain/p/b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/p/b;->e:I

    iput-wide p1, p0, Lcom/appbrain/p/b;->g:J

    return-void
.end method

.method static synthetic O(Lcom/appbrain/p/b;Lcom/appbrain/p/d$a;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    invoke-interface {v0}, Lcom/appbrain/q/s$d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    invoke-static {v0}, Lcom/appbrain/q/q;->u(Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    :cond_0
    iget-object p0, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    invoke-virtual {p1}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object p1

    check-cast p1, Lcom/appbrain/p/d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic P(Lcom/appbrain/p/b;Lcom/appbrain/t/l;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/appbrain/p/b;->l:Lcom/appbrain/t/l;

    iget p1, p0, Lcom/appbrain/p/b;->e:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/appbrain/p/b;->e:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic Q(Lcom/appbrain/p/b;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/p/b;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/p/b;->e:I

    iput-object p1, p0, Lcom/appbrain/p/b;->f:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic S(Lcom/appbrain/p/b;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/p/b;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/p/b;->e:I

    iput p1, p0, Lcom/appbrain/p/b;->j:I

    return-void
.end method

.method static synthetic U(Lcom/appbrain/p/b;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/p/b;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/appbrain/p/b;->e:I

    iput p1, p0, Lcom/appbrain/p/b;->k:I

    return-void
.end method

.method public static V()Lcom/appbrain/p/b$a;
    .locals 1

    sget-object v0, Lcom/appbrain/p/b;->m:Lcom/appbrain/p/b;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v0

    check-cast v0, Lcom/appbrain/p/b$a;

    return-object v0
.end method

.method public static W()Lcom/appbrain/q/a0;
    .locals 1

    sget-object v0, Lcom/appbrain/p/b;->m:Lcom/appbrain/p/b;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->f()Lcom/appbrain/q/a0;

    move-result-object v0

    return-object v0
.end method

.method static synthetic X()Lcom/appbrain/p/b;
    .locals 1

    sget-object v0, Lcom/appbrain/p/b;->m:Lcom/appbrain/p/b;

    return-object v0
.end method

.method private Y()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/p/b;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Z()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/p/b;->e:I

    const/4 v1, 0x2

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

    iget v0, p0, Lcom/appbrain/p/b;->e:I

    const/4 v1, 0x4

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

    iget v0, p0, Lcom/appbrain/p/b;->e:I

    const/16 v1, 0x8

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

    iget v0, p0, Lcom/appbrain/p/b;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final L()J
    .locals 2

    iget-wide v0, p0, Lcom/appbrain/p/b;->g:J

    return-wide v0
.end method

.method public final R()I
    .locals 1

    iget v0, p0, Lcom/appbrain/p/b;->i:I

    return v0
.end method

.method public final T()Lcom/appbrain/t/l;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/p/b;->l:Lcom/appbrain/t/l;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appbrain/t/l;->P()Lcom/appbrain/t/l;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final d()I
    .locals 6

    iget v0, p0, Lcom/appbrain/q/q;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/appbrain/p/b;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appbrain/p/b;->f:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/appbrain/p/b;->e:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    iget-wide v4, p0, Lcom/appbrain/p/b;->g:J

    invoke-static {v1, v4, v5}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v3, v1, :cond_3

    iget-object v1, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/q/x;

    invoke-static {v2, v1}, Lcom/appbrain/q/l;->t(ILcom/appbrain/q/x;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/appbrain/p/b;->e:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Lcom/appbrain/p/b;->i:I

    invoke-static {v1, v2}, Lcom/appbrain/q/l;->F(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/appbrain/p/b;->e:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    iget v3, p0, Lcom/appbrain/p/b;->j:I

    invoke-static {v1, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/appbrain/p/b;->e:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/appbrain/p/b;->k:I

    invoke-static {v2, v1}, Lcom/appbrain/q/l;->F(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/appbrain/p/b;->e:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/appbrain/p/b;->T()Lcom/appbrain/t/l;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appbrain/q/l;->t(ILcom/appbrain/q/x;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v1}, Lcom/appbrain/q/c;->j()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/q/q;->d:I

    return v0
.end method

.method public final g(Lcom/appbrain/q/l;)V
    .locals 3

    iget v0, p0, Lcom/appbrain/p/b;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/p/b;->f:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/appbrain/p/b;->e:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    iget-wide v0, p0, Lcom/appbrain/p/b;->g:J

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/q/x;

    invoke-virtual {p1, v2, v1}, Lcom/appbrain/q/l;->l(ILcom/appbrain/q/x;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/appbrain/p/b;->e:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x5

    iget v1, p0, Lcom/appbrain/p/b;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->y(II)V

    :cond_3
    iget v0, p0, Lcom/appbrain/p/b;->e:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x6

    iget v2, p0, Lcom/appbrain/p/b;->j:I

    invoke-virtual {p1, v0, v2}, Lcom/appbrain/q/l;->y(II)V

    :cond_4
    iget v0, p0, Lcom/appbrain/p/b;->e:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/appbrain/p/b;->k:I

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->y(II)V

    :cond_5
    iget v0, p0, Lcom/appbrain/p/b;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/appbrain/p/b;->T()Lcom/appbrain/t/l;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->l(ILcom/appbrain/q/x;)V

    :cond_6
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0, p1}, Lcom/appbrain/q/c;->e(Lcom/appbrain/q/l;)V

    return-void
.end method

.method protected final w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/appbrain/p/a;->a:[I

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
    sget-object p1, Lcom/appbrain/p/b;->n:Lcom/appbrain/q/a0;

    if-nez p1, :cond_1

    const-class p1, Lcom/appbrain/p/b;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/appbrain/p/b;->n:Lcom/appbrain/q/a0;

    if-nez p2, :cond_0

    new-instance p2, Lcom/appbrain/q/q$b;

    sget-object p3, Lcom/appbrain/p/b;->m:Lcom/appbrain/p/b;

    invoke-direct {p2, p3}, Lcom/appbrain/q/q$b;-><init>(Lcom/appbrain/q/q;)V

    sput-object p2, Lcom/appbrain/p/b;->n:Lcom/appbrain/q/a0;

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
    sget-object p1, Lcom/appbrain/p/b;->n:Lcom/appbrain/q/a0;

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

    const/16 v3, 0x12

    if-eq v2, v3, :cond_c

    const/16 v3, 0x18

    if-eq v2, v3, :cond_b

    const/16 v3, 0x22

    if-eq v2, v3, :cond_9

    const/16 v3, 0x28

    if-eq v2, v3, :cond_8

    const/16 v3, 0x30

    if-eq v2, v3, :cond_7

    const/16 v3, 0x40

    if-eq v2, v3, :cond_6

    const/16 v3, 0x4a

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, v2, p2}, Lcom/appbrain/q/q;->A(ILcom/appbrain/q/k;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    :cond_3
    iget v2, p0, Lcom/appbrain/p/b;->e:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/appbrain/p/b;->l:Lcom/appbrain/t/l;

    invoke-virtual {v2}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v2

    check-cast v2, Lcom/appbrain/t/l$b;

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    invoke-static {}, Lcom/appbrain/t/l;->Q()Lcom/appbrain/q/a0;

    move-result-object v4

    invoke-virtual {p2, v4, p3}, Lcom/appbrain/q/k;->e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object v4

    check-cast v4, Lcom/appbrain/t/l;

    iput-object v4, p0, Lcom/appbrain/p/b;->l:Lcom/appbrain/t/l;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v4}, Lcom/appbrain/q/q$a;->q(Lcom/appbrain/q/q;)Lcom/appbrain/q/q$a;

    invoke-virtual {v2}, Lcom/appbrain/q/q$a;->t()Lcom/appbrain/q/q;

    move-result-object v2

    check-cast v2, Lcom/appbrain/t/l;

    iput-object v2, p0, Lcom/appbrain/p/b;->l:Lcom/appbrain/t/l;

    :cond_5
    iget v2, p0, Lcom/appbrain/p/b;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/appbrain/p/b;->e:I

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/appbrain/p/b;->e:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/appbrain/p/b;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result v2

    iput v2, p0, Lcom/appbrain/p/b;->k:I

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/appbrain/p/b;->e:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/appbrain/p/b;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result v2

    iput v2, p0, Lcom/appbrain/p/b;->j:I

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/appbrain/p/b;->e:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/appbrain/p/b;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result v2

    iput v2, p0, Lcom/appbrain/p/b;->i:I

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    invoke-interface {v2}, Lcom/appbrain/q/s$d;->a()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    invoke-static {v2}, Lcom/appbrain/q/q;->u(Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object v2

    iput-object v2, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    :cond_a
    iget-object v2, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    invoke-static {}, Lcom/appbrain/p/d;->O()Lcom/appbrain/q/a0;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/appbrain/q/k;->e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object v3

    check-cast v3, Lcom/appbrain/p/d;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    iget v2, p0, Lcom/appbrain/p/b;->e:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/appbrain/p/b;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appbrain/p/b;->g:J

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/appbrain/p/b;->e:I

    or-int/2addr v3, p1

    iput v3, p0, Lcom/appbrain/p/b;->e:I

    iput-object v2, p0, Lcom/appbrain/p/b;->f:Ljava/lang/String;
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
    sget-object p1, Lcom/appbrain/p/b;->m:Lcom/appbrain/p/b;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/appbrain/q/q$i;

    check-cast p3, Lcom/appbrain/p/b;

    invoke-direct {p0}, Lcom/appbrain/p/b;->Y()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/p/b;->f:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/p/b;->Y()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/p/b;->f:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/p/b;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/p/b;->Z()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/p/b;->g:J

    invoke-direct {p3}, Lcom/appbrain/p/b;->Z()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/p/b;->g:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/p/b;->g:J

    iget-object p1, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    iget-object v0, p3, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    invoke-interface {p2, p1, v0}, Lcom/appbrain/q/q$i;->g(Lcom/appbrain/q/s$d;Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    invoke-direct {p0}, Lcom/appbrain/p/b;->a0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/p/b;->i:I

    invoke-direct {p3}, Lcom/appbrain/p/b;->a0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/p/b;->i:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/p/b;->i:I

    invoke-direct {p0}, Lcom/appbrain/p/b;->b0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/p/b;->j:I

    invoke-direct {p3}, Lcom/appbrain/p/b;->b0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/p/b;->j:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/p/b;->j:I

    invoke-direct {p0}, Lcom/appbrain/p/b;->c0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/p/b;->k:I

    invoke-direct {p3}, Lcom/appbrain/p/b;->c0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/p/b;->k:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/p/b;->k:I

    iget-object p1, p0, Lcom/appbrain/p/b;->l:Lcom/appbrain/t/l;

    iget-object v0, p3, Lcom/appbrain/p/b;->l:Lcom/appbrain/t/l;

    invoke-interface {p2, p1, v0}, Lcom/appbrain/q/q$i;->a(Lcom/appbrain/q/x;Lcom/appbrain/q/x;)Lcom/appbrain/q/x;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/l;

    iput-object p1, p0, Lcom/appbrain/p/b;->l:Lcom/appbrain/t/l;

    sget-object p1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    if-ne p2, p1, :cond_f

    iget p1, p0, Lcom/appbrain/p/b;->e:I

    iget p2, p3, Lcom/appbrain/p/b;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/p/b;->e:I

    :cond_f
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/appbrain/p/b$a;

    invoke-direct {p1, v0}, Lcom/appbrain/p/b$a;-><init>(B)V

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/appbrain/p/b;->h:Lcom/appbrain/q/s$d;

    invoke-interface {p1}, Lcom/appbrain/q/s$d;->b()V

    return-object v1

    :pswitch_6
    sget-object p1, Lcom/appbrain/p/b;->m:Lcom/appbrain/p/b;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/appbrain/p/b;

    invoke-direct {p1}, Lcom/appbrain/p/b;-><init>()V

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

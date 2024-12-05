.class public final Lcom/appbrain/t/q;
.super Lcom/appbrain/q/q;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/t/q$b;,
        Lcom/appbrain/t/q$e;,
        Lcom/appbrain/t/q$a;,
        Lcom/appbrain/t/q$f;,
        Lcom/appbrain/t/q$d;,
        Lcom/appbrain/t/q$c;
    }
.end annotation


# static fields
.field private static final n:Lcom/appbrain/t/q;

.field private static volatile o:Lcom/appbrain/q/a0;


# instance fields
.field private e:I

.field private f:I

.field private g:Ljava/lang/Object;

.field private h:I

.field private i:Lcom/appbrain/t/q$d;

.field private j:Lcom/appbrain/t/q$d;

.field private k:D

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/t/q;

    invoke-direct {v0}, Lcom/appbrain/t/q;-><init>()V

    sput-object v0, Lcom/appbrain/t/q;->n:Lcom/appbrain/t/q;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->G()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/q;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appbrain/t/q;->f:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/appbrain/t/q;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/t/q;->l:Ljava/lang/String;

    return-void
.end method

.method public static L()Lcom/appbrain/q/a0;
    .locals 1

    sget-object v0, Lcom/appbrain/t/q;->n:Lcom/appbrain/t/q;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->f()Lcom/appbrain/q/a0;

    move-result-object v0

    return-object v0
.end method

.method static synthetic M()Lcom/appbrain/t/q;
    .locals 1

    sget-object v0, Lcom/appbrain/t/q;->n:Lcom/appbrain/t/q;

    return-object v0
.end method

.method private N()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private O()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic Q(Lcom/appbrain/t/q;)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/q;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/t/q;->e:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/appbrain/t/q;->k:D

    return-void
.end method

.method static synthetic R(Lcom/appbrain/t/q;Lcom/appbrain/t/q$c;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/q;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/t/q;->e:I

    invoke-virtual {p1}, Lcom/appbrain/t/q$c;->c()I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/q;->h:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic S(Lcom/appbrain/t/q;Lcom/appbrain/t/q$f$a;)V
    .locals 0

    invoke-virtual {p1}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/appbrain/t/q;->f:I

    return-void
.end method

.method static synthetic T(Lcom/appbrain/t/q;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/q;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/appbrain/t/q;->e:I

    iput-object p1, p0, Lcom/appbrain/t/q;->l:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static f0()Lcom/appbrain/t/q$b;
    .locals 1

    sget-object v0, Lcom/appbrain/t/q;->n:Lcom/appbrain/t/q;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v0

    check-cast v0, Lcom/appbrain/t/q$b;

    return-object v0
.end method


# virtual methods
.method public final P()Lcom/appbrain/t/q$c;
    .locals 1

    iget v0, p0, Lcom/appbrain/t/q;->h:I

    invoke-static {v0}, Lcom/appbrain/t/q$c;->d(I)Lcom/appbrain/t/q$c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appbrain/t/q$c;->c:Lcom/appbrain/t/q$c;

    :cond_0
    return-object v0
.end method

.method public final U()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final V()Lcom/appbrain/t/q$d;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/q;->i:Lcom/appbrain/t/q$d;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appbrain/t/q$d;->Q()Lcom/appbrain/t/q$d;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final W()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final X()Lcom/appbrain/t/q$d;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/q;->j:Lcom/appbrain/t/q$d;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appbrain/t/q$d;->Q()Lcom/appbrain/t/q$d;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final Y()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Z()D
    .locals 2

    iget-wide v0, p0, Lcom/appbrain/t/q;->k:D

    return-wide v0
.end method

.method public final a0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/q;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final b0()Lcom/appbrain/t/q$f;
    .locals 2

    iget v0, p0, Lcom/appbrain/t/q;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    check-cast v0, Lcom/appbrain/t/q$f;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/appbrain/t/q$f;->O()Lcom/appbrain/t/q$f;

    move-result-object v0

    return-object v0
.end method

.method public final c0()Lcom/appbrain/t/q$a;
    .locals 2

    iget v0, p0, Lcom/appbrain/t/q;->f:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    check-cast v0, Lcom/appbrain/t/q$a;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/appbrain/t/q$a;->N()Lcom/appbrain/t/q$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 4

    iget v0, p0, Lcom/appbrain/q/q;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/appbrain/t/q;->h:I

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->J(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/appbrain/t/q;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    check-cast v0, Lcom/appbrain/t/q$f;

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->t(ILcom/appbrain/q/x;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/appbrain/t/q;->e:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/appbrain/t/q;->V()Lcom/appbrain/t/q$d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appbrain/q/l;->t(ILcom/appbrain/q/x;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/appbrain/t/q;->X()Lcom/appbrain/t/q$d;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->t(ILcom/appbrain/q/x;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/appbrain/q/l;->L(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/appbrain/t/q;->l:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_6
    iget v0, p0, Lcom/appbrain/t/q;->f:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    check-cast v0, Lcom/appbrain/t/q$a;

    invoke-static {v3, v0}, Lcom/appbrain/q/l;->t(ILcom/appbrain/q/x;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_7
    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/appbrain/t/q;->m:I

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->F(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_8
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0}, Lcom/appbrain/q/c;->j()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/appbrain/q/q;->d:I

    return v2
.end method

.method public final d0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e0()I
    .locals 1

    iget v0, p0, Lcom/appbrain/t/q;->m:I

    return v0
.end method

.method public final g(Lcom/appbrain/q/l;)V
    .locals 4

    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/appbrain/t/q;->h:I

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->y(II)V

    :cond_0
    iget v0, p0, Lcom/appbrain/t/q;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    check-cast v0, Lcom/appbrain/t/q$f;

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->l(ILcom/appbrain/q/x;)V

    :cond_1
    iget v0, p0, Lcom/appbrain/t/q;->e:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/appbrain/t/q;->V()Lcom/appbrain/t/q$d;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->l(ILcom/appbrain/q/x;)V

    :cond_2
    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/appbrain/t/q;->X()Lcom/appbrain/t/q$d;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->l(ILcom/appbrain/q/x;)V

    :cond_3
    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/appbrain/t/q;->k:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/appbrain/q/l;->g(ID)V

    :cond_4
    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/appbrain/t/q;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/appbrain/t/q;->f:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    check-cast v0, Lcom/appbrain/t/q$a;

    invoke-virtual {p1, v2, v0}, Lcom/appbrain/q/l;->l(ILcom/appbrain/q/x;)V

    :cond_6
    iget v0, p0, Lcom/appbrain/t/q;->e:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    iget v0, p0, Lcom/appbrain/t/q;->m:I

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->y(II)V

    :cond_7
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0, p1}, Lcom/appbrain/q/c;->e(Lcom/appbrain/q/l;)V

    return-void
.end method

.method protected final w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lcom/appbrain/t/k;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/appbrain/t/q;->o:Lcom/appbrain/q/a0;

    if-nez p1, :cond_1

    const-class p1, Lcom/appbrain/t/q;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/appbrain/t/q;->o:Lcom/appbrain/q/a0;

    if-nez p2, :cond_0

    new-instance p2, Lcom/appbrain/q/q$b;

    sget-object p3, Lcom/appbrain/t/q;->n:Lcom/appbrain/t/q;

    invoke-direct {p2, p3}, Lcom/appbrain/q/q$b;-><init>(Lcom/appbrain/q/q;)V

    sput-object p2, Lcom/appbrain/t/q;->o:Lcom/appbrain/q/a0;

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
    sget-object p1, Lcom/appbrain/t/q;->o:Lcom/appbrain/q/a0;

    return-object p1

    :pswitch_1
    check-cast p2, Lcom/appbrain/q/k;

    check-cast p3, Lcom/appbrain/q/n;

    :cond_2
    :goto_1
    if-nez v1, :cond_15

    :try_start_1
    invoke-virtual {p2}, Lcom/appbrain/q/k;->a()I

    move-result p1

    if-eqz p1, :cond_14

    const/16 v5, 0x8

    if-eq p1, v5, :cond_12

    const/16 v6, 0x12

    if-eq p1, v6, :cond_f

    const/16 v6, 0x1a

    if-eq p1, v6, :cond_c

    const/16 v6, 0x22

    if-eq p1, v6, :cond_9

    const/16 v6, 0x29

    if-eq p1, v6, :cond_8

    const/16 v5, 0x32

    if-eq p1, v5, :cond_7

    const/16 v5, 0x3a

    if-eq p1, v5, :cond_4

    const/16 v5, 0x40

    if-eq p1, v5, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/appbrain/q/q;->A(ILcom/appbrain/q/k;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_6

    :cond_3
    iget p1, p0, Lcom/appbrain/t/q;->e:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/appbrain/t/q;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/q;->m:I

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/appbrain/t/q;->f:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    check-cast p1, Lcom/appbrain/t/q$a;

    invoke-virtual {p1}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/q$a$a;

    goto :goto_2

    :cond_5
    move-object p1, v2

    :goto_2
    invoke-static {}, Lcom/appbrain/t/q$a;->O()Lcom/appbrain/q/a0;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, Lcom/appbrain/q/k;->e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object v5

    iput-object v5, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    if-eqz p1, :cond_6

    check-cast v5, Lcom/appbrain/t/q$a;

    invoke-virtual {p1, v5}, Lcom/appbrain/q/q$a;->q(Lcom/appbrain/q/q;)Lcom/appbrain/q/q$a;

    invoke-virtual {p1}, Lcom/appbrain/q/q$a;->t()Lcom/appbrain/q/q;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    :cond_6
    iput v0, p0, Lcom/appbrain/t/q;->f:I

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p1

    iget v5, p0, Lcom/appbrain/t/q;->e:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/appbrain/t/q;->e:I

    iput-object p1, p0, Lcom/appbrain/t/q;->l:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget p1, p0, Lcom/appbrain/t/q;->e:I

    or-int/2addr p1, v5

    iput p1, p0, Lcom/appbrain/t/q;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->g()D

    move-result-wide v5

    iput-wide v5, p0, Lcom/appbrain/t/q;->k:D

    goto :goto_1

    :cond_9
    iget p1, p0, Lcom/appbrain/t/q;->e:I

    const/4 v5, 0x4

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_a

    iget-object p1, p0, Lcom/appbrain/t/q;->j:Lcom/appbrain/t/q$d;

    invoke-virtual {p1}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/q$d$a;

    goto :goto_3

    :cond_a
    move-object p1, v2

    :goto_3
    invoke-static {}, Lcom/appbrain/t/q$d;->R()Lcom/appbrain/q/a0;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, Lcom/appbrain/q/k;->e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object v6

    check-cast v6, Lcom/appbrain/t/q$d;

    iput-object v6, p0, Lcom/appbrain/t/q;->j:Lcom/appbrain/t/q$d;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v6}, Lcom/appbrain/q/q$a;->q(Lcom/appbrain/q/q;)Lcom/appbrain/q/q$a;

    invoke-virtual {p1}, Lcom/appbrain/q/q$a;->t()Lcom/appbrain/q/q;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/q$d;

    iput-object p1, p0, Lcom/appbrain/t/q;->j:Lcom/appbrain/t/q$d;

    :cond_b
    iget p1, p0, Lcom/appbrain/t/q;->e:I

    or-int/2addr p1, v5

    iput p1, p0, Lcom/appbrain/t/q;->e:I

    goto/16 :goto_1

    :cond_c
    iget p1, p0, Lcom/appbrain/t/q;->e:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_d

    iget-object p1, p0, Lcom/appbrain/t/q;->i:Lcom/appbrain/t/q$d;

    invoke-virtual {p1}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/q$d$a;

    goto :goto_4

    :cond_d
    move-object p1, v2

    :goto_4
    invoke-static {}, Lcom/appbrain/t/q$d;->R()Lcom/appbrain/q/a0;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, Lcom/appbrain/q/k;->e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object v5

    check-cast v5, Lcom/appbrain/t/q$d;

    iput-object v5, p0, Lcom/appbrain/t/q;->i:Lcom/appbrain/t/q$d;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v5}, Lcom/appbrain/q/q$a;->q(Lcom/appbrain/q/q;)Lcom/appbrain/q/q$a;

    invoke-virtual {p1}, Lcom/appbrain/q/q$a;->t()Lcom/appbrain/q/q;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/q$d;

    iput-object p1, p0, Lcom/appbrain/t/q;->i:Lcom/appbrain/t/q$d;

    :cond_e
    iget p1, p0, Lcom/appbrain/t/q;->e:I

    or-int/2addr p1, v4

    iput p1, p0, Lcom/appbrain/t/q;->e:I

    goto/16 :goto_1

    :cond_f
    iget p1, p0, Lcom/appbrain/t/q;->f:I

    if-ne p1, v4, :cond_10

    iget-object p1, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    check-cast p1, Lcom/appbrain/t/q$f;

    invoke-virtual {p1}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/q$f$a;

    goto :goto_5

    :cond_10
    move-object p1, v2

    :goto_5
    invoke-static {}, Lcom/appbrain/t/q$f;->P()Lcom/appbrain/q/a0;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, Lcom/appbrain/q/k;->e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object v5

    iput-object v5, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    if-eqz p1, :cond_11

    check-cast v5, Lcom/appbrain/t/q$f;

    invoke-virtual {p1, v5}, Lcom/appbrain/q/q$a;->q(Lcom/appbrain/q/q;)Lcom/appbrain/q/q$a;

    invoke-virtual {p1}, Lcom/appbrain/q/q$a;->t()Lcom/appbrain/q/q;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    :cond_11
    iput v4, p0, Lcom/appbrain/t/q;->f:I

    goto/16 :goto_1

    :cond_12
    invoke-virtual {p2}, Lcom/appbrain/q/k;->w()I

    move-result p1

    invoke-static {p1}, Lcom/appbrain/t/q$c;->d(I)Lcom/appbrain/t/q$c;

    move-result-object v5

    if-nez v5, :cond_13

    invoke-super {p0, v3, p1}, Lcom/appbrain/q/q;->y(II)V

    goto/16 :goto_1

    :cond_13
    iget v5, p0, Lcom/appbrain/t/q;->e:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/appbrain/t/q;->e:I

    iput p1, p0, Lcom/appbrain/t/q;->h:I
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_14
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_7

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

    :goto_7
    throw p1

    :cond_15
    :pswitch_2
    sget-object p1, Lcom/appbrain/t/q;->n:Lcom/appbrain/t/q;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/appbrain/q/q$i;

    check-cast p3, Lcom/appbrain/t/q;

    invoke-direct {p0}, Lcom/appbrain/t/q;->N()Z

    move-result p1

    iget v5, p0, Lcom/appbrain/t/q;->h:I

    invoke-direct {p3}, Lcom/appbrain/t/q;->N()Z

    move-result v6

    iget v7, p3, Lcom/appbrain/t/q;->h:I

    invoke-interface {p2, p1, v5, v6, v7}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/q;->h:I

    iget-object p1, p0, Lcom/appbrain/t/q;->i:Lcom/appbrain/t/q$d;

    iget-object v5, p3, Lcom/appbrain/t/q;->i:Lcom/appbrain/t/q$d;

    invoke-interface {p2, p1, v5}, Lcom/appbrain/q/q$i;->a(Lcom/appbrain/q/x;Lcom/appbrain/q/x;)Lcom/appbrain/q/x;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/q$d;

    iput-object p1, p0, Lcom/appbrain/t/q;->i:Lcom/appbrain/t/q$d;

    iget-object p1, p0, Lcom/appbrain/t/q;->j:Lcom/appbrain/t/q$d;

    iget-object v5, p3, Lcom/appbrain/t/q;->j:Lcom/appbrain/t/q$d;

    invoke-interface {p2, p1, v5}, Lcom/appbrain/q/q$i;->a(Lcom/appbrain/q/x;Lcom/appbrain/q/x;)Lcom/appbrain/q/x;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/q$d;

    iput-object p1, p0, Lcom/appbrain/t/q;->j:Lcom/appbrain/t/q$d;

    invoke-virtual {p0}, Lcom/appbrain/t/q;->Y()Z

    move-result v6

    iget-wide v7, p0, Lcom/appbrain/t/q;->k:D

    invoke-virtual {p3}, Lcom/appbrain/t/q;->Y()Z

    move-result v9

    iget-wide v10, p3, Lcom/appbrain/t/q;->k:D

    move-object v5, p2

    invoke-interface/range {v5 .. v11}, Lcom/appbrain/q/q$i;->n(ZDZD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/appbrain/t/q;->k:D

    invoke-direct {p0}, Lcom/appbrain/t/q;->O()Z

    move-result p1

    iget-object v5, p0, Lcom/appbrain/t/q;->l:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/q;->O()Z

    move-result v6

    iget-object v7, p3, Lcom/appbrain/t/q;->l:Ljava/lang/String;

    invoke-interface {p2, p1, v5, v6, v7}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/q;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appbrain/t/q;->d0()Z

    move-result p1

    iget v5, p0, Lcom/appbrain/t/q;->m:I

    invoke-virtual {p3}, Lcom/appbrain/t/q;->d0()Z

    move-result v6

    iget v7, p3, Lcom/appbrain/t/q;->m:I

    invoke-interface {p2, p1, v5, v6, v7}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/q;->m:I

    sget-object p1, Lcom/appbrain/t/k;->b:[I

    iget v5, p3, Lcom/appbrain/t/q;->f:I

    if-eqz v5, :cond_18

    if-eq v5, v4, :cond_17

    if-eq v5, v0, :cond_16

    goto :goto_8

    :cond_16
    sget-object v2, Lcom/appbrain/t/q$e;->c:Lcom/appbrain/t/q$e;

    goto :goto_8

    :cond_17
    sget-object v2, Lcom/appbrain/t/q$e;->b:Lcom/appbrain/t/q$e;

    goto :goto_8

    :cond_18
    sget-object v2, Lcom/appbrain/t/q$e;->d:Lcom/appbrain/t/q$e;

    :goto_8
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    if-eq p1, v3, :cond_1c

    if-eq p1, v4, :cond_1b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    goto :goto_a

    :cond_19
    iget p1, p0, Lcom/appbrain/t/q;->f:I

    if-eqz p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    invoke-interface {p2, v1}, Lcom/appbrain/q/q$i;->b(Z)V

    goto :goto_a

    :cond_1b
    iget p1, p0, Lcom/appbrain/t/q;->f:I

    if-ne p1, v0, :cond_1d

    goto :goto_9

    :cond_1c
    iget p1, p0, Lcom/appbrain/t/q;->f:I

    if-ne p1, v4, :cond_1d

    :goto_9
    const/4 v1, 0x1

    :cond_1d
    iget-object p1, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    iget-object v0, p3, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    invoke-interface {p2, v1, p1, v0}, Lcom/appbrain/q/q$i;->d(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/q;->g:Ljava/lang/Object;

    :goto_a
    sget-object p1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    if-ne p2, p1, :cond_1f

    iget p1, p3, Lcom/appbrain/t/q;->f:I

    if-eqz p1, :cond_1e

    iput p1, p0, Lcom/appbrain/t/q;->f:I

    :cond_1e
    iget p1, p0, Lcom/appbrain/t/q;->e:I

    iget p2, p3, Lcom/appbrain/t/q;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/t/q;->e:I

    :cond_1f
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/appbrain/t/q$b;

    invoke-direct {p1, v1}, Lcom/appbrain/t/q$b;-><init>(B)V

    return-object p1

    :pswitch_5
    return-object v2

    :pswitch_6
    sget-object p1, Lcom/appbrain/t/q;->n:Lcom/appbrain/t/q;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/appbrain/t/q;

    invoke-direct {p1}, Lcom/appbrain/t/q;-><init>()V

    return-object p1

    nop

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

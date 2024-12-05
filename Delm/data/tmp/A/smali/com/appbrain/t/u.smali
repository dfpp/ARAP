.class public final Lcom/appbrain/t/u;
.super Lcom/appbrain/q/q;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/t/u$b;,
        Lcom/appbrain/t/u$a;
    }
.end annotation


# static fields
.field private static final p:Lcom/appbrain/t/u;

.field private static volatile q:Lcom/appbrain/q/a0;


# instance fields
.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Z

.field private n:I

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/t/u;

    invoke-direct {v0}, Lcom/appbrain/t/u;-><init>()V

    sput-object v0, Lcom/appbrain/t/u;->p:Lcom/appbrain/t/u;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->G()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/q;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/t/u;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/u;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/u;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/u;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic L()Lcom/appbrain/t/u;
    .locals 1

    sget-object v0, Lcom/appbrain/t/u;->p:Lcom/appbrain/t/u;

    return-object v0
.end method

.method private M()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private N()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private O()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private P()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Q()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private R()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private S()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static U([B)Lcom/appbrain/t/u;
    .locals 1

    sget-object v0, Lcom/appbrain/t/u;->p:Lcom/appbrain/t/u;

    invoke-static {v0, p0}, Lcom/appbrain/q/q;->q(Lcom/appbrain/q/q;[B)Lcom/appbrain/q/q;

    move-result-object p0

    check-cast p0, Lcom/appbrain/t/u;

    return-object p0
.end method


# virtual methods
.method public final T()I
    .locals 1

    iget v0, p0, Lcom/appbrain/t/u;->f:I

    return v0
.end method

.method public final V()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final W()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/u;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/u;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/u;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final Z()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/u;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final b0()Lcom/appbrain/t/u$a;
    .locals 1

    iget v0, p0, Lcom/appbrain/t/u;->k:I

    invoke-static {v0}, Lcom/appbrain/t/u$a;->c(I)Lcom/appbrain/t/u$a;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appbrain/t/u$a;->b:Lcom/appbrain/t/u$a;

    :cond_0
    return-object v0
.end method

.method public final c0()I
    .locals 1

    iget v0, p0, Lcom/appbrain/t/u;->l:I

    return v0
.end method

.method public final d()I
    .locals 4

    iget v0, p0, Lcom/appbrain/q/q;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/appbrain/t/u;->f:I

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->F(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/appbrain/t/u;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/appbrain/t/u;->h:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/appbrain/t/u;->i:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/appbrain/t/u;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x6

    iget v1, p0, Lcom/appbrain/t/u;->k:I

    invoke-static {v0, v1}, Lcom/appbrain/q/l;->J(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_6
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x7

    iget v1, p0, Lcom/appbrain/t/u;->l:I

    invoke-static {v0, v1}, Lcom/appbrain/q/l;->F(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_7
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    invoke-static {v3}, Lcom/appbrain/q/l;->M(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_8
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0x9

    iget v1, p0, Lcom/appbrain/t/u;->n:I

    invoke-static {v0, v1}, Lcom/appbrain/q/l;->F(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_9
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/appbrain/q/l;->M(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_a
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0}, Lcom/appbrain/q/c;->j()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/appbrain/q/q;->d:I

    return v2
.end method

.method public final d0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/t/u;->m:Z

    return v0
.end method

.method public final e0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f0()I
    .locals 1

    iget v0, p0, Lcom/appbrain/t/u;->n:I

    return v0
.end method

.method public final g(Lcom/appbrain/q/l;)V
    .locals 3

    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/appbrain/t/u;->f:I

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->y(II)V

    :cond_0
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appbrain/t/u;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/appbrain/t/u;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/appbrain/t/u;->i:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/appbrain/t/u;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/appbrain/t/u;->k:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->y(II)V

    :cond_5
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lcom/appbrain/t/u;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->y(II)V

    :cond_6
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/appbrain/t/u;->m:Z

    invoke-virtual {p1, v2, v0}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_7
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    iget v1, p0, Lcom/appbrain/t/u;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->y(II)V

    :cond_8
    iget v0, p0, Lcom/appbrain/t/u;->e:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/appbrain/t/u;->o:Z

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_9
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0, p1}, Lcom/appbrain/q/c;->e(Lcom/appbrain/q/l;)V

    return-void
.end method

.method public final g0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/t/u;->o:Z

    return v0
.end method

.method protected final w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/appbrain/t/k;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/appbrain/t/u;->q:Lcom/appbrain/q/a0;

    if-nez p1, :cond_1

    const-class p1, Lcom/appbrain/t/u;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/appbrain/t/u;->q:Lcom/appbrain/q/a0;

    if-nez p2, :cond_0

    new-instance p2, Lcom/appbrain/q/q$b;

    sget-object p3, Lcom/appbrain/t/u;->p:Lcom/appbrain/t/u;

    invoke-direct {p2, p3}, Lcom/appbrain/q/q$b;-><init>(Lcom/appbrain/q/q;)V

    sput-object p2, Lcom/appbrain/t/u;->q:Lcom/appbrain/q/a0;

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
    sget-object p1, Lcom/appbrain/t/u;->q:Lcom/appbrain/q/a0;

    return-object p1

    :pswitch_1
    check-cast p2, Lcom/appbrain/q/k;

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    :try_start_1
    invoke-virtual {p2}, Lcom/appbrain/q/k;->a()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    invoke-virtual {p0, p3, p2}, Lcom/appbrain/q/q;->A(ILcom/appbrain/q/k;)Z

    move-result p3

    goto/16 :goto_3

    :sswitch_0
    iget p3, p0, Lcom/appbrain/t/u;->e:I

    or-int/lit16 p3, p3, 0x200

    iput p3, p0, Lcom/appbrain/t/u;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result p3

    iput-boolean p3, p0, Lcom/appbrain/t/u;->o:Z

    goto :goto_1

    :sswitch_1
    iget p3, p0, Lcom/appbrain/t/u;->e:I

    or-int/lit16 p3, p3, 0x100

    iput p3, p0, Lcom/appbrain/t/u;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/u;->n:I

    goto :goto_1

    :sswitch_2
    iget p3, p0, Lcom/appbrain/t/u;->e:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p0, Lcom/appbrain/t/u;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result p3

    iput-boolean p3, p0, Lcom/appbrain/t/u;->m:Z

    goto :goto_1

    :sswitch_3
    iget p3, p0, Lcom/appbrain/t/u;->e:I

    or-int/lit8 p3, p3, 0x40

    iput p3, p0, Lcom/appbrain/t/u;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/u;->l:I

    goto :goto_1

    :sswitch_4
    invoke-virtual {p2}, Lcom/appbrain/q/k;->w()I

    move-result p3

    invoke-static {p3}, Lcom/appbrain/t/u$a;->c(I)Lcom/appbrain/t/u$a;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x6

    invoke-super {p0, v1, p3}, Lcom/appbrain/q/q;->y(II)V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/appbrain/t/u;->e:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/appbrain/t/u;->e:I

    iput p3, p0, Lcom/appbrain/t/u;->k:I

    goto :goto_1

    :sswitch_5
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/u;->e:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/appbrain/t/u;->e:I

    iput-object p3, p0, Lcom/appbrain/t/u;->j:Ljava/lang/String;

    goto :goto_1

    :sswitch_6
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/u;->e:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/appbrain/t/u;->e:I

    iput-object p3, p0, Lcom/appbrain/t/u;->i:Ljava/lang/String;

    goto :goto_1

    :sswitch_7
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/u;->e:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/appbrain/t/u;->e:I

    iput-object p3, p0, Lcom/appbrain/t/u;->h:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/u;->e:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/appbrain/t/u;->e:I

    iput-object p3, p0, Lcom/appbrain/t/u;->g:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_9
    iget p3, p0, Lcom/appbrain/t/u;->e:I

    or-int/2addr p3, p1

    iput p3, p0, Lcom/appbrain/t/u;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/u;->f:I
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_2
    :sswitch_a
    const/4 v0, 0x1

    goto/16 :goto_1

    :goto_3
    if-nez p3, :cond_2

    goto :goto_2

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

    :cond_4
    :pswitch_2
    sget-object p1, Lcom/appbrain/t/u;->p:Lcom/appbrain/t/u;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/appbrain/q/q$i;

    check-cast p3, Lcom/appbrain/t/u;

    invoke-direct {p0}, Lcom/appbrain/t/u;->M()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/u;->f:I

    invoke-direct {p3}, Lcom/appbrain/t/u;->M()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/u;->f:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/u;->f:I

    invoke-virtual {p0}, Lcom/appbrain/t/u;->V()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/u;->g:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/appbrain/t/u;->V()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/u;->g:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/u;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/u;->N()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/u;->h:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/u;->N()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/u;->h:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/u;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/u;->O()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/u;->i:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/u;->O()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/u;->i:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/u;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/appbrain/t/u;->Z()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/u;->j:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/appbrain/t/u;->Z()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/u;->j:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/u;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/u;->P()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/u;->k:I

    invoke-direct {p3}, Lcom/appbrain/t/u;->P()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/u;->k:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/u;->k:I

    invoke-direct {p0}, Lcom/appbrain/t/u;->Q()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/u;->l:I

    invoke-direct {p3}, Lcom/appbrain/t/u;->Q()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/u;->l:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/u;->l:I

    invoke-direct {p0}, Lcom/appbrain/t/u;->R()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/t/u;->m:Z

    invoke-direct {p3}, Lcom/appbrain/t/u;->R()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/t/u;->m:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/t/u;->m:Z

    invoke-virtual {p0}, Lcom/appbrain/t/u;->e0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/u;->n:I

    invoke-virtual {p3}, Lcom/appbrain/t/u;->e0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/u;->n:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/u;->n:I

    invoke-direct {p0}, Lcom/appbrain/t/u;->S()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/t/u;->o:Z

    invoke-direct {p3}, Lcom/appbrain/t/u;->S()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/t/u;->o:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/t/u;->o:Z

    sget-object p1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    if-ne p2, p1, :cond_5

    iget p1, p0, Lcom/appbrain/t/u;->e:I

    iget p2, p3, Lcom/appbrain/t/u;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/t/u;->e:I

    :cond_5
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/appbrain/t/u$b;

    invoke-direct {p1, v0}, Lcom/appbrain/t/u$b;-><init>(B)V

    return-object p1

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/appbrain/t/u;->p:Lcom/appbrain/t/u;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/appbrain/t/u;

    invoke-direct {p1}, Lcom/appbrain/t/u;-><init>()V

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

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x30 -> :sswitch_4
        0x38 -> :sswitch_3
        0x40 -> :sswitch_2
        0x48 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

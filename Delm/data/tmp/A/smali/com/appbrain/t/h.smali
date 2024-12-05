.class public final Lcom/appbrain/t/h;
.super Lcom/appbrain/q/q;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/t/h$a;
    }
.end annotation


# static fields
.field private static final k:Lcom/appbrain/t/h;

.field private static volatile l:Lcom/appbrain/q/a0;


# instance fields
.field private e:I

.field private f:Lcom/appbrain/t/j;

.field private g:Z

.field private h:Lcom/appbrain/q/s$d;

.field private i:Z

.field private j:Lcom/appbrain/q/s$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/t/h;

    invoke-direct {v0}, Lcom/appbrain/t/h;-><init>()V

    sput-object v0, Lcom/appbrain/t/h;->k:Lcom/appbrain/t/h;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->G()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/q;-><init>()V

    invoke-static {}, Lcom/appbrain/q/q;->K()Lcom/appbrain/q/s$d;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-static {}, Lcom/appbrain/q/q;->K()Lcom/appbrain/q/s$d;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    return-void
.end method

.method public static L(Ljava/io/InputStream;)Lcom/appbrain/t/h;
    .locals 1

    sget-object v0, Lcom/appbrain/t/h;->k:Lcom/appbrain/t/h;

    invoke-static {v0, p0}, Lcom/appbrain/q/q;->p(Lcom/appbrain/q/q;Ljava/io/InputStream;)Lcom/appbrain/q/q;

    move-result-object p0

    check-cast p0, Lcom/appbrain/t/h;

    return-object p0
.end method

.method static synthetic M(Lcom/appbrain/t/h;Lcom/appbrain/t/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-interface {v0}, Lcom/appbrain/q/s$d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-static {v0}, Lcom/appbrain/q/q;->u(Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    :cond_0
    iget-object p0, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-virtual {p1}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/b;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic N(Lcom/appbrain/t/h;Lcom/appbrain/t/c;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    invoke-interface {v0}, Lcom/appbrain/q/s$d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    invoke-static {v0}, Lcom/appbrain/q/q;->u(Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    :cond_0
    iget-object p0, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic O(Lcom/appbrain/t/h;Lcom/appbrain/t/j;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/appbrain/t/h;->f:Lcom/appbrain/t/j;

    iget p1, p0, Lcom/appbrain/t/h;->e:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appbrain/t/h;->e:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic P(Lcom/appbrain/t/h;Z)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/h;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/t/h;->e:I

    iput-boolean p1, p0, Lcom/appbrain/t/h;->i:Z

    return-void
.end method

.method public static R()Lcom/appbrain/t/h$a;
    .locals 1

    sget-object v0, Lcom/appbrain/t/h;->k:Lcom/appbrain/t/h;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v0

    check-cast v0, Lcom/appbrain/t/h$a;

    return-object v0
.end method

.method static synthetic S()Lcom/appbrain/t/h;
    .locals 1

    sget-object v0, Lcom/appbrain/t/h;->k:Lcom/appbrain/t/h;

    return-object v0
.end method

.method private T()Lcom/appbrain/t/j;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/h;->f:Lcom/appbrain/t/j;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appbrain/t/j;->i1()Lcom/appbrain/t/j;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private U()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/h;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private V()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/h;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/t/h;->i:Z

    return v0
.end method

.method public final d()I
    .locals 5

    iget v0, p0, Lcom/appbrain/q/q;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/appbrain/t/h;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/appbrain/t/h;->T()Lcom/appbrain/t/j;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->t(ILcom/appbrain/q/x;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/appbrain/t/h;->e:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    invoke-static {v3}, Lcom/appbrain/q/l;->M(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appbrain/q/x;

    invoke-static {v3, v4}, Lcom/appbrain/q/l;->t(ILcom/appbrain/q/x;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/appbrain/t/h;->e:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    invoke-static {v3}, Lcom/appbrain/q/l;->M(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appbrain/q/x;

    invoke-static {v1, v3}, Lcom/appbrain/q/l;->t(ILcom/appbrain/q/x;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v1}, Lcom/appbrain/q/c;->j()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/q/q;->d:I

    return v0
.end method

.method public final g(Lcom/appbrain/q/l;)V
    .locals 4

    iget v0, p0, Lcom/appbrain/t/h;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/appbrain/t/h;->T()Lcom/appbrain/t/j;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->l(ILcom/appbrain/q/x;)V

    :cond_0
    iget v0, p0, Lcom/appbrain/t/h;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/appbrain/t/h;->g:Z

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appbrain/q/x;

    invoke-virtual {p1, v2, v3}, Lcom/appbrain/q/l;->l(ILcom/appbrain/q/x;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/appbrain/t/h;->e:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/appbrain/t/h;->i:Z

    invoke-virtual {p1, v2, v1}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appbrain/q/x;

    invoke-virtual {p1, v1, v2}, Lcom/appbrain/q/l;->l(ILcom/appbrain/q/x;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0, p1}, Lcom/appbrain/q/c;->e(Lcom/appbrain/q/l;)V

    return-void
.end method

.method protected final w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/appbrain/t/a;->a:[I

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
    sget-object p1, Lcom/appbrain/t/h;->l:Lcom/appbrain/q/a0;

    if-nez p1, :cond_1

    const-class p1, Lcom/appbrain/t/h;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/appbrain/t/h;->l:Lcom/appbrain/q/a0;

    if-nez p2, :cond_0

    new-instance p2, Lcom/appbrain/q/q$b;

    sget-object p3, Lcom/appbrain/t/h;->k:Lcom/appbrain/t/h;

    invoke-direct {p2, p3}, Lcom/appbrain/q/q$b;-><init>(Lcom/appbrain/q/q;)V

    sput-object p2, Lcom/appbrain/t/h;->l:Lcom/appbrain/q/a0;

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
    sget-object p1, Lcom/appbrain/t/h;->l:Lcom/appbrain/q/a0;

    return-object p1

    :pswitch_1
    check-cast p2, Lcom/appbrain/q/k;

    check-cast p3, Lcom/appbrain/q/n;

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_d

    :try_start_1
    invoke-virtual {p2}, Lcom/appbrain/q/k;->a()I

    move-result v2

    if-eqz v2, :cond_c

    const/16 v3, 0xa

    if-eq v2, v3, :cond_9

    const/16 v3, 0x10

    if-eq v2, v3, :cond_8

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_6

    const/16 v3, 0x20

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, v2, p2}, Lcom/appbrain/q/q;->A(ILcom/appbrain/q/k;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_4

    :cond_3
    iget-object v2, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    invoke-interface {v2}, Lcom/appbrain/q/s$d;->a()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    invoke-static {v2}, Lcom/appbrain/q/q;->u(Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object v2

    iput-object v2, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    :cond_4
    iget-object v2, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    invoke-static {}, Lcom/appbrain/t/c;->T()Lcom/appbrain/q/a0;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/appbrain/q/k;->e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object v3

    check-cast v3, Lcom/appbrain/t/c;

    :goto_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/appbrain/t/h;->e:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/appbrain/t/h;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result v2

    iput-boolean v2, p0, Lcom/appbrain/t/h;->i:Z

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-interface {v2}, Lcom/appbrain/q/s$d;->a()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-static {v2}, Lcom/appbrain/q/q;->u(Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object v2

    iput-object v2, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    :cond_7
    iget-object v2, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-static {}, Lcom/appbrain/t/b;->O()Lcom/appbrain/q/a0;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/appbrain/q/k;->e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object v3

    check-cast v3, Lcom/appbrain/t/b;

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/appbrain/t/h;->e:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/appbrain/t/h;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result v2

    iput-boolean v2, p0, Lcom/appbrain/t/h;->g:Z

    goto :goto_1

    :cond_9
    iget v2, p0, Lcom/appbrain/t/h;->e:I

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_a

    iget-object v2, p0, Lcom/appbrain/t/h;->f:Lcom/appbrain/t/j;

    invoke-virtual {v2}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v2

    check-cast v2, Lcom/appbrain/t/j$a;

    goto :goto_3

    :cond_a
    move-object v2, v1

    :goto_3
    invoke-static {}, Lcom/appbrain/t/j;->m1()Lcom/appbrain/q/a0;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/appbrain/q/k;->e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object v3

    check-cast v3, Lcom/appbrain/t/j;

    iput-object v3, p0, Lcom/appbrain/t/h;->f:Lcom/appbrain/t/j;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v3}, Lcom/appbrain/q/q$a;->q(Lcom/appbrain/q/q;)Lcom/appbrain/q/q$a;

    invoke-virtual {v2}, Lcom/appbrain/q/q$a;->t()Lcom/appbrain/q/q;

    move-result-object v2

    check-cast v2, Lcom/appbrain/t/j;

    iput-object v2, p0, Lcom/appbrain/t/h;->f:Lcom/appbrain/t/j;

    :cond_b
    iget v2, p0, Lcom/appbrain/t/h;->e:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/appbrain/t/h;->e:I
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_c
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

    :cond_d
    :pswitch_2
    sget-object p1, Lcom/appbrain/t/h;->k:Lcom/appbrain/t/h;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/appbrain/q/q$i;

    check-cast p3, Lcom/appbrain/t/h;

    iget-object p1, p0, Lcom/appbrain/t/h;->f:Lcom/appbrain/t/j;

    iget-object v0, p3, Lcom/appbrain/t/h;->f:Lcom/appbrain/t/j;

    invoke-interface {p2, p1, v0}, Lcom/appbrain/q/q$i;->a(Lcom/appbrain/q/x;Lcom/appbrain/q/x;)Lcom/appbrain/q/x;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/j;

    iput-object p1, p0, Lcom/appbrain/t/h;->f:Lcom/appbrain/t/j;

    invoke-direct {p0}, Lcom/appbrain/t/h;->U()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/t/h;->g:Z

    invoke-direct {p3}, Lcom/appbrain/t/h;->U()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/t/h;->g:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/t/h;->g:Z

    iget-object p1, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    iget-object v0, p3, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-interface {p2, p1, v0}, Lcom/appbrain/q/q$i;->g(Lcom/appbrain/q/s$d;Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-direct {p0}, Lcom/appbrain/t/h;->V()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/t/h;->i:Z

    invoke-direct {p3}, Lcom/appbrain/t/h;->V()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/t/h;->i:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/t/h;->i:Z

    iget-object p1, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    iget-object v0, p3, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    invoke-interface {p2, p1, v0}, Lcom/appbrain/q/q$i;->g(Lcom/appbrain/q/s$d;Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    sget-object p1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    if-ne p2, p1, :cond_e

    iget p1, p0, Lcom/appbrain/t/h;->e:I

    iget p2, p3, Lcom/appbrain/t/h;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/t/h;->e:I

    :cond_e
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/appbrain/t/h$a;

    invoke-direct {p1, v0}, Lcom/appbrain/t/h$a;-><init>(B)V

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/appbrain/t/h;->h:Lcom/appbrain/q/s$d;

    invoke-interface {p1}, Lcom/appbrain/q/s$d;->b()V

    iget-object p1, p0, Lcom/appbrain/t/h;->j:Lcom/appbrain/q/s$d;

    invoke-interface {p1}, Lcom/appbrain/q/s$d;->b()V

    return-object v1

    :pswitch_6
    sget-object p1, Lcom/appbrain/t/h;->k:Lcom/appbrain/t/h;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/appbrain/t/h;

    invoke-direct {p1}, Lcom/appbrain/t/h;-><init>()V

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

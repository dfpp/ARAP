.class public final Lcom/appbrain/t/f;
.super Lcom/appbrain/q/q;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/t/f$a;
    }
.end annotation


# static fields
.field private static final k:Lcom/appbrain/t/f;

.field private static volatile l:Lcom/appbrain/q/a0;


# instance fields
.field private e:I

.field private f:Lcom/appbrain/q/s$d;

.field private g:Lcom/appbrain/q/s$d;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/t/f;

    invoke-direct {v0}, Lcom/appbrain/t/f;-><init>()V

    sput-object v0, Lcom/appbrain/t/f;->k:Lcom/appbrain/t/f;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->G()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/q;-><init>()V

    invoke-static {}, Lcom/appbrain/q/q;->K()Lcom/appbrain/q/s$d;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    invoke-static {}, Lcom/appbrain/q/q;->K()Lcom/appbrain/q/s$d;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    return-void
.end method

.method public static U()Lcom/appbrain/t/f;
    .locals 1

    sget-object v0, Lcom/appbrain/t/f;->k:Lcom/appbrain/t/f;

    return-object v0
.end method

.method public static V()Lcom/appbrain/q/a0;
    .locals 1

    sget-object v0, Lcom/appbrain/t/f;->k:Lcom/appbrain/t/f;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->f()Lcom/appbrain/q/a0;

    move-result-object v0

    return-object v0
.end method

.method static synthetic W()Lcom/appbrain/t/f;
    .locals 1

    sget-object v0, Lcom/appbrain/t/f;->k:Lcom/appbrain/t/f;

    return-object v0
.end method

.method private X()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/f;->e:I

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
.method public final L()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    return-object v0
.end method

.method public final M()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final N()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    return-object v0
.end method

.method public final O()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final P()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/f;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/t/f;->h:Z

    return v0
.end method

.method public final R()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/f;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final S()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/t/f;->i:Z

    return v0
.end method

.method public final T()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/t/f;->j:Z

    return v0
.end method

.method public final d()I
    .locals 5

    iget v0, p0, Lcom/appbrain/q/q;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appbrain/q/x;

    invoke-static {v4, v3}, Lcom/appbrain/q/l;->t(ILcom/appbrain/q/x;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/q/x;

    invoke-static {v3, v1}, Lcom/appbrain/q/l;->t(ILcom/appbrain/q/x;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/appbrain/t/f;->e:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/appbrain/q/l;->M(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lcom/appbrain/t/f;->e:I

    and-int/2addr v0, v3

    const/4 v1, 0x4

    if-ne v0, v3, :cond_4

    invoke-static {v1}, Lcom/appbrain/q/l;->M(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcom/appbrain/t/f;->e:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/appbrain/q/l;->M(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0}, Lcom/appbrain/q/c;->j()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/appbrain/q/q;->d:I

    return v2
.end method

.method public final g(Lcom/appbrain/q/l;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appbrain/q/x;

    invoke-virtual {p1, v3, v2}, Lcom/appbrain/q/l;->l(ILcom/appbrain/q/x;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/q/x;

    invoke-virtual {p1, v2, v1}, Lcom/appbrain/q/l;->l(ILcom/appbrain/q/x;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/appbrain/t/f;->e:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/appbrain/t/f;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_2
    iget v0, p0, Lcom/appbrain/t/f;->e:I

    and-int/2addr v0, v2

    const/4 v1, 0x4

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/appbrain/t/f;->i:Z

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_3
    iget v0, p0, Lcom/appbrain/t/f;->e:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/appbrain/t/f;->j:Z

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0, p1}, Lcom/appbrain/q/c;->e(Lcom/appbrain/q/l;)V

    return-void
.end method

.method protected final w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/appbrain/t/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/appbrain/t/f;->l:Lcom/appbrain/q/a0;

    if-nez p1, :cond_1

    const-class p1, Lcom/appbrain/t/f;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/appbrain/t/f;->l:Lcom/appbrain/q/a0;

    if-nez p2, :cond_0

    new-instance p2, Lcom/appbrain/q/q$b;

    sget-object p3, Lcom/appbrain/t/f;->k:Lcom/appbrain/t/f;

    invoke-direct {p2, p3}, Lcom/appbrain/q/q$b;-><init>(Lcom/appbrain/q/q;)V

    sput-object p2, Lcom/appbrain/t/f;->l:Lcom/appbrain/q/a0;

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
    sget-object p1, Lcom/appbrain/t/f;->l:Lcom/appbrain/q/a0;

    return-object p1

    :pswitch_1
    check-cast p2, Lcom/appbrain/q/k;

    check-cast p3, Lcom/appbrain/q/n;

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_b

    :try_start_1
    invoke-virtual {p2}, Lcom/appbrain/q/k;->a()I

    move-result v1

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    if-eq v1, v2, :cond_8

    const/16 v2, 0x12

    if-eq v1, v2, :cond_6

    const/16 v2, 0x18

    if-eq v1, v2, :cond_5

    const/16 v2, 0x20

    if-eq v1, v2, :cond_4

    const/16 v2, 0x28

    if-eq v1, v2, :cond_3

    invoke-virtual {p0, v1, p2}, Lcom/appbrain/q/q;->A(ILcom/appbrain/q/k;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/appbrain/t/f;->e:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/appbrain/t/f;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result v1

    iput-boolean v1, p0, Lcom/appbrain/t/f;->j:Z

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/appbrain/t/f;->e:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/appbrain/t/f;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result v1

    iput-boolean v1, p0, Lcom/appbrain/t/f;->i:Z

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/appbrain/t/f;->e:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/appbrain/t/f;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result v1

    iput-boolean v1, p0, Lcom/appbrain/t/f;->h:Z

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    invoke-interface {v1}, Lcom/appbrain/q/s$d;->a()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    invoke-static {v1}, Lcom/appbrain/q/q;->u(Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object v1

    iput-object v1, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    :cond_7
    iget-object v1, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    invoke-static {}, Lcom/appbrain/t/g;->P()Lcom/appbrain/q/a0;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/appbrain/q/k;->e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object v2

    check-cast v2, Lcom/appbrain/t/g;

    :goto_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    invoke-interface {v1}, Lcom/appbrain/q/s$d;->a()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    invoke-static {v1}, Lcom/appbrain/q/q;->u(Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object v1

    iput-object v1, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    :cond_9
    iget-object v1, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    invoke-static {}, Lcom/appbrain/t/g;->P()Lcom/appbrain/q/a0;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/appbrain/q/k;->e(Lcom/appbrain/q/a0;Lcom/appbrain/q/n;)Lcom/appbrain/q/x;

    move-result-object v2

    check-cast v2, Lcom/appbrain/t/g;
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_a
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

    :cond_b
    :pswitch_2
    sget-object p1, Lcom/appbrain/t/f;->k:Lcom/appbrain/t/f;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/appbrain/q/q$i;

    check-cast p3, Lcom/appbrain/t/f;

    iget-object p1, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    iget-object v0, p3, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    invoke-interface {p2, p1, v0}, Lcom/appbrain/q/q$i;->g(Lcom/appbrain/q/s$d;Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    iget-object p1, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    iget-object v0, p3, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    invoke-interface {p2, p1, v0}, Lcom/appbrain/q/q$i;->g(Lcom/appbrain/q/s$d;Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    invoke-virtual {p0}, Lcom/appbrain/t/f;->P()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/t/f;->h:Z

    invoke-virtual {p3}, Lcom/appbrain/t/f;->P()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/t/f;->h:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/t/f;->h:Z

    invoke-virtual {p0}, Lcom/appbrain/t/f;->R()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/t/f;->i:Z

    invoke-virtual {p3}, Lcom/appbrain/t/f;->R()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/t/f;->i:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/t/f;->i:Z

    invoke-direct {p0}, Lcom/appbrain/t/f;->X()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/t/f;->j:Z

    invoke-direct {p3}, Lcom/appbrain/t/f;->X()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/t/f;->j:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/t/f;->j:Z

    sget-object p1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    if-ne p2, p1, :cond_c

    iget p1, p0, Lcom/appbrain/t/f;->e:I

    iget p2, p3, Lcom/appbrain/t/f;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/t/f;->e:I

    :cond_c
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/appbrain/t/f$a;

    invoke-direct {p1, v0}, Lcom/appbrain/t/f$a;-><init>(B)V

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/appbrain/t/f;->f:Lcom/appbrain/q/s$d;

    invoke-interface {p1}, Lcom/appbrain/q/s$d;->b()V

    iget-object p1, p0, Lcom/appbrain/t/f;->g:Lcom/appbrain/q/s$d;

    invoke-interface {p1}, Lcom/appbrain/q/s$d;->b()V

    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/appbrain/t/f;->k:Lcom/appbrain/t/f;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/appbrain/t/f;

    invoke-direct {p1}, Lcom/appbrain/t/f;-><init>()V

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

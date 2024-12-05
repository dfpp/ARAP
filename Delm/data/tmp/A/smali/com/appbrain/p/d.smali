.class public final Lcom/appbrain/p/d;
.super Lcom/appbrain/q/q;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/p/d$a;
    }
.end annotation


# static fields
.field private static final h:Lcom/appbrain/p/d;

.field private static volatile i:Lcom/appbrain/q/a0;


# instance fields
.field private e:I

.field private f:Lcom/appbrain/q/j;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/p/d;

    invoke-direct {v0}, Lcom/appbrain/p/d;-><init>()V

    sput-object v0, Lcom/appbrain/p/d;->h:Lcom/appbrain/p/d;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->G()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/q;-><init>()V

    sget-object v0, Lcom/appbrain/q/j;->c:Lcom/appbrain/q/j;

    iput-object v0, p0, Lcom/appbrain/p/d;->f:Lcom/appbrain/q/j;

    const/4 v0, 0x1

    iput v0, p0, Lcom/appbrain/p/d;->g:I

    return-void
.end method

.method public static L()Lcom/appbrain/p/d$a;
    .locals 1

    sget-object v0, Lcom/appbrain/p/d;->h:Lcom/appbrain/p/d;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v0

    check-cast v0, Lcom/appbrain/p/d$a;

    return-object v0
.end method

.method static synthetic M(Lcom/appbrain/p/d;Lcom/appbrain/p/f;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/p/d;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/p/d;->e:I

    invoke-virtual {p1}, Lcom/appbrain/p/f;->c()I

    move-result p1

    iput p1, p0, Lcom/appbrain/p/d;->g:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic N(Lcom/appbrain/p/d;Lcom/appbrain/q/j;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/p/d;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/p/d;->e:I

    iput-object p1, p0, Lcom/appbrain/p/d;->f:Lcom/appbrain/q/j;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static O()Lcom/appbrain/q/a0;
    .locals 1

    sget-object v0, Lcom/appbrain/p/d;->h:Lcom/appbrain/p/d;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->f()Lcom/appbrain/q/a0;

    move-result-object v0

    return-object v0
.end method

.method static synthetic P()Lcom/appbrain/p/d;
    .locals 1

    sget-object v0, Lcom/appbrain/p/d;->h:Lcom/appbrain/p/d;

    return-object v0
.end method

.method private Q()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/p/d;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private R()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/p/d;->e:I

    const/4 v1, 0x2

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
    iget v0, p0, Lcom/appbrain/p/d;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appbrain/p/d;->f:Lcom/appbrain/q/j;

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->s(ILcom/appbrain/q/j;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/appbrain/p/d;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/appbrain/p/d;->g:I

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->J(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0}, Lcom/appbrain/q/c;->j()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/appbrain/q/q;->d:I

    return v2
.end method

.method public final g(Lcom/appbrain/q/l;)V
    .locals 2

    iget v0, p0, Lcom/appbrain/p/d;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/p/d;->f:Lcom/appbrain/q/j;

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->k(ILcom/appbrain/q/j;)V

    :cond_0
    iget v0, p0, Lcom/appbrain/p/d;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/appbrain/p/d;->g:I

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->y(II)V

    :cond_1
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0, p1}, Lcom/appbrain/q/c;->e(Lcom/appbrain/q/l;)V

    return-void
.end method

.method protected final w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lcom/appbrain/p/d;->i:Lcom/appbrain/q/a0;

    if-nez p1, :cond_1

    const-class p1, Lcom/appbrain/p/d;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/appbrain/p/d;->i:Lcom/appbrain/q/a0;

    if-nez p2, :cond_0

    new-instance p2, Lcom/appbrain/q/q$b;

    sget-object p3, Lcom/appbrain/p/d;->h:Lcom/appbrain/p/d;

    invoke-direct {p2, p3}, Lcom/appbrain/q/q$b;-><init>(Lcom/appbrain/q/q;)V

    sput-object p2, Lcom/appbrain/p/d;->i:Lcom/appbrain/q/a0;

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
    sget-object p1, Lcom/appbrain/p/d;->i:Lcom/appbrain/q/a0;

    return-object p1

    :pswitch_1
    check-cast p2, Lcom/appbrain/q/k;

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_7

    :try_start_1
    invoke-virtual {p2}, Lcom/appbrain/q/k;->a()I

    move-result p3

    if-eqz p3, :cond_6

    const/16 v2, 0xa

    if-eq p3, v2, :cond_5

    const/16 v2, 0x10

    if-eq p3, v2, :cond_3

    invoke-virtual {p0, p3, p2}, Lcom/appbrain/q/q;->A(ILcom/appbrain/q/k;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/appbrain/q/k;->w()I

    move-result p3

    packed-switch p3, :pswitch_data_1

    move-object v2, v1

    goto :goto_2

    :pswitch_2
    sget-object v2, Lcom/appbrain/p/f;->h:Lcom/appbrain/p/f;

    goto :goto_2

    :pswitch_3
    sget-object v2, Lcom/appbrain/p/f;->g:Lcom/appbrain/p/f;

    goto :goto_2

    :pswitch_4
    sget-object v2, Lcom/appbrain/p/f;->f:Lcom/appbrain/p/f;

    goto :goto_2

    :pswitch_5
    sget-object v2, Lcom/appbrain/p/f;->e:Lcom/appbrain/p/f;

    goto :goto_2

    :pswitch_6
    sget-object v2, Lcom/appbrain/p/f;->d:Lcom/appbrain/p/f;

    goto :goto_2

    :pswitch_7
    sget-object v2, Lcom/appbrain/p/f;->c:Lcom/appbrain/p/f;

    :goto_2
    const/4 v3, 0x2

    if-nez v2, :cond_4

    invoke-super {p0, v3, p3}, Lcom/appbrain/q/q;->y(II)V

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/appbrain/p/d;->e:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/appbrain/p/d;->e:I

    iput p3, p0, Lcom/appbrain/p/d;->g:I

    goto :goto_1

    :cond_5
    iget p3, p0, Lcom/appbrain/p/d;->e:I

    or-int/2addr p3, p1

    iput p3, p0, Lcom/appbrain/p/d;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->v()Lcom/appbrain/q/j;

    move-result-object p3

    iput-object p3, p0, Lcom/appbrain/p/d;->f:Lcom/appbrain/q/j;
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_3
    const/4 v0, 0x1

    goto :goto_1

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

    :cond_7
    :pswitch_8
    sget-object p1, Lcom/appbrain/p/d;->h:Lcom/appbrain/p/d;

    return-object p1

    :pswitch_9
    check-cast p2, Lcom/appbrain/q/q$i;

    check-cast p3, Lcom/appbrain/p/d;

    invoke-direct {p0}, Lcom/appbrain/p/d;->Q()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/p/d;->f:Lcom/appbrain/q/j;

    invoke-direct {p3}, Lcom/appbrain/p/d;->Q()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/p/d;->f:Lcom/appbrain/q/j;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->i(ZLcom/appbrain/q/j;ZLcom/appbrain/q/j;)Lcom/appbrain/q/j;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/p/d;->f:Lcom/appbrain/q/j;

    invoke-direct {p0}, Lcom/appbrain/p/d;->R()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/p/d;->g:I

    invoke-direct {p3}, Lcom/appbrain/p/d;->R()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/p/d;->g:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/p/d;->g:I

    sget-object p1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    if-ne p2, p1, :cond_8

    iget p1, p0, Lcom/appbrain/p/d;->e:I

    iget p2, p3, Lcom/appbrain/p/d;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/p/d;->e:I

    :cond_8
    return-object p0

    :pswitch_a
    new-instance p1, Lcom/appbrain/p/d$a;

    invoke-direct {p1, v0}, Lcom/appbrain/p/d$a;-><init>(B)V

    return-object p1

    :pswitch_b
    return-object v1

    :pswitch_c
    sget-object p1, Lcom/appbrain/p/d;->h:Lcom/appbrain/p/d;

    return-object p1

    :pswitch_d
    new-instance p1, Lcom/appbrain/p/d;

    invoke-direct {p1}, Lcom/appbrain/p/d;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

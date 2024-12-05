.class public final Lcom/appbrain/t/l;
.super Lcom/appbrain/q/q;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/t/l$b;,
        Lcom/appbrain/t/l$a;
    }
.end annotation


# static fields
.field private static final h:Lcom/appbrain/t/l;

.field private static volatile i:Lcom/appbrain/q/a0;


# instance fields
.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/t/l;

    invoke-direct {v0}, Lcom/appbrain/t/l;-><init>()V

    sput-object v0, Lcom/appbrain/t/l;->h:Lcom/appbrain/t/l;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->G()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/q;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/appbrain/t/l;->f:I

    return-void
.end method

.method static synthetic M(Lcom/appbrain/t/l;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/l;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/t/l;->e:I

    iput p1, p0, Lcom/appbrain/t/l;->g:I

    return-void
.end method

.method static synthetic N(Lcom/appbrain/t/l;Lcom/appbrain/t/l$a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/l;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/t/l;->e:I

    invoke-virtual {p1}, Lcom/appbrain/t/l$a;->c()I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/l;->f:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static O()Lcom/appbrain/t/l$b;
    .locals 1

    sget-object v0, Lcom/appbrain/t/l;->h:Lcom/appbrain/t/l;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v0

    check-cast v0, Lcom/appbrain/t/l$b;

    return-object v0
.end method

.method public static P()Lcom/appbrain/t/l;
    .locals 1

    sget-object v0, Lcom/appbrain/t/l;->h:Lcom/appbrain/t/l;

    return-object v0
.end method

.method public static Q()Lcom/appbrain/q/a0;
    .locals 1

    sget-object v0, Lcom/appbrain/t/l;->h:Lcom/appbrain/t/l;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->f()Lcom/appbrain/q/a0;

    move-result-object v0

    return-object v0
.end method

.method static synthetic R()Lcom/appbrain/t/l;
    .locals 1

    sget-object v0, Lcom/appbrain/t/l;->h:Lcom/appbrain/t/l;

    return-object v0
.end method

.method private S()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/l;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private T()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/l;->e:I

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
.method public final L()Lcom/appbrain/t/l$a;
    .locals 1

    iget v0, p0, Lcom/appbrain/t/l;->f:I

    invoke-static {v0}, Lcom/appbrain/t/l$a;->d(I)Lcom/appbrain/t/l$a;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appbrain/t/l$a;->c:Lcom/appbrain/t/l$a;

    :cond_0
    return-object v0
.end method

.method public final d()I
    .locals 3

    iget v0, p0, Lcom/appbrain/q/q;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/appbrain/t/l;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/appbrain/t/l;->f:I

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->J(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/appbrain/t/l;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/appbrain/t/l;->g:I

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->F(II)I

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

    iget v0, p0, Lcom/appbrain/t/l;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/appbrain/t/l;->f:I

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->y(II)V

    :cond_0
    iget v0, p0, Lcom/appbrain/t/l;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/appbrain/t/l;->g:I

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->y(II)V

    :cond_1
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0, p1}, Lcom/appbrain/q/c;->e(Lcom/appbrain/q/l;)V

    return-void
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
    sget-object p1, Lcom/appbrain/t/l;->i:Lcom/appbrain/q/a0;

    if-nez p1, :cond_1

    const-class p1, Lcom/appbrain/t/l;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/appbrain/t/l;->i:Lcom/appbrain/q/a0;

    if-nez p2, :cond_0

    new-instance p2, Lcom/appbrain/q/q$b;

    sget-object p3, Lcom/appbrain/t/l;->h:Lcom/appbrain/t/l;

    invoke-direct {p2, p3}, Lcom/appbrain/q/q$b;-><init>(Lcom/appbrain/q/q;)V

    sput-object p2, Lcom/appbrain/t/l;->i:Lcom/appbrain/q/a0;

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
    sget-object p1, Lcom/appbrain/t/l;->i:Lcom/appbrain/q/a0;

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

    const/16 v1, 0x8

    if-eq p3, v1, :cond_4

    const/16 v1, 0x10

    if-eq p3, v1, :cond_3

    invoke-virtual {p0, p3, p2}, Lcom/appbrain/q/q;->A(ILcom/appbrain/q/k;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    :cond_3
    iget p3, p0, Lcom/appbrain/t/l;->e:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/appbrain/t/l;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/l;->g:I

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/appbrain/q/k;->w()I

    move-result p3

    invoke-static {p3}, Lcom/appbrain/t/l$a;->d(I)Lcom/appbrain/t/l$a;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-super {p0, p1, p3}, Lcom/appbrain/q/q;->y(II)V

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/appbrain/t/l;->e:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/appbrain/t/l;->e:I

    iput p3, p0, Lcom/appbrain/t/l;->f:I
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

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

    :goto_3
    throw p1

    :cond_7
    :pswitch_2
    sget-object p1, Lcom/appbrain/t/l;->h:Lcom/appbrain/t/l;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/appbrain/q/q$i;

    check-cast p3, Lcom/appbrain/t/l;

    invoke-direct {p0}, Lcom/appbrain/t/l;->S()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/l;->f:I

    invoke-direct {p3}, Lcom/appbrain/t/l;->S()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/l;->f:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/l;->f:I

    invoke-direct {p0}, Lcom/appbrain/t/l;->T()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/l;->g:I

    invoke-direct {p3}, Lcom/appbrain/t/l;->T()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/l;->g:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/l;->g:I

    sget-object p1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    if-ne p2, p1, :cond_8

    iget p1, p0, Lcom/appbrain/t/l;->e:I

    iget p2, p3, Lcom/appbrain/t/l;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/t/l;->e:I

    :cond_8
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/appbrain/t/l$b;

    invoke-direct {p1, v0}, Lcom/appbrain/t/l$b;-><init>(B)V

    return-object p1

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/appbrain/t/l;->h:Lcom/appbrain/t/l;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/appbrain/t/l;

    invoke-direct {p1}, Lcom/appbrain/t/l;-><init>()V

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

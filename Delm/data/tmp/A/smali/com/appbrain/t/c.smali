.class public final Lcom/appbrain/t/c;
.super Lcom/appbrain/q/q;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/t/c$a;
    }
.end annotation


# static fields
.field private static final k:Lcom/appbrain/t/c;

.field private static volatile l:Lcom/appbrain/q/a0;


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:J

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/t/c;

    invoke-direct {v0}, Lcom/appbrain/t/c;-><init>()V

    sput-object v0, Lcom/appbrain/t/c;->k:Lcom/appbrain/t/c;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->G()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/q;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/t/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/c;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic L(Lcom/appbrain/t/c;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/c;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/t/c;->e:I

    iput p1, p0, Lcom/appbrain/t/c;->g:I

    return-void
.end method

.method static synthetic M(Lcom/appbrain/t/c;J)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/c;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/t/c;->e:I

    iput-wide p1, p0, Lcom/appbrain/t/c;->h:J

    return-void
.end method

.method static synthetic N(Lcom/appbrain/t/c;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/c;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/t/c;->e:I

    iput-object p1, p0, Lcom/appbrain/t/c;->f:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic Q(Lcom/appbrain/t/c;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/c;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/t/c;->e:I

    iput p1, p0, Lcom/appbrain/t/c;->i:I

    return-void
.end method

.method static synthetic R(Lcom/appbrain/t/c;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/c;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/appbrain/t/c;->e:I

    iput-object p1, p0, Lcom/appbrain/t/c;->j:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static S()Lcom/appbrain/t/c$a;
    .locals 1

    sget-object v0, Lcom/appbrain/t/c;->k:Lcom/appbrain/t/c;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v0

    check-cast v0, Lcom/appbrain/t/c$a;

    return-object v0
.end method

.method public static T()Lcom/appbrain/q/a0;
    .locals 1

    sget-object v0, Lcom/appbrain/t/c;->k:Lcom/appbrain/t/c;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->f()Lcom/appbrain/q/a0;

    move-result-object v0

    return-object v0
.end method

.method static synthetic U()Lcom/appbrain/t/c;
    .locals 1

    sget-object v0, Lcom/appbrain/t/c;->k:Lcom/appbrain/t/c;

    return-object v0
.end method

.method private V()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/c;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private W()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/c;->e:I

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

    iget v0, p0, Lcom/appbrain/t/c;->e:I

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

    iget v0, p0, Lcom/appbrain/t/c;->e:I

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
.method public final O()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/c;->e:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final P()I
    .locals 1

    iget v0, p0, Lcom/appbrain/t/c;->i:I

    return v0
.end method

.method public final d()I
    .locals 5

    iget v0, p0, Lcom/appbrain/q/q;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/appbrain/t/c;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appbrain/t/c;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    iget v0, p0, Lcom/appbrain/t/c;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/appbrain/t/c;->g:I

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->F(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    iget v0, p0, Lcom/appbrain/t/c;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    iget-wide v3, p0, Lcom/appbrain/t/c;->h:J

    invoke-static {v0, v3, v4}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_3
    iget v0, p0, Lcom/appbrain/t/c;->e:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/appbrain/t/c;->i:I

    invoke-static {v1, v0}, Lcom/appbrain/q/l;->F(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_4
    iget v0, p0, Lcom/appbrain/t/c;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/appbrain/t/c;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

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

    iget v0, p0, Lcom/appbrain/t/c;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/t/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/appbrain/t/c;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/appbrain/t/c;->g:I

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->y(II)V

    :cond_1
    iget v0, p0, Lcom/appbrain/t/c;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    iget-wide v2, p0, Lcom/appbrain/t/c;->h:J

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2, v3}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_2
    iget v0, p0, Lcom/appbrain/t/c;->e:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/appbrain/t/c;->i:I

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->y(II)V

    :cond_3
    iget v0, p0, Lcom/appbrain/t/c;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/appbrain/t/c;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0, p1}, Lcom/appbrain/q/c;->e(Lcom/appbrain/q/l;)V

    return-void
.end method

.method protected final w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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
    sget-object p1, Lcom/appbrain/t/c;->l:Lcom/appbrain/q/a0;

    if-nez p1, :cond_1

    const-class p1, Lcom/appbrain/t/c;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/appbrain/t/c;->l:Lcom/appbrain/q/a0;

    if-nez p2, :cond_0

    new-instance p2, Lcom/appbrain/q/q$b;

    sget-object p3, Lcom/appbrain/t/c;->k:Lcom/appbrain/t/c;

    invoke-direct {p2, p3}, Lcom/appbrain/q/q$b;-><init>(Lcom/appbrain/q/q;)V

    sput-object p2, Lcom/appbrain/t/c;->l:Lcom/appbrain/q/a0;

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
    sget-object p1, Lcom/appbrain/t/c;->l:Lcom/appbrain/q/a0;

    return-object p1

    :pswitch_1
    check-cast p2, Lcom/appbrain/q/k;

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    :try_start_1
    invoke-virtual {p2}, Lcom/appbrain/q/k;->a()I

    move-result p3

    if-eqz p3, :cond_8

    const/16 v1, 0xa

    if-eq p3, v1, :cond_7

    const/16 v1, 0x10

    if-eq p3, v1, :cond_6

    const/16 v2, 0x18

    if-eq p3, v2, :cond_5

    const/16 v2, 0x20

    if-eq p3, v2, :cond_4

    const/16 v2, 0x2a

    if-eq p3, v2, :cond_3

    invoke-virtual {p0, p3, p2}, Lcom/appbrain/q/q;->A(ILcom/appbrain/q/k;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v2, p0, Lcom/appbrain/t/c;->e:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/appbrain/t/c;->e:I

    iput-object p3, p0, Lcom/appbrain/t/c;->j:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget p3, p0, Lcom/appbrain/t/c;->e:I

    or-int/lit8 p3, p3, 0x8

    iput p3, p0, Lcom/appbrain/t/c;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/c;->i:I

    goto :goto_1

    :cond_5
    iget p3, p0, Lcom/appbrain/t/c;->e:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/appbrain/t/c;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/t/c;->h:J

    goto :goto_1

    :cond_6
    iget p3, p0, Lcom/appbrain/t/c;->e:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/appbrain/t/c;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/c;->g:I

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/c;->e:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/appbrain/t/c;->e:I

    iput-object p3, p0, Lcom/appbrain/t/c;->f:Ljava/lang/String;
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
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

    :cond_9
    :pswitch_2
    sget-object p1, Lcom/appbrain/t/c;->k:Lcom/appbrain/t/c;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/appbrain/q/q$i;

    check-cast p3, Lcom/appbrain/t/c;

    invoke-direct {p0}, Lcom/appbrain/t/c;->V()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/c;->f:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/c;->V()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/c;->f:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/c;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/c;->W()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/c;->g:I

    invoke-direct {p3}, Lcom/appbrain/t/c;->W()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/c;->g:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/c;->g:I

    invoke-direct {p0}, Lcom/appbrain/t/c;->X()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/t/c;->h:J

    invoke-direct {p3}, Lcom/appbrain/t/c;->X()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/t/c;->h:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/t/c;->h:J

    invoke-virtual {p0}, Lcom/appbrain/t/c;->O()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/c;->i:I

    invoke-virtual {p3}, Lcom/appbrain/t/c;->O()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/c;->i:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/c;->i:I

    invoke-direct {p0}, Lcom/appbrain/t/c;->Y()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/c;->j:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/c;->Y()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/c;->j:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/c;->j:Ljava/lang/String;

    sget-object p1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    if-ne p2, p1, :cond_a

    iget p1, p0, Lcom/appbrain/t/c;->e:I

    iget p2, p3, Lcom/appbrain/t/c;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/t/c;->e:I

    :cond_a
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/appbrain/t/c$a;

    invoke-direct {p1, v0}, Lcom/appbrain/t/c$a;-><init>(B)V

    return-object p1

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/appbrain/t/c;->k:Lcom/appbrain/t/c;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/appbrain/t/c;

    invoke-direct {p1}, Lcom/appbrain/t/c;-><init>()V

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

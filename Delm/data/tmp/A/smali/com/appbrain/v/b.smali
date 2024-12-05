.class public final Lcom/appbrain/v/b;
.super Lcom/appbrain/q/q;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/v/b$a;
    }
.end annotation


# static fields
.field private static volatile A:Lcom/appbrain/q/a0;

.field private static final z:Lcom/appbrain/v/b;


# instance fields
.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/appbrain/q/j;

.field private i:Lcom/appbrain/q/j;

.field private j:J

.field private k:I

.field private l:J

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Lcom/appbrain/q/s$c;

.field private y:Lcom/appbrain/q/s$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/v/b;

    invoke-direct {v0}, Lcom/appbrain/v/b;-><init>()V

    sput-object v0, Lcom/appbrain/v/b;->z:Lcom/appbrain/v/b;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->G()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/q/q;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/v/b;->g:Ljava/lang/String;

    sget-object v1, Lcom/appbrain/q/j;->c:Lcom/appbrain/q/j;

    iput-object v1, p0, Lcom/appbrain/v/b;->h:Lcom/appbrain/q/j;

    iput-object v1, p0, Lcom/appbrain/v/b;->i:Lcom/appbrain/q/j;

    const/4 v1, 0x1

    iput v1, p0, Lcom/appbrain/v/b;->k:I

    iput-object v0, p0, Lcom/appbrain/v/b;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/v/b;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/v/b;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/v/b;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/v/b;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/v/b;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/v/b;->w:Ljava/lang/String;

    invoke-static {}, Lcom/appbrain/q/q;->I()Lcom/appbrain/q/s$c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-static {}, Lcom/appbrain/q/q;->K()Lcom/appbrain/q/s$d;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    return-void
.end method

.method private L()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private M()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private N()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x8

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

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x40

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

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x80

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

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x100

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

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x200

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

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private T()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private U()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x1000

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private W()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x4000

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const v1, 0x8000

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

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/high16 v1, 0x10000

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c0([B)Lcom/appbrain/v/b;
    .locals 1

    sget-object v0, Lcom/appbrain/v/b;->z:Lcom/appbrain/v/b;

    invoke-static {v0, p0}, Lcom/appbrain/q/q;->q(Lcom/appbrain/q/q;[B)Lcom/appbrain/q/q;

    move-result-object p0

    check-cast p0, Lcom/appbrain/v/b;

    return-object p0
.end method

.method static synthetic d0(Lcom/appbrain/v/b;J)V
    .locals 1

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/appbrain/v/b;->e:I

    iput-wide p1, p0, Lcom/appbrain/v/b;->j:J

    return-void
.end method

.method static synthetic e0(Lcom/appbrain/v/b;Lcom/appbrain/q/j;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/v/b;->e:I

    iput-object p1, p0, Lcom/appbrain/v/b;->h:Lcom/appbrain/q/j;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic f0(Lcom/appbrain/v/b;Lcom/appbrain/v/c;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/appbrain/v/b;->e:I

    invoke-virtual {p1}, Lcom/appbrain/v/c;->c()I

    move-result p1

    iput p1, p0, Lcom/appbrain/v/b;->k:I

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic g0(Lcom/appbrain/v/b;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/v/b;->e:I

    iput-object p1, p0, Lcom/appbrain/v/b;->g:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic i0(Lcom/appbrain/v/b;)V
    .locals 2

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/appbrain/v/b;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appbrain/v/b;->j:J

    return-void
.end method

.method static synthetic l0(Lcom/appbrain/v/b;)V
    .locals 1

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/appbrain/v/b;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/appbrain/v/b;->k:I

    return-void
.end method

.method public static t0()Lcom/appbrain/v/b$a;
    .locals 1

    sget-object v0, Lcom/appbrain/v/b;->z:Lcom/appbrain/v/b;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v0

    check-cast v0, Lcom/appbrain/v/b$a;

    return-object v0
.end method

.method static synthetic u0()Lcom/appbrain/v/b;
    .locals 1

    sget-object v0, Lcom/appbrain/v/b;->z:Lcom/appbrain/v/b;

    return-object v0
.end method

.method private v0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a0(I)I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-interface {v0, p1}, Lcom/appbrain/q/s$c;->d(I)I

    move-result p1

    return p1
.end method

.method public final b0()Lcom/appbrain/q/j;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/v/b;->h:Lcom/appbrain/q/j;

    return-object v0
.end method

.method public final d()I
    .locals 8

    iget v0, p0, Lcom/appbrain/q/q;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appbrain/v/b;->q:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/16 v4, 0x1000

    and-int/2addr v1, v4

    const/4 v5, 0x2

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/appbrain/v/b;->r:Ljava/lang/String;

    invoke-static {v5, v1}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/16 v4, 0x2000

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/appbrain/v/b;->s:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/16 v4, 0x4000

    and-int/2addr v1, v4

    const/4 v6, 0x4

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/appbrain/v/b;->t:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const v4, 0x8000

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x5

    iget-object v4, p0, Lcom/appbrain/v/b;->u:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/high16 v4, 0x10000

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6

    const/4 v1, 0x6

    iget v4, p0, Lcom/appbrain/v/b;->v:I

    invoke-static {v1, v4}, Lcom/appbrain/q/l;->F(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/high16 v4, 0x20000

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_7

    const/4 v1, 0x7

    iget-object v4, p0, Lcom/appbrain/v/b;->w:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_8

    const/16 v1, 0x9

    iget-object v4, p0, Lcom/appbrain/v/b;->g:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_9

    const/16 v1, 0xa

    iget-object v4, p0, Lcom/appbrain/v/b;->h:Lcom/appbrain/q/j;

    invoke-static {v1, v4}, Lcom/appbrain/q/l;->s(ILcom/appbrain/q/j;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_a

    const/16 v1, 0xb

    iget-wide v6, p0, Lcom/appbrain/v/b;->j:J

    invoke-static {v1, v6, v7}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/16 v6, 0x20

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_b

    const/16 v1, 0xc

    iget v6, p0, Lcom/appbrain/v/b;->k:I

    invoke-static {v1, v6}, Lcom/appbrain/q/l;->J(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/16 v6, 0x80

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_c

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/appbrain/q/l;->M(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/16 v6, 0x100

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_d

    const/16 v1, 0xe

    iget-object v6, p0, Lcom/appbrain/v/b;->n:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/16 v6, 0x200

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_e

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/appbrain/q/l;->M(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/16 v6, 0x8

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_f

    iget-object v1, p0, Lcom/appbrain/v/b;->i:Lcom/appbrain/q/j;

    invoke-static {v4, v1}, Lcom/appbrain/q/l;->s(ILcom/appbrain/q/j;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/16 v4, 0x400

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_10

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/appbrain/q/l;->M(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_11

    iget-object v6, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-interface {v6, v1}, Lcom/appbrain/q/s$c;->d(I)I

    move-result v6

    invoke-static {v6}, Lcom/appbrain/q/l;->O(I)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_11
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_12

    iget-object v4, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appbrain/q/j;

    invoke-static {v4}, Lcom/appbrain/q/l;->c(Lcom/appbrain/q/j;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_12
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/appbrain/v/b;->e:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13

    const/16 v1, 0x15

    iget v2, p0, Lcom/appbrain/v/b;->f:I

    invoke-static {v1, v2}, Lcom/appbrain/q/l;->F(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    const/16 v1, 0x16

    invoke-static {v1}, Lcom/appbrain/q/l;->E(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v1}, Lcom/appbrain/q/c;->j()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/q/q;->d:I

    return v0
.end method

.method public final g(Lcom/appbrain/q/l;)V
    .locals 5

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/v/b;->q:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    const/4 v3, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/appbrain/v/b;->r:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/appbrain/v/b;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    const/4 v4, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/appbrain/v/b;->t:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/appbrain/v/b;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lcom/appbrain/v/b;->v:I

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->y(II)V

    :cond_5
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/appbrain/v/b;->w:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_7

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/appbrain/v/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_7
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_8

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/appbrain/v/b;->h:Lcom/appbrain/q/j;

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->k(ILcom/appbrain/q/j;)V

    :cond_8
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    iget-wide v3, p0, Lcom/appbrain/v/b;->j:J

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3, v4}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_9
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v3, 0x20

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_a

    iget v0, p0, Lcom/appbrain/v/b;->k:I

    const/16 v3, 0xc

    invoke-virtual {p1, v3, v0}, Lcom/appbrain/q/l;->y(II)V

    :cond_a
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_b

    const/16 v0, 0xd

    iget-boolean v3, p0, Lcom/appbrain/v/b;->m:Z

    invoke-virtual {p1, v0, v3}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_b
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v3, 0x100

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_c

    const/16 v0, 0xe

    iget-object v3, p0, Lcom/appbrain/v/b;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_c
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v3, 0x200

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_d

    const/16 v0, 0xf

    iget-boolean v3, p0, Lcom/appbrain/v/b;->o:Z

    invoke-virtual {p1, v0, v3}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_d
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Lcom/appbrain/v/b;->i:Lcom/appbrain/q/j;

    invoke-virtual {p1, v1, v0}, Lcom/appbrain/q/l;->k(ILcom/appbrain/q/j;)V

    :cond_e
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_f

    const/16 v0, 0x11

    iget-boolean v1, p0, Lcom/appbrain/v/b;->p:Z

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_10

    const/16 v3, 0x13

    iget-object v4, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-interface {v4, v1}, Lcom/appbrain/q/s$c;->d(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/appbrain/q/l;->y(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_10
    :goto_1
    iget-object v1, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    const/16 v1, 0x14

    iget-object v3, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appbrain/q/j;

    invoke-virtual {p1, v1, v3}, Lcom/appbrain/q/l;->k(ILcom/appbrain/q/j;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_12

    const/16 v0, 0x15

    iget v1, p0, Lcom/appbrain/v/b;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/q/l;->y(II)V

    :cond_12
    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_13

    const/16 v0, 0x16

    iget-wide v1, p0, Lcom/appbrain/v/b;->l:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/appbrain/q/l;->z(IJ)V

    :cond_13
    iget-object v0, p0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v0, p1}, Lcom/appbrain/q/c;->e(Lcom/appbrain/q/l;)V

    return-void
.end method

.method public final h0(I)Lcom/appbrain/q/j;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/q/j;

    return-object p1
.end method

.method public final j0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k0()J
    .locals 2

    iget-wide v0, p0, Lcom/appbrain/v/b;->j:J

    return-wide v0
.end method

.method public final m0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/v/b;->e:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n0()Lcom/appbrain/v/c;
    .locals 1

    iget v0, p0, Lcom/appbrain/v/b;->k:I

    invoke-static {v0}, Lcom/appbrain/v/c;->d(I)Lcom/appbrain/v/c;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appbrain/v/c;->c:Lcom/appbrain/v/c;

    :cond_0
    return-object v0
.end method

.method public final o0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/v/b;->m:Z

    return v0
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/v/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final q0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/v/b;->o:Z

    return v0
.end method

.method public final r0()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final s0()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/appbrain/v/a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/appbrain/v/b;->A:Lcom/appbrain/q/a0;

    if-nez p1, :cond_1

    const-class p1, Lcom/appbrain/v/b;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/appbrain/v/b;->A:Lcom/appbrain/q/a0;

    if-nez p2, :cond_0

    new-instance p2, Lcom/appbrain/q/q$b;

    sget-object p3, Lcom/appbrain/v/b;->z:Lcom/appbrain/v/b;

    invoke-direct {p2, p3}, Lcom/appbrain/q/q$b;-><init>(Lcom/appbrain/q/q;)V

    sput-object p2, Lcom/appbrain/v/b;->A:Lcom/appbrain/q/a0;

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
    sget-object p1, Lcom/appbrain/v/b;->A:Lcom/appbrain/q/a0;

    return-object p1

    :pswitch_1
    check-cast p2, Lcom/appbrain/q/k;

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_8

    :try_start_1
    invoke-virtual {p2}, Lcom/appbrain/q/k;->a()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    invoke-virtual {p0, p3, p2}, Lcom/appbrain/q/q;->A(ILcom/appbrain/q/k;)Z

    move-result p3

    goto/16 :goto_4

    :sswitch_0
    iget p3, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit8 p3, p3, 0x40

    iput p3, p0, Lcom/appbrain/v/b;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->o()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/v/b;->l:J

    goto :goto_1

    :sswitch_1
    iget p3, p0, Lcom/appbrain/v/b;->e:I

    or-int/2addr p3, p1

    iput p3, p0, Lcom/appbrain/v/b;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/v/b;->f:I

    goto :goto_1

    :sswitch_2
    iget-object p3, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    invoke-interface {p3}, Lcom/appbrain/q/s$d;->a()Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    invoke-static {p3}, Lcom/appbrain/q/q;->u(Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object p3

    iput-object p3, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    :cond_3
    iget-object p3, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    invoke-virtual {p2}, Lcom/appbrain/q/k;->v()Lcom/appbrain/q/j;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_3
    invoke-virtual {p2}, Lcom/appbrain/q/k;->x()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/appbrain/q/k;->h(I)I

    move-result p3

    iget-object v1, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-interface {v1}, Lcom/appbrain/q/s$d;->a()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/appbrain/q/k;->y()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-static {v1}, Lcom/appbrain/q/q;->t(Lcom/appbrain/q/s$c;)Lcom/appbrain/q/s$c;

    move-result-object v1

    iput-object v1, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/appbrain/q/k;->y()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/appbrain/q/s$c;->f(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2, p3}, Lcom/appbrain/q/k;->j(I)V

    goto :goto_1

    :sswitch_4
    iget-object p3, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-interface {p3}, Lcom/appbrain/q/s$d;->a()Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-static {p3}, Lcom/appbrain/q/q;->t(Lcom/appbrain/q/s$c;)Lcom/appbrain/q/s$c;

    move-result-object p3

    iput-object p3, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    :cond_6
    iget-object p3, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result v1

    invoke-interface {p3, v1}, Lcom/appbrain/q/s$c;->f(I)V

    goto/16 :goto_1

    :sswitch_5
    iget p3, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit16 p3, p3, 0x400

    iput p3, p0, Lcom/appbrain/v/b;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result p3

    iput-boolean p3, p0, Lcom/appbrain/v/b;->p:Z

    goto/16 :goto_1

    :sswitch_6
    iget p3, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit8 p3, p3, 0x8

    iput p3, p0, Lcom/appbrain/v/b;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->v()Lcom/appbrain/q/j;

    move-result-object p3

    iput-object p3, p0, Lcom/appbrain/v/b;->i:Lcom/appbrain/q/j;

    goto/16 :goto_1

    :sswitch_7
    iget p3, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit16 p3, p3, 0x200

    iput p3, p0, Lcom/appbrain/v/b;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result p3

    iput-boolean p3, p0, Lcom/appbrain/v/b;->o:Z

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/appbrain/v/b;->e:I

    iput-object p3, p0, Lcom/appbrain/v/b;->n:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_9
    iget p3, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p0, Lcom/appbrain/v/b;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result p3

    iput-boolean p3, p0, Lcom/appbrain/v/b;->m:Z

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {p2}, Lcom/appbrain/q/k;->w()I

    move-result p3

    invoke-static {p3}, Lcom/appbrain/v/c;->d(I)Lcom/appbrain/v/c;

    move-result-object v1

    if-nez v1, :cond_7

    const/16 v1, 0xc

    invoke-super {p0, v1, p3}, Lcom/appbrain/q/q;->y(II)V

    goto/16 :goto_1

    :cond_7
    iget v1, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/appbrain/v/b;->e:I

    iput p3, p0, Lcom/appbrain/v/b;->k:I

    goto/16 :goto_1

    :sswitch_b
    iget p3, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p0, Lcom/appbrain/v/b;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/v/b;->j:J

    goto/16 :goto_1

    :sswitch_c
    iget p3, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/appbrain/v/b;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->v()Lcom/appbrain/q/j;

    move-result-object p3

    iput-object p3, p0, Lcom/appbrain/v/b;->h:Lcom/appbrain/q/j;

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/appbrain/v/b;->e:I

    iput-object p3, p0, Lcom/appbrain/v/b;->g:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_e
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/appbrain/v/b;->e:I

    iput-object p3, p0, Lcom/appbrain/v/b;->w:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_f
    iget p3, p0, Lcom/appbrain/v/b;->e:I

    const/high16 v1, 0x10000

    or-int/2addr p3, v1

    iput p3, p0, Lcom/appbrain/v/b;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/v/b;->v:I

    goto/16 :goto_1

    :sswitch_10
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/v/b;->e:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/appbrain/v/b;->e:I

    iput-object p3, p0, Lcom/appbrain/v/b;->u:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_11
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/appbrain/v/b;->e:I

    iput-object p3, p0, Lcom/appbrain/v/b;->t:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_12
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/appbrain/v/b;->e:I

    iput-object p3, p0, Lcom/appbrain/v/b;->s:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_13
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/appbrain/v/b;->e:I

    iput-object p3, p0, Lcom/appbrain/v/b;->r:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/v/b;->e:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/appbrain/v/b;->e:I

    iput-object p3, p0, Lcom/appbrain/v/b;->q:Ljava/lang/String;
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_3
    :sswitch_15
    const/4 v0, 0x1

    goto/16 :goto_1

    :goto_4
    if-nez p3, :cond_2

    goto :goto_3

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

    :cond_8
    :pswitch_2
    sget-object p1, Lcom/appbrain/v/b;->z:Lcom/appbrain/v/b;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/appbrain/q/q$i;

    check-cast p3, Lcom/appbrain/v/b;

    invoke-direct {p0}, Lcom/appbrain/v/b;->v0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/v/b;->f:I

    invoke-direct {p3}, Lcom/appbrain/v/b;->v0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/v/b;->f:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/v/b;->f:I

    invoke-direct {p0}, Lcom/appbrain/v/b;->L()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/v/b;->g:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/v/b;->L()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/v/b;->g:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/v/b;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/v/b;->M()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/v/b;->h:Lcom/appbrain/q/j;

    invoke-direct {p3}, Lcom/appbrain/v/b;->M()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/v/b;->h:Lcom/appbrain/q/j;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->i(ZLcom/appbrain/q/j;ZLcom/appbrain/q/j;)Lcom/appbrain/q/j;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/v/b;->h:Lcom/appbrain/q/j;

    invoke-direct {p0}, Lcom/appbrain/v/b;->N()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/v/b;->i:Lcom/appbrain/q/j;

    invoke-direct {p3}, Lcom/appbrain/v/b;->N()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/v/b;->i:Lcom/appbrain/q/j;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->i(ZLcom/appbrain/q/j;ZLcom/appbrain/q/j;)Lcom/appbrain/q/j;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/v/b;->i:Lcom/appbrain/q/j;

    invoke-virtual {p0}, Lcom/appbrain/v/b;->j0()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/v/b;->j:J

    invoke-virtual {p3}, Lcom/appbrain/v/b;->j0()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/v/b;->j:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/v/b;->j:J

    invoke-virtual {p0}, Lcom/appbrain/v/b;->m0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/v/b;->k:I

    invoke-virtual {p3}, Lcom/appbrain/v/b;->m0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/v/b;->k:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/v/b;->k:I

    invoke-direct {p0}, Lcom/appbrain/v/b;->O()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/v/b;->l:J

    invoke-direct {p3}, Lcom/appbrain/v/b;->O()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/v/b;->l:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/v/b;->l:J

    invoke-direct {p0}, Lcom/appbrain/v/b;->P()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/v/b;->m:Z

    invoke-direct {p3}, Lcom/appbrain/v/b;->P()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/v/b;->m:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/v/b;->m:Z

    invoke-direct {p0}, Lcom/appbrain/v/b;->Q()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/v/b;->n:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/v/b;->Q()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/v/b;->n:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/v/b;->n:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/v/b;->R()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/v/b;->o:Z

    invoke-direct {p3}, Lcom/appbrain/v/b;->R()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/v/b;->o:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/v/b;->o:Z

    invoke-direct {p0}, Lcom/appbrain/v/b;->S()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/v/b;->p:Z

    invoke-direct {p3}, Lcom/appbrain/v/b;->S()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/v/b;->p:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/v/b;->p:Z

    invoke-direct {p0}, Lcom/appbrain/v/b;->T()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/v/b;->q:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/v/b;->T()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/v/b;->q:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/v/b;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/v/b;->U()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/v/b;->r:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/v/b;->U()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/v/b;->r:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/v/b;->r:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/v/b;->V()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/v/b;->s:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/v/b;->V()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/v/b;->s:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/v/b;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/v/b;->W()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/v/b;->t:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/v/b;->W()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/v/b;->t:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/v/b;->t:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/v/b;->X()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/v/b;->u:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/v/b;->X()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/v/b;->u:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/v/b;->u:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/v/b;->Y()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/v/b;->v:I

    invoke-direct {p3}, Lcom/appbrain/v/b;->Y()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/v/b;->v:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/v/b;->v:I

    invoke-direct {p0}, Lcom/appbrain/v/b;->Z()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/v/b;->w:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/v/b;->Z()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/v/b;->w:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/v/b;->w:Ljava/lang/String;

    iget-object p1, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    iget-object v0, p3, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-interface {p2, p1, v0}, Lcom/appbrain/q/q$i;->h(Lcom/appbrain/q/s$c;Lcom/appbrain/q/s$c;)Lcom/appbrain/q/s$c;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    iget-object p1, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    iget-object v0, p3, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    invoke-interface {p2, p1, v0}, Lcom/appbrain/q/q$i;->g(Lcom/appbrain/q/s$d;Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    sget-object p1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    if-ne p2, p1, :cond_9

    iget p1, p0, Lcom/appbrain/v/b;->e:I

    iget p2, p3, Lcom/appbrain/v/b;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/v/b;->e:I

    :cond_9
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/appbrain/v/b$a;

    invoke-direct {p1, v0}, Lcom/appbrain/v/b$a;-><init>(B)V

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/appbrain/v/b;->x:Lcom/appbrain/q/s$c;

    invoke-interface {p1}, Lcom/appbrain/q/s$d;->b()V

    iget-object p1, p0, Lcom/appbrain/v/b;->y:Lcom/appbrain/q/s$d;

    invoke-interface {p1}, Lcom/appbrain/q/s$d;->b()V

    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/appbrain/v/b;->z:Lcom/appbrain/v/b;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/appbrain/v/b;

    invoke-direct {p1}, Lcom/appbrain/v/b;-><init>()V

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
        0x0 -> :sswitch_15
        0xa -> :sswitch_14
        0x12 -> :sswitch_13
        0x1a -> :sswitch_12
        0x22 -> :sswitch_11
        0x2a -> :sswitch_10
        0x30 -> :sswitch_f
        0x3a -> :sswitch_e
        0x4a -> :sswitch_d
        0x52 -> :sswitch_c
        0x58 -> :sswitch_b
        0x60 -> :sswitch_a
        0x68 -> :sswitch_9
        0x72 -> :sswitch_8
        0x78 -> :sswitch_7
        0x82 -> :sswitch_6
        0x88 -> :sswitch_5
        0x98 -> :sswitch_4
        0x9a -> :sswitch_3
        0xa2 -> :sswitch_2
        0xa8 -> :sswitch_1
        0xb1 -> :sswitch_0
    .end sparse-switch
.end method

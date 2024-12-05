.class public final Lcom/appbrain/t/j;
.super Lcom/appbrain/q/q;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/t/j$a;
    }
.end annotation


# static fields
.field private static final r0:Lcom/appbrain/t/j;

.field private static volatile s0:Lcom/appbrain/q/a0;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:I

.field private K:I

.field private L:J

.field private M:Z

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:Ljava/lang/String;

.field private Q:Lcom/appbrain/q/s$d;

.field private R:J

.field private S:Z

.field private T:F

.field private U:F

.field private V:Z

.field private W:Ljava/lang/String;

.field private X:J

.field private Y:J

.field private Z:J

.field private a0:I

.field private b0:I

.field private c0:I

.field private d0:I

.field private e:I

.field private e0:I

.field private f:I

.field private f0:I

.field private g:J

.field private g0:I

.field private h:J

.field private h0:I

.field private i:Ljava/lang/String;

.field private i0:I

.field private j:Ljava/lang/String;

.field private j0:I

.field private k:Ljava/lang/String;

.field private k0:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private l0:I

.field private m:Ljava/lang/String;

.field private m0:I

.field private n:I

.field private n0:J

.field private o:I

.field private o0:I

.field private p:Ljava/lang/String;

.field private p0:I

.field private q:Ljava/lang/String;

.field private q0:Lcom/appbrain/q/s$c;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/t/j;

    invoke-direct {v0}, Lcom/appbrain/t/j;-><init>()V

    sput-object v0, Lcom/appbrain/t/j;->r0:Lcom/appbrain/t/j;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->G()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/q/q;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/appbrain/t/j;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->H:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->N:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->P:Ljava/lang/String;

    invoke-static {}, Lcom/appbrain/q/q;->K()Lcom/appbrain/q/s$d;

    move-result-object v1

    iput-object v1, p0, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    iput-object v0, p0, Lcom/appbrain/t/j;->W:Ljava/lang/String;

    iput-object v0, p0, Lcom/appbrain/t/j;->k0:Ljava/lang/String;

    invoke-static {}, Lcom/appbrain/q/q;->I()Lcom/appbrain/q/s$c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    return-void
.end method

.method private A0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic A1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->s:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private B0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private B1()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private C0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic C1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput p1, p0, Lcom/appbrain/t/j;->F:I

    return-void
.end method

.method private D0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic D1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->t:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private E0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic E1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput p1, p0, Lcom/appbrain/t/j;->G:I

    return-void
.end method

.method private F0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic F1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->u:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private G0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic G1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput p1, p0, Lcom/appbrain/t/j;->J:I

    return-void
.end method

.method private H0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic H1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->w:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private I0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic I1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput p1, p0, Lcom/appbrain/t/j;->K:I

    return-void
.end method

.method private J0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic J1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->H:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private K0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic K1(Lcom/appbrain/t/j;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->a0:I

    return-void
.end method

.method static synthetic L(Lcom/appbrain/t/j;I)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-interface {v0}, Lcom/appbrain/q/s$d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-static {v0}, Lcom/appbrain/q/q;->t(Lcom/appbrain/q/s$c;)Lcom/appbrain/q/s$c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    :cond_0
    iget-object p0, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-interface {p0, p1}, Lcom/appbrain/q/s$c;->f(I)V

    return-void
.end method

.method private L0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic L1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->I:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private M()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private M0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic M1(Lcom/appbrain/t/j;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->b0:I

    return-void
.end method

.method private N()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private N0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic N1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput-object p1, p0, Lcom/appbrain/t/j;->N:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private O()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private O0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic O1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->c0:I

    return-void
.end method

.method private P()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private P0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic P1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput-object p1, p0, Lcom/appbrain/t/j;->P:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private Q()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private Q0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic Q1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->d0:I

    return-void
.end method

.method private R()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private R0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic R1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->e0:I

    return-void
.end method

.method private S()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private S0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic S1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput-object p1, p0, Lcom/appbrain/t/j;->W:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private T()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic T1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->f0:I

    return-void
.end method

.method private U()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic U0(Lcom/appbrain/t/j;)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput-boolean v1, p0, Lcom/appbrain/t/j;->M:Z

    return-void
.end method

.method static synthetic U1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput-object p1, p0, Lcom/appbrain/t/j;->k0:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private V()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic V0(Lcom/appbrain/t/j;F)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->U:F

    return-void
.end method

.method static synthetic V1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->g0:I

    return-void
.end method

.method private W()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic W0(Lcom/appbrain/t/j;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput p1, p0, Lcom/appbrain/t/j;->o:I

    return-void
.end method

.method static synthetic W1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->h0:I

    return-void
.end method

.method private X()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic X0(Lcom/appbrain/t/j;J)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-wide p1, p0, Lcom/appbrain/t/j;->h:J

    return-void
.end method

.method static synthetic X1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->i0:I

    return-void
.end method

.method private Y()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic Y0(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->j:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private Y1()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/4 v1, 0x4

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

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static Z0()Lcom/appbrain/t/j$a;
    .locals 1

    sget-object v0, Lcom/appbrain/t/j;->r0:Lcom/appbrain/t/j;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v0

    check-cast v0, Lcom/appbrain/t/j$a;

    return-object v0
.end method

.method static synthetic Z1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->l0:I

    return-void
.end method

.method private a0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a1(Lcom/appbrain/t/j;)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/t/j;->O:Z

    return-void
.end method

.method private a2()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

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

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput p1, p0, Lcom/appbrain/t/j;->x:I

    return-void
.end method

.method static synthetic b2(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->m0:I

    return-void
.end method

.method private c0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c1(Lcom/appbrain/t/j;J)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-wide p1, p0, Lcom/appbrain/t/j;->z:J

    return-void
.end method

.method private c2()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/16 v1, 0x10

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

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->k:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic d2(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->o0:I

    return-void
.end method

.method private e0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e1(Lcom/appbrain/t/j;)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/t/j;->V:Z

    return-void
.end method

.method private e2()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/16 v1, 0x20

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

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput p1, p0, Lcom/appbrain/t/j;->y:I

    return-void
.end method

.method static synthetic f2(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->p0:I

    return-void
.end method

.method private g0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic g1(Lcom/appbrain/t/j;J)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-wide p1, p0, Lcom/appbrain/t/j;->L:J

    return-void
.end method

.method private g2()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private h0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic h1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->l:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private i0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static i1()Lcom/appbrain/t/j;
    .locals 1

    sget-object v0, Lcom/appbrain/t/j;->r0:Lcom/appbrain/t/j;

    return-object v0
.end method

.method private j0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic j1(Lcom/appbrain/t/j;)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    const v0, 0x1343d73

    iput v0, p0, Lcom/appbrain/t/j;->j0:I

    return-void
.end method

.method private k0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic k1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput p1, p0, Lcom/appbrain/t/j;->A:I

    return-void
.end method

.method private l0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic l1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->m:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic m0(Lcom/appbrain/t/j;)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    const/16 v0, 0xbe

    iput v0, p0, Lcom/appbrain/t/j;->v:I

    return-void
.end method

.method public static m1()Lcom/appbrain/q/a0;
    .locals 1

    sget-object v0, Lcom/appbrain/t/j;->r0:Lcom/appbrain/t/j;

    invoke-virtual {v0}, Lcom/appbrain/q/q;->f()Lcom/appbrain/q/a0;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n0(Lcom/appbrain/t/j;F)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput p1, p0, Lcom/appbrain/t/j;->T:F

    return-void
.end method

.method static synthetic n1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput p1, p0, Lcom/appbrain/t/j;->B:I

    return-void
.end method

.method static synthetic o0(Lcom/appbrain/t/j;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput p1, p0, Lcom/appbrain/t/j;->n:I

    return-void
.end method

.method static synthetic o1(Lcom/appbrain/t/j;J)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput-wide p1, p0, Lcom/appbrain/t/j;->X:J

    return-void
.end method

.method static synthetic p0(Lcom/appbrain/t/j;J)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-wide p1, p0, Lcom/appbrain/t/j;->g:J

    return-void
.end method

.method static synthetic p1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->p:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic q0(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->i:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic q1()Lcom/appbrain/t/j;
    .locals 1

    sget-object v0, Lcom/appbrain/t/j;->r0:Lcom/appbrain/t/j;

    return-object v0
.end method

.method static synthetic r1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput p1, p0, Lcom/appbrain/t/j;->C:I

    return-void
.end method

.method private s0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic s1(Lcom/appbrain/t/j;J)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput-wide p1, p0, Lcom/appbrain/t/j;->Y:J

    return-void
.end method

.method private t0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic t1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->q:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private u0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic u1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput p1, p0, Lcom/appbrain/t/j;->D:I

    return-void
.end method

.method private v0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic v1(Lcom/appbrain/t/j;J)V
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput-wide p1, p0, Lcom/appbrain/t/j;->Z:J

    return-void
.end method

.method private w0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic w1(Lcom/appbrain/t/j;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput-object p1, p0, Lcom/appbrain/t/j;->r:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private x0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private x1()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private y0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic y1(Lcom/appbrain/t/j;I)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->e:I

    iput p1, p0, Lcom/appbrain/t/j;->E:I

    return-void
.end method

.method private z0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic z1(Lcom/appbrain/t/j;J)V
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/appbrain/t/j;->f:I

    iput-wide p1, p0, Lcom/appbrain/t/j;->n0:J

    return-void
.end method


# virtual methods
.method public final T0()I
    .locals 1

    iget v0, p0, Lcom/appbrain/t/j;->d0:I

    return v0
.end method

.method public final d()I
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/appbrain/q/q;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v1

    :cond_0
    iget v1, v0, Lcom/appbrain/t/j;->e:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-wide v4, v0, Lcom/appbrain/t/j;->g:J

    invoke-static {v2, v4, v5}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v4, v0, Lcom/appbrain/t/j;->e:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    iget-wide v6, v0, Lcom/appbrain/t/j;->h:J

    invoke-static {v5, v6, v7}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2
    iget v4, v0, Lcom/appbrain/t/j;->e:I

    const/4 v6, 0x4

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_3

    const/4 v4, 0x3

    iget-object v7, v0, Lcom/appbrain/t/j;->i:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_3
    iget v4, v0, Lcom/appbrain/t/j;->e:I

    const/16 v7, 0x8

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_4

    iget-object v4, v0, Lcom/appbrain/t/j;->j:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_4
    iget v4, v0, Lcom/appbrain/t/j;->e:I

    const/16 v8, 0x10

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_5

    const/4 v4, 0x5

    iget-object v9, v0, Lcom/appbrain/t/j;->k:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_5
    iget v4, v0, Lcom/appbrain/t/j;->e:I

    const/16 v9, 0x20

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_6

    const/4 v4, 0x6

    iget-object v10, v0, Lcom/appbrain/t/j;->l:Ljava/lang/String;

    invoke-static {v4, v10}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_6
    iget v4, v0, Lcom/appbrain/t/j;->e:I

    const/16 v10, 0x40

    and-int/2addr v4, v10

    if-ne v4, v10, :cond_7

    const/4 v4, 0x7

    iget-object v11, v0, Lcom/appbrain/t/j;->m:Ljava/lang/String;

    invoke-static {v4, v11}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_7
    iget v4, v0, Lcom/appbrain/t/j;->e:I

    const/16 v11, 0x80

    and-int/2addr v4, v11

    if-ne v4, v11, :cond_8

    const/16 v4, 0xa

    iget v12, v0, Lcom/appbrain/t/j;->n:I

    invoke-static {v4, v12}, Lcom/appbrain/q/l;->F(II)I

    move-result v4

    add-int/2addr v1, v4

    :cond_8
    iget v4, v0, Lcom/appbrain/t/j;->e:I

    const/16 v12, 0x100

    and-int/2addr v4, v12

    if-ne v4, v12, :cond_9

    const/16 v4, 0xb

    iget v13, v0, Lcom/appbrain/t/j;->o:I

    invoke-static {v4, v13}, Lcom/appbrain/q/l;->F(II)I

    move-result v4

    add-int/2addr v1, v4

    :cond_9
    iget v4, v0, Lcom/appbrain/t/j;->e:I

    const/16 v13, 0x200

    and-int/2addr v4, v13

    if-ne v4, v13, :cond_a

    const/16 v4, 0xe

    iget-object v14, v0, Lcom/appbrain/t/j;->p:Ljava/lang/String;

    invoke-static {v4, v14}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_a
    iget v4, v0, Lcom/appbrain/t/j;->e:I

    const/16 v14, 0x400

    and-int/2addr v4, v14

    if-ne v4, v14, :cond_b

    const/16 v4, 0xf

    iget-object v15, v0, Lcom/appbrain/t/j;->q:Ljava/lang/String;

    invoke-static {v4, v15}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_b
    iget v4, v0, Lcom/appbrain/t/j;->e:I

    const/16 v15, 0x800

    and-int/2addr v4, v15

    if-ne v4, v15, :cond_c

    iget-object v4, v0, Lcom/appbrain/t/j;->r:Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    :cond_c
    iget v4, v0, Lcom/appbrain/t/j;->e:I

    const/16 v3, 0x1000

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_d

    const/16 v4, 0x14

    iget-object v3, v0, Lcom/appbrain/t/j;->s:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_d
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/16 v4, 0x2000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_e

    const/16 v3, 0x15

    iget-object v4, v0, Lcom/appbrain/t/j;->t:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_e
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/16 v4, 0x4000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_f

    const/16 v3, 0x16

    iget-object v4, v0, Lcom/appbrain/t/j;->u:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_f
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_10

    const/16 v3, 0x17

    iget v4, v0, Lcom/appbrain/t/j;->v:I

    invoke-static {v3, v4}, Lcom/appbrain/q/l;->F(II)I

    move-result v3

    add-int/2addr v1, v3

    :cond_10
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_11

    const/16 v3, 0x19

    iget-object v4, v0, Lcom/appbrain/t/j;->w:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_11
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_12

    const/16 v3, 0x1a

    iget v4, v0, Lcom/appbrain/t/j;->x:I

    invoke-static {v3, v4}, Lcom/appbrain/q/l;->F(II)I

    move-result v3

    add-int/2addr v1, v3

    :cond_12
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_13

    const/16 v3, 0x1b

    iget v4, v0, Lcom/appbrain/t/j;->y:I

    invoke-static {v3, v4}, Lcom/appbrain/q/l;->F(II)I

    move-result v3

    add-int/2addr v1, v3

    :cond_13
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_14

    const/16 v3, 0x1c

    iget-wide v14, v0, Lcom/appbrain/t/j;->z:J

    invoke-static {v3, v14, v15}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v3

    add-int/2addr v1, v3

    :cond_14
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v14, 0x100000

    and-int/2addr v3, v14

    if-ne v3, v14, :cond_15

    const/16 v3, 0x1d

    iget v15, v0, Lcom/appbrain/t/j;->A:I

    invoke-static {v3, v15}, Lcom/appbrain/q/l;->F(II)I

    move-result v3

    add-int/2addr v1, v3

    :cond_15
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x200000

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_16

    const/16 v3, 0x1e

    iget v15, v0, Lcom/appbrain/t/j;->B:I

    invoke-static {v3, v15}, Lcom/appbrain/q/l;->F(II)I

    move-result v3

    add-int/2addr v1, v3

    :cond_16
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x400000

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_17

    const/16 v3, 0x1f

    iget v15, v0, Lcom/appbrain/t/j;->C:I

    invoke-static {v3, v15}, Lcom/appbrain/q/l;->F(II)I

    move-result v3

    add-int/2addr v1, v3

    :cond_17
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x800000

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_18

    iget v3, v0, Lcom/appbrain/t/j;->D:I

    invoke-static {v9, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v3

    add-int/2addr v1, v3

    :cond_18
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x1000000

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_19

    const/16 v3, 0x21

    iget v15, v0, Lcom/appbrain/t/j;->E:I

    invoke-static {v3, v15}, Lcom/appbrain/q/l;->F(II)I

    move-result v3

    add-int/2addr v1, v3

    :cond_19
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x2000000

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_1a

    const/16 v3, 0x22

    iget v15, v0, Lcom/appbrain/t/j;->F:I

    invoke-static {v3, v15}, Lcom/appbrain/q/l;->F(II)I

    move-result v3

    add-int/2addr v1, v3

    :cond_1a
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x4000000

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_1b

    const/16 v3, 0x23

    iget v15, v0, Lcom/appbrain/t/j;->G:I

    invoke-static {v3, v15}, Lcom/appbrain/q/l;->F(II)I

    move-result v3

    add-int/2addr v1, v3

    :cond_1b
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x8000000

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_1c

    const/16 v3, 0x24

    iget-object v15, v0, Lcom/appbrain/t/j;->H:Ljava/lang/String;

    invoke-static {v3, v15}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_1c
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x10000000

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_1d

    const/16 v3, 0x26

    iget-object v15, v0, Lcom/appbrain/t/j;->I:Ljava/lang/String;

    invoke-static {v3, v15}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_1d
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x20000000

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_1e

    const/16 v3, 0x29

    iget v15, v0, Lcom/appbrain/t/j;->J:I

    invoke-static {v3, v15}, Lcom/appbrain/q/l;->F(II)I

    move-result v3

    add-int/2addr v1, v3

    :cond_1e
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x40000000    # 2.0f

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_1f

    const/16 v3, 0x2a

    iget v15, v0, Lcom/appbrain/t/j;->K:I

    invoke-static {v3, v15}, Lcom/appbrain/q/l;->F(II)I

    move-result v3

    add-int/2addr v1, v3

    :cond_1f
    iget v3, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, -0x80000000

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_20

    const/16 v3, 0x2b

    iget-wide v14, v0, Lcom/appbrain/t/j;->L:J

    invoke-static {v3, v14, v15}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v3

    add-int/2addr v1, v3

    :cond_20
    iget v3, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_21

    const/16 v2, 0x2c

    invoke-static {v2}, Lcom/appbrain/q/l;->M(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_21
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_22

    const/16 v2, 0x2d

    iget-object v3, v0, Lcom/appbrain/t/j;->N:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_22
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_23

    const/16 v2, 0x2e

    invoke-static {v2}, Lcom/appbrain/q/l;->M(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_23
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_24

    const/16 v2, 0x2f

    iget-object v3, v0, Lcom/appbrain/t/j;->P:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_24
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v6, v0, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_25

    iget-object v6, v0, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/appbrain/q/l;->w(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_25
    add-int/2addr v1, v3

    iget-object v2, v0, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_26

    const/16 v2, 0x31

    iget-wide v6, v0, Lcom/appbrain/t/j;->R:J

    invoke-static {v2, v6, v7}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v2

    add-int/2addr v1, v2

    :cond_26
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v9

    if-ne v2, v9, :cond_27

    const/16 v2, 0x32

    invoke-static {v2}, Lcom/appbrain/q/l;->M(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_27
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_28

    const/16 v2, 0x33

    invoke-static {v2}, Lcom/appbrain/q/l;->I(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_28
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v11

    if-ne v2, v11, :cond_29

    const/16 v2, 0x34

    invoke-static {v2}, Lcom/appbrain/q/l;->I(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_29
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v12

    if-ne v2, v12, :cond_2a

    const/16 v2, 0x35

    invoke-static {v2}, Lcom/appbrain/q/l;->M(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2a
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v13

    if-ne v2, v13, :cond_2b

    const/16 v2, 0x36

    iget-object v3, v0, Lcom/appbrain/t/j;->W:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2b
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/16 v3, 0x400

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2c

    const/16 v2, 0x37

    iget-wide v6, v0, Lcom/appbrain/t/j;->X:J

    invoke-static {v2, v6, v7}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2c
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/16 v3, 0x800

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2d

    const/16 v2, 0x38

    iget-wide v6, v0, Lcom/appbrain/t/j;->Y:J

    invoke-static {v2, v6, v7}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2d
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/16 v3, 0x1000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2e

    const/16 v2, 0x39

    iget-wide v6, v0, Lcom/appbrain/t/j;->Z:J

    invoke-static {v2, v6, v7}, Lcom/appbrain/q/l;->B(IJ)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2e
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/16 v3, 0x2000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2f

    const/16 v2, 0x3a

    iget v3, v0, Lcom/appbrain/t/j;->a0:I

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2f
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/16 v3, 0x4000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_30

    const/16 v2, 0x3b

    iget v3, v0, Lcom/appbrain/t/j;->b0:I

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_30
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_31

    const/16 v2, 0x3c

    iget v3, v0, Lcom/appbrain/t/j;->c0:I

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_31
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_32

    const/16 v2, 0x3d

    iget v3, v0, Lcom/appbrain/t/j;->d0:I

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_32
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_33

    const/16 v2, 0x3e

    iget v3, v0, Lcom/appbrain/t/j;->e0:I

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_33
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_34

    const/16 v2, 0x3f

    iget v3, v0, Lcom/appbrain/t/j;->f0:I

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_34
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_35

    iget v2, v0, Lcom/appbrain/t/j;->g0:I

    invoke-static {v10, v2}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_35
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_36

    const/16 v2, 0x41

    iget v3, v0, Lcom/appbrain/t/j;->h0:I

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_36
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_37

    const/16 v2, 0x42

    iget v3, v0, Lcom/appbrain/t/j;->i0:I

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_37
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_38

    const/16 v2, 0x43

    iget v3, v0, Lcom/appbrain/t/j;->j0:I

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_38
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_39

    const/16 v2, 0x44

    iget-object v3, v0, Lcom/appbrain/t/j;->k0:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->u(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_39
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3a

    const/16 v2, 0x45

    iget v3, v0, Lcom/appbrain/t/j;->l0:I

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_3a
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3b

    const/16 v2, 0x46

    iget v3, v0, Lcom/appbrain/t/j;->m0:I

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_3b
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3c

    const/16 v2, 0x47

    invoke-static {v2}, Lcom/appbrain/q/l;->E(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_3c
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x8000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3d

    const/16 v2, 0x48

    iget v3, v0, Lcom/appbrain/t/j;->o0:I

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_3d
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3e

    const/16 v2, 0x49

    iget v3, v0, Lcom/appbrain/t/j;->p0:I

    invoke-static {v2, v3}, Lcom/appbrain/q/l;->F(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_3e
    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_2
    iget-object v2, v0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3f

    iget-object v2, v0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-interface {v2, v3}, Lcom/appbrain/q/s$c;->d(I)I

    move-result v2

    invoke-static {v2}, Lcom/appbrain/q/l;->O(I)I

    move-result v2

    add-int v16, v16, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3f
    add-int v1, v1, v16

    iget-object v2, v0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v2}, Lcom/appbrain/q/c;->j()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/appbrain/q/q;->d:I

    return v1
.end method

.method public final g(Lcom/appbrain/q/l;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    iget-wide v4, v0, Lcom/appbrain/t/j;->g:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_0
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    iget-wide v5, v0, Lcom/appbrain/t/j;->h:J

    invoke-virtual {v1, v4, v5, v6}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_1
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/4 v5, 0x4

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_2

    const/4 v2, 0x3

    iget-object v6, v0, Lcom/appbrain/t/j;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_2
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/16 v6, 0x8

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_3

    iget-object v2, v0, Lcom/appbrain/t/j;->j:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_3
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/16 v7, 0x10

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_4

    const/4 v2, 0x5

    iget-object v8, v0, Lcom/appbrain/t/j;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v8}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_4
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/16 v8, 0x20

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_5

    const/4 v2, 0x6

    iget-object v9, v0, Lcom/appbrain/t/j;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v9}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_5
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/16 v9, 0x40

    and-int/2addr v2, v9

    if-ne v2, v9, :cond_6

    const/4 v2, 0x7

    iget-object v10, v0, Lcom/appbrain/t/j;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v10}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_6
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/16 v10, 0x80

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_7

    const/16 v2, 0xa

    iget v11, v0, Lcom/appbrain/t/j;->n:I

    invoke-virtual {v1, v2, v11}, Lcom/appbrain/q/l;->y(II)V

    :cond_7
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/16 v11, 0x100

    and-int/2addr v2, v11

    if-ne v2, v11, :cond_8

    const/16 v2, 0xb

    iget v12, v0, Lcom/appbrain/t/j;->o:I

    invoke-virtual {v1, v2, v12}, Lcom/appbrain/q/l;->y(II)V

    :cond_8
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/16 v12, 0x200

    and-int/2addr v2, v12

    if-ne v2, v12, :cond_9

    const/16 v2, 0xe

    iget-object v13, v0, Lcom/appbrain/t/j;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v13}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_9
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/16 v13, 0x400

    and-int/2addr v2, v13

    if-ne v2, v13, :cond_a

    const/16 v2, 0xf

    iget-object v14, v0, Lcom/appbrain/t/j;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v14}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_a
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/16 v14, 0x800

    and-int/2addr v2, v14

    if-ne v2, v14, :cond_b

    iget-object v2, v0, Lcom/appbrain/t/j;->r:Ljava/lang/String;

    invoke-virtual {v1, v7, v2}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_b
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/16 v15, 0x1000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_c

    const/16 v2, 0x14

    iget-object v15, v0, Lcom/appbrain/t/j;->s:Ljava/lang/String;

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_c
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/16 v15, 0x2000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_d

    const/16 v2, 0x15

    iget-object v15, v0, Lcom/appbrain/t/j;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_d
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/16 v15, 0x4000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_e

    const/16 v2, 0x16

    iget-object v15, v0, Lcom/appbrain/t/j;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_e
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const v15, 0x8000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_f

    const/16 v2, 0x17

    iget v15, v0, Lcom/appbrain/t/j;->v:I

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->y(II)V

    :cond_f
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x10000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_10

    const/16 v2, 0x19

    iget-object v15, v0, Lcom/appbrain/t/j;->w:Ljava/lang/String;

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_10
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x20000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_11

    const/16 v2, 0x1a

    iget v15, v0, Lcom/appbrain/t/j;->x:I

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->y(II)V

    :cond_11
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x40000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_12

    const/16 v2, 0x1b

    iget v15, v0, Lcom/appbrain/t/j;->y:I

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->y(II)V

    :cond_12
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x80000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_13

    iget-wide v14, v0, Lcom/appbrain/t/j;->z:J

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, v14, v15}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_13
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v14, 0x100000

    and-int/2addr v2, v14

    if-ne v2, v14, :cond_14

    const/16 v2, 0x1d

    iget v15, v0, Lcom/appbrain/t/j;->A:I

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->y(II)V

    :cond_14
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x200000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_15

    const/16 v2, 0x1e

    iget v15, v0, Lcom/appbrain/t/j;->B:I

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->y(II)V

    :cond_15
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x400000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_16

    const/16 v2, 0x1f

    iget v15, v0, Lcom/appbrain/t/j;->C:I

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->y(II)V

    :cond_16
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x800000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_17

    iget v2, v0, Lcom/appbrain/t/j;->D:I

    invoke-virtual {v1, v8, v2}, Lcom/appbrain/q/l;->y(II)V

    :cond_17
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x1000000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_18

    const/16 v2, 0x21

    iget v15, v0, Lcom/appbrain/t/j;->E:I

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->y(II)V

    :cond_18
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x2000000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_19

    const/16 v2, 0x22

    iget v15, v0, Lcom/appbrain/t/j;->F:I

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->y(II)V

    :cond_19
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x4000000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_1a

    const/16 v2, 0x23

    iget v15, v0, Lcom/appbrain/t/j;->G:I

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->y(II)V

    :cond_1a
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x8000000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_1b

    const/16 v2, 0x24

    iget-object v15, v0, Lcom/appbrain/t/j;->H:Ljava/lang/String;

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_1b
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x10000000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_1c

    const/16 v2, 0x26

    iget-object v15, v0, Lcom/appbrain/t/j;->I:Ljava/lang/String;

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_1c
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x20000000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_1d

    const/16 v2, 0x29

    iget v15, v0, Lcom/appbrain/t/j;->J:I

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->y(II)V

    :cond_1d
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, 0x40000000    # 2.0f

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_1e

    const/16 v2, 0x2a

    iget v15, v0, Lcom/appbrain/t/j;->K:I

    invoke-virtual {v1, v2, v15}, Lcom/appbrain/q/l;->y(II)V

    :cond_1e
    iget v2, v0, Lcom/appbrain/t/j;->e:I

    const/high16 v15, -0x80000000

    and-int/2addr v2, v15

    if-ne v2, v15, :cond_1f

    iget-wide v14, v0, Lcom/appbrain/t/j;->L:J

    const/16 v2, 0x2b

    invoke-virtual {v1, v2, v14, v15}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_1f
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_20

    const/16 v2, 0x2c

    iget-boolean v3, v0, Lcom/appbrain/t/j;->M:Z

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_20
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_21

    const/16 v2, 0x2d

    iget-object v3, v0, Lcom/appbrain/t/j;->N:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_21
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_22

    const/16 v2, 0x2e

    iget-boolean v3, v0, Lcom/appbrain/t/j;->O:Z

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_22
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_23

    const/16 v2, 0x2f

    iget-object v3, v0, Lcom/appbrain/t/j;->P:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_23
    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    const/16 v3, 0x30

    iget-object v4, v0, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_24
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_25

    iget-wide v2, v0, Lcom/appbrain/t/j;->R:J

    const/16 v4, 0x31

    invoke-virtual {v1, v4, v2, v3}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_25
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_26

    const/16 v2, 0x32

    iget-boolean v3, v0, Lcom/appbrain/t/j;->S:Z

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_26
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v9

    if-ne v2, v9, :cond_27

    const/16 v2, 0x33

    iget v3, v0, Lcom/appbrain/t/j;->T:F

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->h(IF)V

    :cond_27
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_28

    const/16 v2, 0x34

    iget v3, v0, Lcom/appbrain/t/j;->U:F

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->h(IF)V

    :cond_28
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v11

    if-ne v2, v11, :cond_29

    const/16 v2, 0x35

    iget-boolean v3, v0, Lcom/appbrain/t/j;->V:Z

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->n(IZ)V

    :cond_29
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v12

    if-ne v2, v12, :cond_2a

    const/16 v2, 0x36

    iget-object v3, v0, Lcom/appbrain/t/j;->W:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_2a
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    and-int/2addr v2, v13

    if-ne v2, v13, :cond_2b

    iget-wide v2, v0, Lcom/appbrain/t/j;->X:J

    const/16 v4, 0x37

    invoke-virtual {v1, v4, v2, v3}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_2b
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/16 v3, 0x800

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2c

    iget-wide v2, v0, Lcom/appbrain/t/j;->Y:J

    const/16 v4, 0x38

    invoke-virtual {v1, v4, v2, v3}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_2c
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/16 v3, 0x1000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2d

    iget-wide v2, v0, Lcom/appbrain/t/j;->Z:J

    const/16 v4, 0x39

    invoke-virtual {v1, v4, v2, v3}, Lcom/appbrain/q/l;->j(IJ)V

    :cond_2d
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/16 v3, 0x2000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2e

    const/16 v2, 0x3a

    iget v3, v0, Lcom/appbrain/t/j;->a0:I

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->y(II)V

    :cond_2e
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/16 v3, 0x4000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2f

    const/16 v2, 0x3b

    iget v3, v0, Lcom/appbrain/t/j;->b0:I

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->y(II)V

    :cond_2f
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_30

    const/16 v2, 0x3c

    iget v3, v0, Lcom/appbrain/t/j;->c0:I

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->y(II)V

    :cond_30
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_31

    const/16 v2, 0x3d

    iget v3, v0, Lcom/appbrain/t/j;->d0:I

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->y(II)V

    :cond_31
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_32

    const/16 v2, 0x3e

    iget v3, v0, Lcom/appbrain/t/j;->e0:I

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->y(II)V

    :cond_32
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_33

    const/16 v2, 0x3f

    iget v3, v0, Lcom/appbrain/t/j;->f0:I

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->y(II)V

    :cond_33
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_34

    iget v2, v0, Lcom/appbrain/t/j;->g0:I

    invoke-virtual {v1, v9, v2}, Lcom/appbrain/q/l;->y(II)V

    :cond_34
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_35

    const/16 v2, 0x41

    iget v3, v0, Lcom/appbrain/t/j;->h0:I

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->y(II)V

    :cond_35
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_36

    const/16 v2, 0x42

    iget v3, v0, Lcom/appbrain/t/j;->i0:I

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->y(II)V

    :cond_36
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_37

    const/16 v2, 0x43

    iget v3, v0, Lcom/appbrain/t/j;->j0:I

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->y(II)V

    :cond_37
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_38

    const/16 v2, 0x44

    iget-object v3, v0, Lcom/appbrain/t/j;->k0:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->m(ILjava/lang/String;)V

    :cond_38
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_39

    const/16 v2, 0x45

    iget v3, v0, Lcom/appbrain/t/j;->l0:I

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->y(II)V

    :cond_39
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3a

    const/16 v2, 0x46

    iget v3, v0, Lcom/appbrain/t/j;->m0:I

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->y(II)V

    :cond_3a
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3b

    const/16 v2, 0x47

    iget-wide v3, v0, Lcom/appbrain/t/j;->n0:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/appbrain/q/l;->z(IJ)V

    :cond_3b
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x8000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3c

    const/16 v2, 0x48

    iget v3, v0, Lcom/appbrain/t/j;->o0:I

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->y(II)V

    :cond_3c
    iget v2, v0, Lcom/appbrain/t/j;->f:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3d

    const/16 v2, 0x49

    iget v3, v0, Lcom/appbrain/t/j;->p0:I

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/q/l;->y(II)V

    :cond_3d
    const/4 v2, 0x0

    :goto_1
    iget-object v3, v0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    const/16 v3, 0x4a

    iget-object v4, v0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-interface {v4, v2}, Lcom/appbrain/q/s$c;->d(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/appbrain/q/l;->y(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3e
    iget-object v2, v0, Lcom/appbrain/q/q;->c:Lcom/appbrain/q/c;

    invoke-virtual {v2, v1}, Lcom/appbrain/q/c;->e(Lcom/appbrain/q/l;)V

    return-void
.end method

.method public final r0()Z
    .locals 2

    iget v0, p0, Lcom/appbrain/t/j;->f:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final w(Lcom/appbrain/q/q$h;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lcom/appbrain/t/i;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/appbrain/t/j;->s0:Lcom/appbrain/q/a0;

    if-nez p1, :cond_1

    const-class p1, Lcom/appbrain/t/j;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/appbrain/t/j;->s0:Lcom/appbrain/q/a0;

    if-nez p2, :cond_0

    new-instance p2, Lcom/appbrain/q/q$b;

    sget-object p3, Lcom/appbrain/t/j;->r0:Lcom/appbrain/t/j;

    invoke-direct {p2, p3}, Lcom/appbrain/q/q$b;-><init>(Lcom/appbrain/q/q;)V

    sput-object p2, Lcom/appbrain/t/j;->s0:Lcom/appbrain/q/a0;

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
    sget-object p1, Lcom/appbrain/t/j;->s0:Lcom/appbrain/q/a0;

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

    const/high16 v1, 0x4000000

    const/high16 v2, 0x2000000

    const/high16 v3, 0x1000000

    const/high16 v4, 0x800000

    const/high16 v5, 0x400000

    const/high16 v6, 0x200000

    const/high16 v7, 0x100000

    const/high16 v8, 0x80000

    const/high16 v9, 0x40000

    const/high16 v10, 0x20000

    const v11, 0x8000

    sparse-switch p3, :sswitch_data_0

    invoke-virtual {p0, p3, p2}, Lcom/appbrain/q/q;->A(ILcom/appbrain/q/k;)Z

    move-result p3

    goto/16 :goto_4

    :sswitch_0
    invoke-virtual {p2}, Lcom/appbrain/q/k;->x()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/appbrain/q/k;->h(I)I

    move-result p3

    iget-object v1, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-interface {v1}, Lcom/appbrain/q/s$d;->a()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/appbrain/q/k;->y()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-static {v1}, Lcom/appbrain/q/q;->t(Lcom/appbrain/q/s$c;)Lcom/appbrain/q/s$c;

    move-result-object v1

    iput-object v1, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    :cond_3
    :goto_2
    invoke-virtual {p2}, Lcom/appbrain/q/k;->y()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/appbrain/q/s$c;->f(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2, p3}, Lcom/appbrain/q/k;->j(I)V

    goto :goto_1

    :sswitch_1
    iget-object p3, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-interface {p3}, Lcom/appbrain/q/s$d;->a()Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-static {p3}, Lcom/appbrain/q/q;->t(Lcom/appbrain/q/s$c;)Lcom/appbrain/q/s$c;

    move-result-object p3

    iput-object p3, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    :cond_5
    iget-object p3, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result v1

    invoke-interface {p3, v1}, Lcom/appbrain/q/s$c;->f(I)V

    goto :goto_1

    :sswitch_2
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x10000000

    or-int/2addr p3, v1

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->p0:I

    goto :goto_1

    :sswitch_3
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x8000000

    or-int/2addr p3, v1

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->o0:I

    goto/16 :goto_1

    :sswitch_4
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/2addr p3, v1

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->o()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/t/j;->n0:J

    goto/16 :goto_1

    :sswitch_5
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/2addr p3, v2

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->m0:I

    goto/16 :goto_1

    :sswitch_6
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/2addr p3, v3

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->l0:I

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->f:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/appbrain/t/j;->f:I

    iput-object p3, p0, Lcom/appbrain/t/j;->k0:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_8
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/2addr p3, v5

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->j0:I

    goto/16 :goto_1

    :sswitch_9
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/2addr p3, v6

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->i0:I

    goto/16 :goto_1

    :sswitch_a
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/2addr p3, v7

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->h0:I

    goto/16 :goto_1

    :sswitch_b
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/2addr p3, v8

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->g0:I

    goto/16 :goto_1

    :sswitch_c
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/2addr p3, v9

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->f0:I

    goto/16 :goto_1

    :sswitch_d
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/2addr p3, v10

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->e0:I

    goto/16 :goto_1

    :sswitch_e
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    const/high16 v1, 0x10000

    or-int/2addr p3, v1

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->d0:I

    goto/16 :goto_1

    :sswitch_f
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/2addr p3, v11

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->c0:I

    goto/16 :goto_1

    :sswitch_10
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 p3, p3, 0x4000

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->b0:I

    goto/16 :goto_1

    :sswitch_11
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 p3, p3, 0x2000

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->a0:I

    goto/16 :goto_1

    :sswitch_12
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 p3, p3, 0x1000

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/t/j;->Z:J

    goto/16 :goto_1

    :sswitch_13
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 p3, p3, 0x800

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/t/j;->Y:J

    goto/16 :goto_1

    :sswitch_14
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 p3, p3, 0x400

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/t/j;->X:J

    goto/16 :goto_1

    :sswitch_15
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/appbrain/t/j;->f:I

    iput-object p3, p0, Lcom/appbrain/t/j;->W:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_16
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 p3, p3, 0x100

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result p3

    iput-boolean p3, p0, Lcom/appbrain/t/j;->V:Z

    goto/16 :goto_1

    :sswitch_17
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->i()F

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->U:F

    goto/16 :goto_1

    :sswitch_18
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit8 p3, p3, 0x40

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->i()F

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->T:F

    goto/16 :goto_1

    :sswitch_19
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result p3

    iput-boolean p3, p0, Lcom/appbrain/t/j;->S:Z

    goto/16 :goto_1

    :sswitch_1a
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/t/j;->R:J

    goto/16 :goto_1

    :sswitch_1b
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    invoke-interface {v1}, Lcom/appbrain/q/s$d;->a()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    invoke-static {v1}, Lcom/appbrain/q/q;->u(Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object v1

    iput-object v1, p0, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    :cond_6
    iget-object v1, p0, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_1c
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/appbrain/t/j;->f:I

    iput-object p3, p0, Lcom/appbrain/t/j;->P:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_1d
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result p3

    iput-boolean p3, p0, Lcom/appbrain/t/j;->O:Z

    goto/16 :goto_1

    :sswitch_1e
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->f:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/appbrain/t/j;->f:I

    iput-object p3, p0, Lcom/appbrain/t/j;->N:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_1f
    iget p3, p0, Lcom/appbrain/t/j;->f:I

    or-int/2addr p3, p1

    iput p3, p0, Lcom/appbrain/t/j;->f:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->t()Z

    move-result p3

    iput-boolean p3, p0, Lcom/appbrain/t/j;->M:Z

    goto/16 :goto_1

    :sswitch_20
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, -0x80000000

    or-int/2addr p3, v1

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/t/j;->L:J

    goto/16 :goto_1

    :sswitch_21
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p3, v1

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->K:I

    goto/16 :goto_1

    :sswitch_22
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v1, 0x20000000

    or-int/2addr p3, v1

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->J:I

    goto/16 :goto_1

    :sswitch_23
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->I:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_24
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->H:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_25
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/2addr p3, v1

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->G:I

    goto/16 :goto_1

    :sswitch_26
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/2addr p3, v2

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->F:I

    goto/16 :goto_1

    :sswitch_27
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/2addr p3, v3

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->E:I

    goto/16 :goto_1

    :sswitch_28
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/2addr p3, v4

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->D:I

    goto/16 :goto_1

    :sswitch_29
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/2addr p3, v5

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->C:I

    goto/16 :goto_1

    :sswitch_2a
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/2addr p3, v6

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->B:I

    goto/16 :goto_1

    :sswitch_2b
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/2addr p3, v7

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->A:I

    goto/16 :goto_1

    :sswitch_2c
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/2addr p3, v8

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/t/j;->z:J

    goto/16 :goto_1

    :sswitch_2d
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/2addr p3, v9

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->y:I

    goto/16 :goto_1

    :sswitch_2e
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/2addr p3, v10

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->x:I

    goto/16 :goto_1

    :sswitch_2f
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->w:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_30
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/2addr p3, v11

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->v:I

    goto/16 :goto_1

    :sswitch_31
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->u:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_32
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->t:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_33
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->s:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_34
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->r:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_35
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->q:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_36
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->p:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_37
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 p3, p3, 0x100

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->o:I

    goto/16 :goto_1

    :sswitch_38
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit16 p3, p3, 0x80

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->m()I

    move-result p3

    iput p3, p0, Lcom/appbrain/t/j;->n:I

    goto/16 :goto_1

    :sswitch_39
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->m:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_3a
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->l:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_3b
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->k:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_3c
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->j:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_3d
    invoke-virtual {p2}, Lcom/appbrain/q/k;->u()Ljava/lang/String;

    move-result-object p3

    iget v1, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/appbrain/t/j;->e:I

    iput-object p3, p0, Lcom/appbrain/t/j;->i:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_3e
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/t/j;->h:J

    goto/16 :goto_1

    :sswitch_3f
    iget p3, p0, Lcom/appbrain/t/j;->e:I

    or-int/2addr p3, p1

    iput p3, p0, Lcom/appbrain/t/j;->e:I

    invoke-virtual {p2}, Lcom/appbrain/q/k;->k()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/t/j;->g:J
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_3
    :sswitch_40
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

    :cond_7
    :pswitch_2
    sget-object p1, Lcom/appbrain/t/j;->r0:Lcom/appbrain/t/j;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/appbrain/q/q$i;

    check-cast p3, Lcom/appbrain/t/j;

    invoke-direct {p0}, Lcom/appbrain/t/j;->x1()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/t/j;->g:J

    invoke-direct {p3}, Lcom/appbrain/t/j;->x1()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/t/j;->g:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/t/j;->g:J

    invoke-direct {p0}, Lcom/appbrain/t/j;->B1()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/t/j;->h:J

    invoke-direct {p3}, Lcom/appbrain/t/j;->B1()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/t/j;->h:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/t/j;->h:J

    invoke-direct {p0}, Lcom/appbrain/t/j;->Y1()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->i:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->Y1()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->i:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->a2()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->j:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->a2()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->j:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->c2()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->k:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->c2()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->k:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->k:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->e2()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->l:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->e2()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->l:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->l:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->g2()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->m:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->g2()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->m:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->M()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->n:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->M()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->n:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->n:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->N()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->o:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->N()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->o:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->o:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->O()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->p:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->O()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->p:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->p:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->P()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->q:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->P()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->q:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->Q()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->r:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->Q()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->r:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->r:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->R()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->s:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->R()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->s:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->S()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->t:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->S()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->t:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->t:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->T()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->u:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->T()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->u:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->u:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->U()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->v:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->U()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->v:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->v:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->V()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->w:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->V()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->w:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->w:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->W()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->x:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->W()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->x:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->x:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->X()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->y:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->X()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->y:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->y:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->Y()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/t/j;->z:J

    invoke-direct {p3}, Lcom/appbrain/t/j;->Y()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/t/j;->z:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/t/j;->z:J

    invoke-direct {p0}, Lcom/appbrain/t/j;->Z()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->A:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->Z()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->A:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->A:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->a0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->B:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->a0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->B:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->B:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->b0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->C:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->b0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->C:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->C:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->c0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->D:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->c0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->D:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->D:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->d0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->E:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->d0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->E:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->E:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->e0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->F:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->e0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->F:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->F:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->f0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->G:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->f0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->G:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->G:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->g0()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->H:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->g0()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->H:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->H:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->h0()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->I:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->h0()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->I:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->I:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->i0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->J:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->i0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->J:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->J:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->j0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->K:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->j0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->K:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->K:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->k0()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/t/j;->L:J

    invoke-direct {p3}, Lcom/appbrain/t/j;->k0()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/t/j;->L:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/t/j;->L:J

    invoke-direct {p0}, Lcom/appbrain/t/j;->l0()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/t/j;->M:Z

    invoke-direct {p3}, Lcom/appbrain/t/j;->l0()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/t/j;->M:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/t/j;->M:Z

    invoke-direct {p0}, Lcom/appbrain/t/j;->t0()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->N:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->t0()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->N:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->N:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->u0()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/t/j;->O:Z

    invoke-direct {p3}, Lcom/appbrain/t/j;->u0()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/t/j;->O:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/t/j;->O:Z

    invoke-direct {p0}, Lcom/appbrain/t/j;->v0()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->P:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->v0()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->P:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->P:Ljava/lang/String;

    iget-object p1, p0, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    iget-object v0, p3, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    invoke-interface {p2, p1, v0}, Lcom/appbrain/q/q$i;->g(Lcom/appbrain/q/s$d;Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    invoke-direct {p0}, Lcom/appbrain/t/j;->w0()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/t/j;->R:J

    invoke-direct {p3}, Lcom/appbrain/t/j;->w0()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/t/j;->R:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/t/j;->R:J

    invoke-direct {p0}, Lcom/appbrain/t/j;->x0()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/t/j;->S:Z

    invoke-direct {p3}, Lcom/appbrain/t/j;->x0()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/t/j;->S:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/t/j;->S:Z

    invoke-virtual {p0}, Lcom/appbrain/t/j;->r0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->T:F

    invoke-virtual {p3}, Lcom/appbrain/t/j;->r0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->T:F

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->c(ZFZF)F

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->T:F

    invoke-direct {p0}, Lcom/appbrain/t/j;->y0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->U:F

    invoke-direct {p3}, Lcom/appbrain/t/j;->y0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->U:F

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->c(ZFZF)F

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->U:F

    invoke-direct {p0}, Lcom/appbrain/t/j;->z0()Z

    move-result p1

    iget-boolean v0, p0, Lcom/appbrain/t/j;->V:Z

    invoke-direct {p3}, Lcom/appbrain/t/j;->z0()Z

    move-result v1

    iget-boolean v2, p3, Lcom/appbrain/t/j;->V:Z

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->k(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appbrain/t/j;->V:Z

    invoke-direct {p0}, Lcom/appbrain/t/j;->A0()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->W:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->A0()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->W:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->W:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->B0()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/t/j;->X:J

    invoke-direct {p3}, Lcom/appbrain/t/j;->B0()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/t/j;->X:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/t/j;->X:J

    invoke-direct {p0}, Lcom/appbrain/t/j;->C0()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/t/j;->Y:J

    invoke-direct {p3}, Lcom/appbrain/t/j;->C0()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/t/j;->Y:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/t/j;->Y:J

    invoke-direct {p0}, Lcom/appbrain/t/j;->D0()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/t/j;->Z:J

    invoke-direct {p3}, Lcom/appbrain/t/j;->D0()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/t/j;->Z:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/t/j;->Z:J

    invoke-direct {p0}, Lcom/appbrain/t/j;->E0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->a0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->E0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->a0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->a0:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->F0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->b0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->F0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->b0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->b0:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->G0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->c0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->G0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->c0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->c0:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->H0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->d0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->H0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->d0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->d0:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->I0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->e0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->I0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->e0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->e0:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->J0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->f0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->J0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->f0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->f0:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->K0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->g0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->K0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->g0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->g0:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->L0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->h0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->L0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->h0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->h0:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->M0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->i0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->M0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->i0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->i0:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->N0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->j0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->N0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->j0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->j0:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->O0()Z

    move-result p1

    iget-object v0, p0, Lcom/appbrain/t/j;->k0:Ljava/lang/String;

    invoke-direct {p3}, Lcom/appbrain/t/j;->O0()Z

    move-result v1

    iget-object v2, p3, Lcom/appbrain/t/j;->k0:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->k0:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/t/j;->P0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->l0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->P0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->l0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->l0:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->Q0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->m0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->Q0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->m0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->m0:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->R0()Z

    move-result v1

    iget-wide v2, p0, Lcom/appbrain/t/j;->n0:J

    invoke-direct {p3}, Lcom/appbrain/t/j;->R0()Z

    move-result v4

    iget-wide v5, p3, Lcom/appbrain/t/j;->n0:J

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/appbrain/q/q$i;->j(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/t/j;->n0:J

    invoke-direct {p0}, Lcom/appbrain/t/j;->S0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->o0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->S0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->o0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->o0:I

    invoke-direct {p0}, Lcom/appbrain/t/j;->s0()Z

    move-result p1

    iget v0, p0, Lcom/appbrain/t/j;->p0:I

    invoke-direct {p3}, Lcom/appbrain/t/j;->s0()Z

    move-result v1

    iget v2, p3, Lcom/appbrain/t/j;->p0:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/appbrain/q/q$i;->e(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/appbrain/t/j;->p0:I

    iget-object p1, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    iget-object v0, p3, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-interface {p2, p1, v0}, Lcom/appbrain/q/q$i;->h(Lcom/appbrain/q/s$c;Lcom/appbrain/q/s$c;)Lcom/appbrain/q/s$c;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    sget-object p1, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    if-ne p2, p1, :cond_8

    iget p1, p0, Lcom/appbrain/t/j;->e:I

    iget p2, p3, Lcom/appbrain/t/j;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/t/j;->e:I

    iget p1, p0, Lcom/appbrain/t/j;->f:I

    iget p2, p3, Lcom/appbrain/t/j;->f:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/t/j;->f:I

    :cond_8
    return-object p0

    :pswitch_4
    new-instance p1, Lcom/appbrain/t/j$a;

    invoke-direct {p1, v0}, Lcom/appbrain/t/j$a;-><init>(B)V

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/appbrain/t/j;->Q:Lcom/appbrain/q/s$d;

    invoke-interface {p1}, Lcom/appbrain/q/s$d;->b()V

    iget-object p1, p0, Lcom/appbrain/t/j;->q0:Lcom/appbrain/q/s$c;

    invoke-interface {p1}, Lcom/appbrain/q/s$d;->b()V

    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/appbrain/t/j;->r0:Lcom/appbrain/t/j;

    return-object p1

    :pswitch_7
    new-instance p1, Lcom/appbrain/t/j;

    invoke-direct {p1}, Lcom/appbrain/t/j;-><init>()V

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

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_40
        0x8 -> :sswitch_3f
        0x10 -> :sswitch_3e
        0x1a -> :sswitch_3d
        0x22 -> :sswitch_3c
        0x2a -> :sswitch_3b
        0x32 -> :sswitch_3a
        0x3a -> :sswitch_39
        0x50 -> :sswitch_38
        0x58 -> :sswitch_37
        0x72 -> :sswitch_36
        0x7a -> :sswitch_35
        0x82 -> :sswitch_34
        0xa2 -> :sswitch_33
        0xaa -> :sswitch_32
        0xb2 -> :sswitch_31
        0xb8 -> :sswitch_30
        0xca -> :sswitch_2f
        0xd0 -> :sswitch_2e
        0xd8 -> :sswitch_2d
        0xe0 -> :sswitch_2c
        0xe8 -> :sswitch_2b
        0xf0 -> :sswitch_2a
        0xf8 -> :sswitch_29
        0x100 -> :sswitch_28
        0x108 -> :sswitch_27
        0x110 -> :sswitch_26
        0x118 -> :sswitch_25
        0x122 -> :sswitch_24
        0x132 -> :sswitch_23
        0x148 -> :sswitch_22
        0x150 -> :sswitch_21
        0x158 -> :sswitch_20
        0x160 -> :sswitch_1f
        0x16a -> :sswitch_1e
        0x170 -> :sswitch_1d
        0x17a -> :sswitch_1c
        0x182 -> :sswitch_1b
        0x188 -> :sswitch_1a
        0x190 -> :sswitch_19
        0x19d -> :sswitch_18
        0x1a5 -> :sswitch_17
        0x1a8 -> :sswitch_16
        0x1b2 -> :sswitch_15
        0x1b8 -> :sswitch_14
        0x1c0 -> :sswitch_13
        0x1c8 -> :sswitch_12
        0x1d0 -> :sswitch_11
        0x1d8 -> :sswitch_10
        0x1e0 -> :sswitch_f
        0x1e8 -> :sswitch_e
        0x1f0 -> :sswitch_d
        0x1f8 -> :sswitch_c
        0x200 -> :sswitch_b
        0x208 -> :sswitch_a
        0x210 -> :sswitch_9
        0x218 -> :sswitch_8
        0x222 -> :sswitch_7
        0x228 -> :sswitch_6
        0x230 -> :sswitch_5
        0x239 -> :sswitch_4
        0x240 -> :sswitch_3
        0x248 -> :sswitch_2
        0x250 -> :sswitch_1
        0x252 -> :sswitch_0
    .end sparse-switch
.end method

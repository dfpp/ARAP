.class final Lcom/appbrain/a/t0$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:J

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:[I


# direct methods
.method private constructor <init>(JIII[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/appbrain/a/t0$c;->a:J

    iput p3, p0, Lcom/appbrain/a/t0$c;->b:I

    iput p4, p0, Lcom/appbrain/a/t0$c;->d:I

    iput p5, p0, Lcom/appbrain/a/t0$c;->c:I

    iput-object p6, p0, Lcom/appbrain/a/t0$c;->e:[I

    return-void
.end method

.method synthetic constructor <init>(JIII[IB)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/appbrain/a/t0$c;-><init>(JIII[I)V

    return-void
.end method

.method static synthetic b(Lcom/appbrain/a/t0$c;)J
    .locals 2

    iget-wide v0, p0, Lcom/appbrain/a/t0$c;->a:J

    return-wide v0
.end method

.method static synthetic d(Lcom/appbrain/a/t0$c;)I
    .locals 0

    iget p0, p0, Lcom/appbrain/a/t0$c;->b:I

    return p0
.end method

.method static synthetic f(Lcom/appbrain/a/t0$c;)I
    .locals 0

    iget p0, p0, Lcom/appbrain/a/t0$c;->d:I

    return p0
.end method

.method static synthetic h(Lcom/appbrain/a/t0$c;)I
    .locals 0

    iget p0, p0, Lcom/appbrain/a/t0$c;->c:I

    return p0
.end method

.method static synthetic j(Lcom/appbrain/a/t0$c;)[I
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/t0$c;->e:[I

    return-object p0
.end method


# virtual methods
.method final a()J
    .locals 2

    iget-wide v0, p0, Lcom/appbrain/a/t0$c;->a:J

    return-wide v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/appbrain/a/t0$c;->b:I

    return v0
.end method

.method final e()I
    .locals 1

    iget v0, p0, Lcom/appbrain/a/t0$c;->d:I

    return v0
.end method

.method final g()I
    .locals 1

    iget v0, p0, Lcom/appbrain/a/t0$c;->c:I

    return v0
.end method

.method final i()[I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/t0$c;->e:[I

    return-object v0
.end method

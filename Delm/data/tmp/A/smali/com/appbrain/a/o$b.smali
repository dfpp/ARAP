.class final Lcom/appbrain/a/o$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/a/o$b;->a:J

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/appbrain/a/o$b;->b:J

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/o$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appbrain/a/o$b;)Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/appbrain/a/o$b;->a:J

    iget-wide v4, p0, Lcom/appbrain/a/o$b;->b:J

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/appbrain/a/o$b;)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/a/o$b;->a:J

    iget-wide v0, p0, Lcom/appbrain/a/o$b;->b:J

    const-wide/32 v2, 0x1f400

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/appbrain/a/o$b;->b:J

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/appbrain/a/o$b;)J
    .locals 4

    iget-wide v0, p0, Lcom/appbrain/a/o$b;->a:J

    iget-wide v2, p0, Lcom/appbrain/a/o$b;->b:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    return-wide v2

    :cond_0
    return-wide v0
.end method

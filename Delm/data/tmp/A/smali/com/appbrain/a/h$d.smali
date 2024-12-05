.class final Lcom/appbrain/a/h$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/appbrain/a/h$b;

.field private final b:J


# direct methods
.method private constructor <init>(Lcom/appbrain/a/h$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/h$d;->a:Lcom/appbrain/a/h$b;

    if-nez p1, :cond_0

    const-wide/32 v0, 0x1d4c0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x668a0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/appbrain/a/h$d;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/appbrain/a/h$b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/h$d;-><init>(Lcom/appbrain/a/h$b;)V

    return-void
.end method

.method static synthetic a(Lcom/appbrain/a/h$d;)Lcom/appbrain/a/h$b;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/h$d;->a:Lcom/appbrain/a/h$b;

    return-object p0
.end method

.method static synthetic b(Lcom/appbrain/a/h$d;)J
    .locals 2

    iget-wide v0, p0, Lcom/appbrain/a/h$d;->b:J

    return-wide v0
.end method

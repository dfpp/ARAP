.class public final Lcom/appbrain/a/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lcom/appbrain/a/m;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/appbrain/a/m;->a:J

    return-void
.end method

.method static synthetic a(Lcom/appbrain/a/m;J)J
    .locals 0

    iput-wide p1, p0, Lcom/appbrain/a/m;->a:J

    return-wide p1
.end method

.method static declared-synchronized b()Lcom/appbrain/a/m;
    .locals 2

    const-class v0, Lcom/appbrain/a/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appbrain/a/m;->c:Lcom/appbrain/a/m;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appbrain/a/m;

    invoke-direct {v1}, Lcom/appbrain/a/m;-><init>()V

    sput-object v1, Lcom/appbrain/a/m;->c:Lcom/appbrain/a/m;

    :cond_0
    sget-object v1, Lcom/appbrain/a/m;->c:Lcom/appbrain/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic c(Lcom/appbrain/a/m;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/m;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/appbrain/a/m;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/m;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/appbrain/a/m;)J
    .locals 2

    iget-wide v0, p0, Lcom/appbrain/a/m;->a:J

    return-wide v0
.end method

.class final Lcom/appbrain/o/f0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/concurrent/CountDownLatch;

.field private volatile c:Lcom/appbrain/o/k0;

.field final synthetic d:Lcom/appbrain/o/f0;


# direct methods
.method private constructor <init>(Lcom/appbrain/o/f0;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/appbrain/o/f0$b;->d:Lcom/appbrain/o/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/appbrain/o/f0$b;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/appbrain/o/f0$b;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appbrain/o/f0;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appbrain/o/f0$b;-><init>(Lcom/appbrain/o/f0;Ljava/lang/String;)V

    return-void
.end method

.method private a()Lcom/appbrain/o/k0;
    .locals 4

    iget-object v0, p0, Lcom/appbrain/o/f0$b;->c:Lcom/appbrain/o/k0;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/appbrain/o/f0$b;->d:Lcom/appbrain/o/f0;

    invoke-static {v1}, Lcom/appbrain/o/f0;->a(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$d;

    move-result-object v1

    sget-object v2, Lcom/appbrain/o/f0$d;->c:Lcom/appbrain/o/f0$d;

    if-ne v1, v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/o/f0$b;->b:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/o/f0$b;->c:Lcom/appbrain/o/k0;

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Timeout waiting for SharedPreferences to initialize."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic b(Lcom/appbrain/o/f0$b;)V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/f0$b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appbrain/o/k0;->d(Ljava/lang/String;Landroid/content/Context;)Lcom/appbrain/o/k0;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/o/f0$b;->c:Lcom/appbrain/o/k0;

    iget-object p0, p0, Lcom/appbrain/o/f0$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static synthetic c(Lcom/appbrain/o/f0$b;)Lcom/appbrain/o/k0;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/f0$b;->c:Lcom/appbrain/o/k0;

    return-object p0
.end method

.method static synthetic d(Lcom/appbrain/o/f0$b;)Lcom/appbrain/o/k0;
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/o/f0$b;->a()Lcom/appbrain/o/k0;

    move-result-object p0

    return-object p0
.end method

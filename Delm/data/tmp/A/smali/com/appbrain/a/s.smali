.class public final Lcom/appbrain/a/s;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/s$c;
    }
.end annotation


# static fields
.field private static d:Lcom/appbrain/a/s;


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private volatile b:Lcom/appbrain/a/s$c;

.field private c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/appbrain/a/s;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    new-instance v1, Lcom/appbrain/a/s$a;

    invoke-direct {v1, p0, p1}, Lcom/appbrain/a/s$a;-><init>(Lcom/appbrain/a/s;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/appbrain/o/f0;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method static declared-synchronized b(Landroid/content/Context;)Lcom/appbrain/a/s;
    .locals 2

    const-class v0, Lcom/appbrain/a/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appbrain/a/s;->d:Lcom/appbrain/a/s;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appbrain/a/s;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/appbrain/a/s;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appbrain/a/s;->d:Lcom/appbrain/a/s;

    :cond_0
    sget-object p0, Lcom/appbrain/a/s;->d:Lcom/appbrain/a/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic c(Lcom/appbrain/a/s;)V
    .locals 10

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    const-string v1, "install_referrer_attempts"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/o/k0;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/appbrain/a/s;->c:I

    const-string v1, "install_referrer"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/appbrain/o/k0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v1, Lcom/appbrain/a/s$c;

    const-string v3, "referrer_click_timestamp"

    invoke-virtual {v0, v3, v2}, Lcom/appbrain/o/k0;->a(Ljava/lang/String;I)I

    move-result v3

    int-to-long v6, v3

    const-string v3, "install_begin_timestamp"

    invoke-virtual {v0, v3, v2}, Lcom/appbrain/o/k0;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v8, v0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/appbrain/a/s$c;-><init>(Ljava/lang/String;JJ)V

    iput-object v1, p0, Lcom/appbrain/a/s;->b:Lcom/appbrain/a/s$c;

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/appbrain/a/s;Landroid/content/Context;)V
    .locals 8

    iget v0, p0, Lcom/appbrain/a/s;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appbrain/a/s;->c:I

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/a/s;->c:I

    const-string v2, "install_referrer_attempts"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/o/f0;->d(Landroid/content/SharedPreferences$Editor;)V

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {p1}, Lb/a/a/a/a;->c(Landroid/content/Context;)Lb/a/a/a/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a$b;->a()Lb/a/a/a/a;

    move-result-object v0

    new-instance v7, Lcom/appbrain/a/s$b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/appbrain/a/s$b;-><init>(Lcom/appbrain/a/s;Landroid/content/Context;Lb/a/a/a/a;J)V

    invoke-virtual {v0, v7}, Lb/a/a/a/a;->d(Lb/a/a/a/c;)V

    invoke-static {}, Lcom/appbrain/a/q0;->a()Lcom/appbrain/a/q0;

    move-result-object p0

    sget-object p1, Lcom/appbrain/t/d;->d:Lcom/appbrain/t/d;

    invoke-static {p1}, Lcom/appbrain/a/q0;->b(Lcom/appbrain/t/d;)Lcom/appbrain/t/c$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appbrain/a/q0;->f(Lcom/appbrain/t/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    instance-of p1, p0, Ljava/lang/NoClassDefFoundError;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/ClassNotFoundException;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "conn installref"

    invoke-static {p1, p0}, Lcom/appbrain/o/i;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/appbrain/a/q0;->a()Lcom/appbrain/a/q0;

    move-result-object p0

    sget-object p1, Lcom/appbrain/t/d;->c:Lcom/appbrain/t/d;

    invoke-static {p1}, Lcom/appbrain/a/q0;->b(Lcom/appbrain/t/d;)Lcom/appbrain/t/c$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appbrain/a/q0;->f(Lcom/appbrain/t/c$a;)V

    const/4 p0, 0x6

    const-string p1, "AppBrain"

    const-string v0, "Couldn\'t find referrer API dependency. Please check https://bit.ly/2LjzK2N for the correct AppBrain SDK setup."

    invoke-static {p0, p1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic e(Lcom/appbrain/a/s;Landroid/content/Context;Lb/a/a/a/a;)V
    .locals 8

    invoke-virtual {p2}, Lb/a/a/a/a;->b()Lb/a/a/a/d;

    move-result-object p2

    invoke-virtual {p2}, Lb/a/a/a/d;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v7, Lcom/appbrain/a/s$c;

    invoke-virtual {p2}, Lb/a/a/a/d;->c()J

    move-result-wide v1

    long-to-int v2, v1

    int-to-long v3, v2

    invoke-virtual {p2}, Lb/a/a/a/d;->a()J

    move-result-wide v1

    long-to-int p2, v1

    int-to-long v5, p2

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/appbrain/a/s$c;-><init>(Ljava/lang/String;JJ)V

    iput-object v7, p0, Lcom/appbrain/a/s;->b:Lcom/appbrain/a/s$c;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "install_referrer"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v1, p0, Lcom/appbrain/a/s;->b:Lcom/appbrain/a/s$c;

    iget v1, v1, Lcom/appbrain/a/s$c;->c:I

    const-string v2, "install_begin_timestamp"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p0, p0, Lcom/appbrain/a/s;->b:Lcom/appbrain/a/s$c;

    iget p0, p0, Lcom/appbrain/a/s$c;->b:I

    const-string v1, "referrer_click_timestamp"

    invoke-interface {p2, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/appbrain/o/f0;->d(Landroid/content/SharedPreferences$Editor;)V

    const/4 p0, 0x0

    invoke-static {p1, v0, p0}, Lcom/appbrain/l;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic f(Lcom/appbrain/a/s;)Lcom/appbrain/a/s$c;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/s;->b:Lcom/appbrain/a/s$c;

    return-object p0
.end method

.method static synthetic g(Lcom/appbrain/a/s;)I
    .locals 0

    iget p0, p0, Lcom/appbrain/a/s;->c:I

    return p0
.end method

.method static synthetic h(Lcom/appbrain/a/s;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/s;->a:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method final a(ILjava/util/concurrent/TimeUnit;)Lcom/appbrain/a/s$c;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/s;->a:Ljava/util/concurrent/CountDownLatch;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/appbrain/a/s;->b:Lcom/appbrain/a/s$c;

    return-object p1
.end method

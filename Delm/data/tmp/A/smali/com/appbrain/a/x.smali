.class public Lcom/appbrain/a/x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/x$f;
    }
.end annotation


# static fields
.field private static final n:Lcom/appbrain/a/o;

.field private static final o:Lcom/appbrain/a/o;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/appbrain/a/w;

.field private final c:Lcom/appbrain/t/q$d;

.field private final d:Ljava/lang/Runnable;

.field private final e:Lcom/appbrain/k;

.field private final f:Z

.field private final g:Ljava/lang/Runnable;

.field private h:Landroid/app/Activity;

.field private i:Lcom/appbrain/k;

.field private j:Lcom/appbrain/n/d;

.field private k:Lcom/appbrain/a/x$f;

.field private l:J

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/a/o;

    invoke-direct {v0}, Lcom/appbrain/a/o;-><init>()V

    sput-object v0, Lcom/appbrain/a/x;->n:Lcom/appbrain/a/o;

    new-instance v0, Lcom/appbrain/a/o;

    invoke-direct {v0}, Lcom/appbrain/a/o;-><init>()V

    sput-object v0, Lcom/appbrain/a/x;->o:Lcom/appbrain/a/o;

    return-void
.end method

.method public constructor <init>(Lcom/appbrain/a/w;Lcom/appbrain/t/q$d;Lcom/appbrain/k;Ljava/lang/Runnable;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/appbrain/a/x;->a:Landroid/os/Handler;

    new-instance v0, Lcom/appbrain/a/x$a;

    invoke-direct {v0, p0}, Lcom/appbrain/a/x$a;-><init>(Lcom/appbrain/a/x;)V

    iput-object v0, p0, Lcom/appbrain/a/x;->g:Ljava/lang/Runnable;

    sget-object v0, Lcom/appbrain/a/x$f;->b:Lcom/appbrain/a/x$f;

    iput-object v0, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    iput-object p1, p0, Lcom/appbrain/a/x;->b:Lcom/appbrain/a/w;

    iput-object p2, p0, Lcom/appbrain/a/x;->c:Lcom/appbrain/t/q$d;

    iput-object p4, p0, Lcom/appbrain/a/x;->d:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/appbrain/a/x;->e:Lcom/appbrain/k;

    iput-boolean p5, p0, Lcom/appbrain/a/x;->f:Z

    return-void
.end method

.method private a()V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/a/x;->m:Z

    iget-object v0, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    sget-object v1, Lcom/appbrain/a/x$f;->c:Lcom/appbrain/a/x$f;

    const-string v2, "AppBrain"

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/appbrain/a/x$f;->d:Lcom/appbrain/a/x$f;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/appbrain/a/x$f;->e:Lcom/appbrain/a/x$f;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/appbrain/a/x$f;->h:Lcom/appbrain/a/x$f;

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lcom/appbrain/a/x$f;->f:Lcom/appbrain/a/x$f;

    const/4 v3, 0x4

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/appbrain/a/x$f;->g:Lcom/appbrain/a/x$f;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/appbrain/a/x;->n()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Scheduling preload in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-double v5, v0

    const-wide v7, 0x408f400000000000L    # 1000.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " sec."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/appbrain/a/x$f;->e:Lcom/appbrain/a/x$f;

    invoke-direct {p0, v2}, Lcom/appbrain/a/x;->c(Lcom/appbrain/a/x$f;)V

    iget-object v2, p0, Lcom/appbrain/a/x;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/appbrain/a/x;->g:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/a/x;->l:J

    iget-object v0, p0, Lcom/appbrain/a/x;->b:Lcom/appbrain/a/w;

    invoke-virtual {v0}, Lcom/appbrain/a/w;->g()Lcom/appbrain/b;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/a/w;->a(Lcom/appbrain/b;)Lcom/appbrain/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/appbrain/a/x;->f:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/appbrain/n/f;->a()Lcom/appbrain/n/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appbrain/n/f;->b(Lcom/appbrain/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/appbrain/a/x$f;->c:Lcom/appbrain/a/x$f;

    invoke-direct {p0, v1}, Lcom/appbrain/a/x;->c(Lcom/appbrain/a/x$f;)V

    invoke-direct {p0}, Lcom/appbrain/a/x;->x()V

    iget-object v1, p0, Lcom/appbrain/a/x;->h:Landroid/app/Activity;

    iget-object v2, p0, Lcom/appbrain/a/x;->i:Lcom/appbrain/k;

    invoke-static {v1, v0, v2}, Lcom/appbrain/n/d;->a(Landroid/app/Activity;Lcom/appbrain/b;Lcom/appbrain/k;)Lcom/appbrain/n/d;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/x;->j:Lcom/appbrain/n/d;

    invoke-virtual {v0}, Lcom/appbrain/n/d;->b()V

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/a/x;->h(Ljava/lang/String;)Z

    return-void

    :cond_4
    :goto_0
    const-string v0, "Interstitial is showing, preload is scheduled for when interstitial is closed."

    invoke-static {v3, v2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/appbrain/a/x$f;->h:Lcom/appbrain/a/x$f;

    invoke-direct {p0, v0}, Lcom/appbrain/a/x;->c(Lcom/appbrain/a/x$f;)V

    return-void

    :cond_5
    :goto_1
    const/4 v0, 0x5

    const-string v1, "Interstitial already preloaded, ignoring preload"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c(Lcom/appbrain/a/x$f;)V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/x;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appbrain/a/x;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    return-void
.end method

.method static synthetic d(Lcom/appbrain/a/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/x;->j()V

    return-void
.end method

.method private declared-synchronized f(Lcom/appbrain/k;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/x;->i:Lcom/appbrain/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    sget-object v0, Lcom/appbrain/a/x$f;->c:Lcom/appbrain/a/x$f;

    if-eq p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected state in onInterstitialLoaded: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/appbrain/a/x;->j:Lcom/appbrain/n/d;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    const-string p1, "wrappedListener.onAdLoaded() should only be called when mediating"

    invoke-static {v1, p1}, Lcom/appbrain/o/i;->f(ZLjava/lang/String;)Z

    sget-object p1, Lcom/appbrain/a/x;->o:Lcom/appbrain/a/o;

    iget-object v1, p0, Lcom/appbrain/a/x;->b:Lcom/appbrain/a/w;

    invoke-virtual {v1}, Lcom/appbrain/a/w;->g()Lcom/appbrain/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/appbrain/a/o;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/appbrain/a/x$f;->d:Lcom/appbrain/a/x$f;

    invoke-direct {p0, p1}, Lcom/appbrain/a/x;->c(Lcom/appbrain/a/x$f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic g(Lcom/appbrain/a/x;Lcom/appbrain/k;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/x;->f(Lcom/appbrain/k;)Z

    move-result p0

    return p0
.end method

.method private h(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/appbrain/a/y$a;->a()Lcom/appbrain/a/y;

    iget-object v0, p0, Lcom/appbrain/a/x;->c:Lcom/appbrain/t/q$d;

    invoke-static {v0}, Lcom/appbrain/a/y;->c(Lcom/appbrain/t/q$d;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/appbrain/a/x;->r()V

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v0, Lcom/appbrain/a/x$f;->d:Lcom/appbrain/a/x$f;

    invoke-direct {p0, v0}, Lcom/appbrain/a/x;->c(Lcom/appbrain/a/x$f;)V

    invoke-direct {p0}, Lcom/appbrain/a/x;->x()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/appbrain/a/w;

    iget-object v1, p0, Lcom/appbrain/a/x;->b:Lcom/appbrain/a/w;

    invoke-virtual {v1}, Lcom/appbrain/a/w;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appbrain/a/x;->b:Lcom/appbrain/a/w;

    invoke-virtual {v3}, Lcom/appbrain/a/w;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/appbrain/a/w;-><init>(Lcom/appbrain/a/w;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appbrain/a/x;->b:Lcom/appbrain/a/w;

    :cond_2
    sget-object p1, Lcom/appbrain/a/x;->n:Lcom/appbrain/a/o;

    iget-object v0, p0, Lcom/appbrain/a/x;->b:Lcom/appbrain/a/w;

    invoke-virtual {v0}, Lcom/appbrain/a/w;->g()Lcom/appbrain/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appbrain/a/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appbrain/a/x;->e:Lcom/appbrain/k;

    if-eqz p1, :cond_3

    new-instance p1, Lcom/appbrain/a/x$b;

    invoke-direct {p1, p0}, Lcom/appbrain/a/x$b;-><init>(Lcom/appbrain/a/x;)V

    invoke-static {p1}, Lcom/appbrain/o/j;->c(Ljava/lang/Runnable;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic i(Lcom/appbrain/a/x;)Lcom/appbrain/k;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/x;->e:Lcom/appbrain/k;

    return-object p0
.end method

.method private declared-synchronized j()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    sget-object v1, Lcom/appbrain/a/x$f;->e:Lcom/appbrain/a/x$f;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected state in onScheduledPreload: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/appbrain/a/x$f;->b:Lcom/appbrain/a/x$f;

    invoke-direct {p0, v0}, Lcom/appbrain/a/x;->c(Lcom/appbrain/a/x$f;)V

    invoke-direct {p0}, Lcom/appbrain/a/x;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/appbrain/o/j;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/appbrain/a/x;->h:Landroid/app/Activity;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "InterstitialBuilder used with multiple activities"

    invoke-static {v0, v1}, Lcom/appbrain/o/i;->f(ZLjava/lang/String;)Z

    iput-object p1, p0, Lcom/appbrain/a/x;->h:Landroid/app/Activity;

    return-void
.end method

.method private declared-synchronized l(Lcom/appbrain/k;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/x;->i:Lcom/appbrain/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/appbrain/a/x;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    const-string v1, "AppBrain"

    const-string v2, "Interstitial loading error while showing"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/appbrain/a/x;->v(Lcom/appbrain/k;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    sget-object v0, Lcom/appbrain/a/x$f;->c:Lcom/appbrain/a/x$f;

    if-eq p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected state in onInterstitialFailedToLoad: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/appbrain/a/x;->j:Lcom/appbrain/n/d;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    const-string p1, "wrappedListener.onAdFailedToLoad() should only be called when mediating"

    invoke-static {v1, p1}, Lcom/appbrain/o/i;->f(ZLjava/lang/String;)Z

    sget-object p1, Lcom/appbrain/a/x;->o:Lcom/appbrain/a/o;

    iget-object v1, p0, Lcom/appbrain/a/x;->b:Lcom/appbrain/a/w;

    invoke-virtual {v1}, Lcom/appbrain/a/w;->g()Lcom/appbrain/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/appbrain/a/o;->a(Ljava/lang/Object;)V

    sget-object p1, Lcom/appbrain/a/x$f;->b:Lcom/appbrain/a/x$f;

    invoke-direct {p0, p1}, Lcom/appbrain/a/x;->c(Lcom/appbrain/a/x$f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic m(Lcom/appbrain/a/x;Lcom/appbrain/k;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/x;->l(Lcom/appbrain/k;)Z

    move-result p0

    return p0
.end method

.method private n()J
    .locals 4

    sget-object v0, Lcom/appbrain/a/x;->n:Lcom/appbrain/a/o;

    iget-object v1, p0, Lcom/appbrain/a/x;->b:Lcom/appbrain/a/w;

    invoke-virtual {v1}, Lcom/appbrain/a/w;->g()Lcom/appbrain/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/a/o;->c(Ljava/lang/Object;)J

    move-result-wide v0

    sget-object v2, Lcom/appbrain/a/x;->o:Lcom/appbrain/a/o;

    iget-object v3, p0, Lcom/appbrain/a/x;->b:Lcom/appbrain/a/w;

    invoke-virtual {v3}, Lcom/appbrain/a/w;->g()Lcom/appbrain/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appbrain/a/o;->c(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic o(Lcom/appbrain/a/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/x;->y()V

    return-void
.end method

.method private declared-synchronized p(Lcom/appbrain/k;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/x;->i:Lcom/appbrain/k;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/appbrain/a/x;->u()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected state in onInterstitialPresented: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/appbrain/o/i;->f(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static synthetic q(Lcom/appbrain/a/x;Lcom/appbrain/k;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/x;->p(Lcom/appbrain/k;)Z

    move-result p0

    return p0
.end method

.method private r()V
    .locals 2

    sget-object v0, Lcom/appbrain/a/x$f;->b:Lcom/appbrain/a/x$f;

    invoke-direct {p0, v0}, Lcom/appbrain/a/x;->c(Lcom/appbrain/a/x$f;)V

    invoke-direct {p0}, Lcom/appbrain/a/x;->x()V

    sget-object v0, Lcom/appbrain/a/x;->n:Lcom/appbrain/a/o;

    iget-object v1, p0, Lcom/appbrain/a/x;->b:Lcom/appbrain/a/w;

    invoke-virtual {v1}, Lcom/appbrain/a/w;->g()Lcom/appbrain/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/a/o;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/appbrain/a/x;->e:Lcom/appbrain/k;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appbrain/a/x$c;

    invoke-direct {v0, p0}, Lcom/appbrain/a/x$c;-><init>(Lcom/appbrain/a/x;)V

    invoke-static {v0}, Lcom/appbrain/o/j;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized s(Lcom/appbrain/k;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/x;->i:Lcom/appbrain/k;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/appbrain/a/x;->u()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected state in onInterstitialClick: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/appbrain/o/i;->f(ZLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method static synthetic t(Lcom/appbrain/a/x;Lcom/appbrain/k;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/x;->s(Lcom/appbrain/k;)Z

    move-result p0

    return p0
.end method

.method private u()Z
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    sget-object v1, Lcom/appbrain/a/x$f;->f:Lcom/appbrain/a/x$f;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/appbrain/a/x$f;->g:Lcom/appbrain/a/x$f;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/appbrain/a/x$f;->h:Lcom/appbrain/a/x$f;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized v(Lcom/appbrain/k;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/x;->i:Lcom/appbrain/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/appbrain/a/x;->u()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected state in onInterstitialDismissed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    sget-object v0, Lcom/appbrain/a/x$f;->b:Lcom/appbrain/a/x$f;

    invoke-direct {p0, v0}, Lcom/appbrain/a/x;->c(Lcom/appbrain/a/x$f;)V

    sget-object v0, Lcom/appbrain/a/x$f;->h:Lcom/appbrain/a/x$f;

    if-ne p1, v0, :cond_2

    :goto_0
    invoke-direct {p0}, Lcom/appbrain/a/x;->a()V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/appbrain/a/x$f;->g:Lcom/appbrain/a/x$f;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/appbrain/a/x;->m:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    const-string v0, "AppBrain"

    const-string v1, "Preloaded InterstitialBuilder is being reused unpreloaded, forcing preload now."

    invoke-static {p1, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method static synthetic w(Lcom/appbrain/a/x;Lcom/appbrain/k;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/x;->v(Lcom/appbrain/k;)Z

    move-result p0

    return p0
.end method

.method private x()V
    .locals 1

    new-instance v0, Lcom/appbrain/a/x$e;

    invoke-direct {v0, p0}, Lcom/appbrain/a/x$e;-><init>(Lcom/appbrain/a/x;)V

    iput-object v0, p0, Lcom/appbrain/a/x;->i:Lcom/appbrain/k;

    iget-object v0, p0, Lcom/appbrain/a/x;->j:Lcom/appbrain/n/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appbrain/n/d;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appbrain/a/x;->j:Lcom/appbrain/n/d;

    :cond_0
    return-void
.end method

.method private y()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/x;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/appbrain/o/j;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/appbrain/a/x;->k(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/appbrain/a/x;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Landroid/content/Context;Lcom/appbrain/t/q$d;DLcom/appbrain/t/t;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/appbrain/a/x;->k(Landroid/content/Context;)V

    iget-object v2, v1, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    sget-object v3, Lcom/appbrain/a/x$f;->c:Lcom/appbrain/a/x$f;

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_a

    iget-object v2, v1, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    sget-object v3, Lcom/appbrain/a/x$f;->e:Lcom/appbrain/a/x$f;

    if-ne v2, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/appbrain/a/x;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "AppBrain"

    const-string v2, "Interstitial is already showing."

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/appbrain/a/x;->n()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-lez v9, :cond_2

    const-string v0, "AppBrain"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Interstitial will be ready again in "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v2, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v8

    :try_start_1
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " sec."

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v4, v0, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_2
    iget-object v2, v1, Lcom/appbrain/a/x;->k:Lcom/appbrain/a/x$f;

    sget-object v3, Lcom/appbrain/a/x$f;->d:Lcom/appbrain/a/x$f;

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    const-string v3, "AppBrain"

    const-string v9, "Interstitial is not yet preloaded. Preloading now."

    invoke-static {v4, v3, v9}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iput-wide v7, v1, Lcom/appbrain/a/x;->l:J

    const-string v3, "not_preloaded"

    invoke-direct {v1, v3}, Lcom/appbrain/a/x;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_8

    :cond_4
    iget-object v3, v1, Lcom/appbrain/a/x;->i:Lcom/appbrain/k;

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    const-string v4, "Wrapped listener should always be initialized"

    invoke-static {v3, v4}, Lcom/appbrain/o/i;->f(ZLjava/lang/String;)Z

    iget-object v3, v1, Lcom/appbrain/a/x;->j:Lcom/appbrain/n/d;

    if-nez v3, :cond_7

    invoke-static {}, Lcom/appbrain/a/y$a;->a()Lcom/appbrain/a/y;

    move-result-object v3

    iget-wide v7, v1, Lcom/appbrain/a/x;->l:J

    invoke-virtual {v3, v0, v7, v8}, Lcom/appbrain/a/y;->d(Lcom/appbrain/t/q$d;J)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_b

    if-eqz v2, :cond_8

    sget-object v2, Lcom/appbrain/a/x$f;->f:Lcom/appbrain/a/x$f;

    goto :goto_5

    :cond_8
    sget-object v2, Lcom/appbrain/a/x$f;->g:Lcom/appbrain/a/x$f;

    :goto_5
    invoke-direct {v1, v2}, Lcom/appbrain/a/x;->c(Lcom/appbrain/a/x$f;)V

    iget-object v8, v1, Lcom/appbrain/a/x;->h:Landroid/app/Activity;

    if-eqz v0, :cond_9

    const/4 v9, 0x1

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    :goto_6
    iget-object v10, v1, Lcom/appbrain/a/x;->b:Lcom/appbrain/a/w;

    iget-object v11, v1, Lcom/appbrain/a/x;->i:Lcom/appbrain/k;

    iget-object v12, v1, Lcom/appbrain/a/x;->j:Lcom/appbrain/n/d;

    new-instance v0, Lcom/appbrain/a/x$d;

    move-object v7, v0

    move-wide/from16 v13, p3

    move-object/from16 v15, p5

    invoke-direct/range {v7 .. v15}, Lcom/appbrain/a/x$d;-><init>(Landroid/app/Activity;ZLcom/appbrain/a/w;Lcom/appbrain/k;Lcom/appbrain/n/d;DLcom/appbrain/t/t;)V

    invoke-static {v0}, Lcom/appbrain/o/j;->c(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_a
    :goto_7
    const-string v0, "AppBrain"

    const-string v2, "Interstitial is still preloading."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_8
    const/4 v3, 0x0

    :cond_b
    :goto_9
    if-eqz v3, :cond_c

    monitor-exit p0

    return v5

    :cond_c
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/appbrain/a/x;->y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v6

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

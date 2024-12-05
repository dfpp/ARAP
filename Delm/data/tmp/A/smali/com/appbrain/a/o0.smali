.class public final Lcom/appbrain/a/o0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lcom/appbrain/o/l;

.field private volatile c:Z

.field private volatile d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/o0;->a:Ljava/util/Set;

    new-instance v0, Lcom/appbrain/o/l;

    invoke-direct {v0}, Lcom/appbrain/o/l;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/o0;->b:Lcom/appbrain/o/l;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/appbrain/a/o0;->d:J

    iput-wide v0, p0, Lcom/appbrain/a/o0;->e:J

    iput-wide v0, p0, Lcom/appbrain/a/o0;->f:J

    return-void
.end method

.method static synthetic a(Lcom/appbrain/a/o0;)J
    .locals 2

    iget-wide v0, p0, Lcom/appbrain/a/o0;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/appbrain/a/o0;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/o0;->k(Landroid/app/Activity;)V

    return-void
.end method

.method private f()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/o0;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private g(J)Z
    .locals 5

    iget-wide v0, p0, Lcom/appbrain/a/o0;->f:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/32 v2, 0x1b7740

    sub-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private h(J)V
    .locals 7

    iget-wide v0, p0, Lcom/appbrain/a/o0;->e:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/appbrain/a/o0;->h:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/appbrain/a/o0;->h:J

    iget-wide v2, p0, Lcom/appbrain/a/o0;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v2

    const-string v3, "sest_totta"

    invoke-virtual {v2, v3, v4, v5}, Lcom/appbrain/o/k0;->b(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appbrain/a/o0;->d:J

    :cond_0
    iget-wide v2, p0, Lcom/appbrain/a/o0;->d:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/appbrain/a/o0;->d:J

    new-instance v0, Lcom/appbrain/a/o0$c;

    invoke-direct {v0, p0}, Lcom/appbrain/a/o0$c;-><init>(Lcom/appbrain/a/o0;)V

    invoke-static {v0}, Lcom/appbrain/o/k;->f(Ljava/lang/Runnable;)V

    iput-wide p1, p0, Lcom/appbrain/a/o0;->e:J

    return-void
.end method

.method static synthetic j(Lcom/appbrain/a/o0;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/o0;->l(Landroid/app/Activity;)V

    return-void
.end method

.method private declared-synchronized k(Landroid/app/Activity;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/appbrain/a/o0;->f()Z

    move-result v0

    iget-object v1, p0, Lcom/appbrain/a/o0;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/appbrain/a/o0;->g:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/appbrain/a/o0;->g(J)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appbrain/a/o0;->g:J

    iput-wide v4, p0, Lcom/appbrain/a/o0;->h:J

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    iput-wide v0, p0, Lcom/appbrain/a/o0;->e:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/appbrain/a/o0;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized l(Landroid/app/Activity;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/appbrain/a/o0;->f()Z

    move-result v0

    iget-object v1, p0, Lcom/appbrain/a/o0;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/appbrain/a/o0;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/appbrain/a/o0;->h(J)V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/appbrain/a/o0;->e:J

    iput-wide v0, p0, Lcom/appbrain/a/o0;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final b(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/o0;->b:Lcom/appbrain/o/l;

    new-instance v1, Lcom/appbrain/a/o0$a;

    invoke-direct {v1, p0, p1}, Lcom/appbrain/a/o0$a;-><init>(Lcom/appbrain/a/o0;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/appbrain/o/l;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized d(Lcom/appbrain/t/j$a;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/appbrain/a/o0;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/appbrain/a/o0;->f()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/appbrain/a/o0;->h(J)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/appbrain/a/o0;->g(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-wide v3, p0, Lcom/appbrain/a/o0;->g:J

    iput-wide v3, p0, Lcom/appbrain/a/o0;->h:J

    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/appbrain/a/o0;->g:J

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/t/j$a;->Q(J)Lcom/appbrain/t/j$a;

    iget-wide v0, p0, Lcom/appbrain/a/o0;->h:J

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/t/j$a;->T(J)Lcom/appbrain/t/j$a;

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    const-string v1, "sest_totta"

    invoke-virtual {v0, v1, v3, v4}, Lcom/appbrain/o/k0;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/t/j$a;->W(J)Lcom/appbrain/t/j$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appbrain/a/o0;->c:Z

    return-void
.end method

.method public final i(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/o0;->b:Lcom/appbrain/o/l;

    new-instance v1, Lcom/appbrain/a/o0$b;

    invoke-direct {v1, p0, p1}, Lcom/appbrain/a/o0$b;-><init>(Lcom/appbrain/a/o0;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/appbrain/o/l;->e(Ljava/lang/Runnable;)V

    return-void
.end method

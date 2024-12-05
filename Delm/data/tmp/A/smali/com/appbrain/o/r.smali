.class public abstract Lcom/appbrain/o/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/t;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_timestamp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/o/r;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/appbrain/o/r;->b:J

    return-void
.end method

.method static synthetic e(Lcom/appbrain/o/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/o/r;->j()V

    return-void
.end method

.method static synthetic f(Lcom/appbrain/o/r;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/o/r;->h(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized h(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object p1, p0, Lcom/appbrain/o/r;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/appbrain/o/r;->d(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/appbrain/o/r;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/appbrain/o/f0;->d(Landroid/content/SharedPreferences$Editor;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/appbrain/o/r;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private i()V
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/o/r;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/o/r;->d:Z

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appbrain/o/r;->b(Lcom/appbrain/o/k0;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/o/r;->c:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private declared-synchronized j()V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/appbrain/o/r;->i()V

    iget-boolean v0, p0, Lcom/appbrain/o/r;->e:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/o/r;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appbrain/o/k0;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gtz v5, :cond_1

    iget-wide v5, p0, Lcom/appbrain/o/r;->b:J

    sub-long/2addr v2, v5

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/appbrain/o/r;->e:Z

    new-instance v0, Lcom/appbrain/o/r$b;

    invoke-direct {v0, p0}, Lcom/appbrain/o/r$b;-><init>(Lcom/appbrain/o/r;)V

    invoke-virtual {p0, v0}, Lcom/appbrain/o/r;->g(Lcom/appbrain/o/o0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/appbrain/o/r;->i()V

    iget-object v0, p0, Lcom/appbrain/o/r;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b(Lcom/appbrain/o/k0;)Ljava/lang/Object;
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    new-instance v1, Lcom/appbrain/o/r$a;

    invoke-direct {v1, p0}, Lcom/appbrain/o/r$a;-><init>(Lcom/appbrain/o/r;)V

    invoke-virtual {v0, v1}, Lcom/appbrain/o/f0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract d(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
.end method

.method protected abstract g(Lcom/appbrain/o/o0;)V
.end method

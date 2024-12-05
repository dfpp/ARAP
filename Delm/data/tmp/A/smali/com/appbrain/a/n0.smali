.class public Lcom/appbrain/a/n0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/n0$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/appbrain/a/t;

.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appbrain/a/t;

    invoke-direct {v0}, Lcom/appbrain/a/t;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/n0;->a:Lcom/appbrain/a/t;

    new-instance v0, Lcom/appbrain/a/m0$a;

    invoke-static {}, Lcom/appbrain/t/v;->R()Lcom/appbrain/q/a0;

    move-result-object v1

    const-string v2, "SendAppEvents"

    invoke-direct {v0, v2, v1}, Lcom/appbrain/a/m0$a;-><init>(Ljava/lang/String;Lcom/appbrain/q/a0;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/n0;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/n0;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appbrain/a/n0;)Lcom/appbrain/a/t;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/n0;->a:Lcom/appbrain/a/t;

    return-object p0
.end method

.method public static b()Lcom/appbrain/a/n0;
    .locals 1

    invoke-static {}, Lcom/appbrain/a/n0$c;->a()Lcom/appbrain/a/n0;

    move-result-object v0

    return-object v0
.end method

.method static c(Ljava/lang/String;Lcom/appbrain/t/m;Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/t/v$a;
    .locals 1

    invoke-static {}, Lcom/appbrain/t/v;->L()Lcom/appbrain/t/v$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/t/v$a;->z(Ljava/lang/String;)Lcom/appbrain/t/v$a;

    invoke-virtual {v0, p1}, Lcom/appbrain/t/v$a;->y(Lcom/appbrain/t/m;)Lcom/appbrain/t/v$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/appbrain/t/v$a;->A(J)Lcom/appbrain/t/v$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/appbrain/t/v$a;->w(J)Lcom/appbrain/t/v$a;

    invoke-virtual {v0, p2}, Lcom/appbrain/t/v$a;->B(Ljava/lang/String;)Lcom/appbrain/t/v$a;

    invoke-virtual {v0, p3}, Lcom/appbrain/t/v$a;->D(Ljava/lang/String;)Lcom/appbrain/t/v$a;

    return-object v0
.end method

.method static synthetic d(Lcom/appbrain/a/n0;JLjava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/appbrain/a/n0$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/appbrain/a/n0$b;-><init>(Lcom/appbrain/a/n0;JLjava/lang/Runnable;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/appbrain/o/k;->a([Ljava/lang/Object;)Lcom/appbrain/o/k;

    return-void
.end method

.method private declared-synchronized j()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/n0;->b:Ljava/util/List;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/appbrain/t/v;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/t/v;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/appbrain/a/w0;->c()Lcom/appbrain/a/w0;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/appbrain/a/w0;->d(Lcom/appbrain/t/v;)Lcom/appbrain/t/e;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    :try_start_2
    const-string v4, "Empty response saving SendAppEvent"

    invoke-static {v4}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/appbrain/a/n0;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method static synthetic k(Lcom/appbrain/a/n0;)Z
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/n0;->j()Z

    move-result p0

    return p0
.end method


# virtual methods
.method final e(Lcom/appbrain/t/v$a;)V
    .locals 1

    invoke-virtual {p1}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/v;

    iget-object v0, p0, Lcom/appbrain/a/n0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    new-instance v1, Lcom/appbrain/a/n0$a;

    invoke-direct {v1, p0, p1}, Lcom/appbrain/a/n0$a;-><init>(Lcom/appbrain/a/n0;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/appbrain/o/f0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method final g(Ljava/lang/String;Lcom/appbrain/t/m;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/appbrain/a/n0;->c(Ljava/lang/String;Lcom/appbrain/t/m;Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/t/v$a;

    move-result-object p1

    sget-object p3, Lcom/appbrain/t/m;->f:Lcom/appbrain/t/m;

    if-ne p2, p3, :cond_0

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Lcom/appbrain/t/v$a;->v()Lcom/appbrain/t/v$a;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/appbrain/a/n0;->e(Lcom/appbrain/t/v$a;)V

    return-void
.end method

.method final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/n0;->a:Lcom/appbrain/a/t;

    invoke-virtual {v0, p1, p2, p3}, Lcom/appbrain/a/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Lcom/appbrain/a/i1;->c(J)V

    return-void
.end method

.method final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v2, Lcom/appbrain/t/m;->g:Lcom/appbrain/t/m;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/appbrain/a/n0;->g(Ljava/lang/String;Lcom/appbrain/t/m;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Lcom/appbrain/a/i1;->c(J)V

    return-void
.end method

.method final l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v2, Lcom/appbrain/t/m;->j:Lcom/appbrain/t/m;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/appbrain/a/n0;->g(Ljava/lang/String;Lcom/appbrain/t/m;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Lcom/appbrain/a/i1;->c(J)V

    return-void
.end method

.class public final Lcom/appbrain/a/q0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static g:Lcom/appbrain/a/q0;


# instance fields
.field private final a:Lcom/appbrain/o/l;

.field private b:J

.field private c:J

.field private d:Ljava/util/Map;

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appbrain/o/l;

    invoke-direct {v0}, Lcom/appbrain/o/l;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/q0;->a:Lcom/appbrain/o/l;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/appbrain/a/q0;->b:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/appbrain/a/q0;->c:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/q0;->d:Ljava/util/Map;

    new-instance v0, Lcom/appbrain/a/q0$d;

    invoke-direct {v0, p0}, Lcom/appbrain/a/q0$d;-><init>(Lcom/appbrain/a/q0;)V

    iput-object v0, p0, Lcom/appbrain/a/q0;->e:Ljava/lang/Runnable;

    new-instance v0, Lcom/appbrain/a/q0$e;

    invoke-direct {v0, p0}, Lcom/appbrain/a/q0$e;-><init>(Lcom/appbrain/a/q0;)V

    iput-object v0, p0, Lcom/appbrain/a/q0;->f:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/appbrain/a/q0;->d:Ljava/util/Map;

    sget-object v1, Lcom/appbrain/t/d;->f:Lcom/appbrain/t/d;

    invoke-virtual {v1}, Lcom/appbrain/t/d;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a()Lcom/appbrain/a/q0;
    .locals 2

    const-class v0, Lcom/appbrain/a/q0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appbrain/a/q0;->g:Lcom/appbrain/a/q0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appbrain/a/q0;

    invoke-direct {v1}, Lcom/appbrain/a/q0;-><init>()V

    sput-object v1, Lcom/appbrain/a/q0;->g:Lcom/appbrain/a/q0;

    :cond_0
    sget-object v1, Lcom/appbrain/a/q0;->g:Lcom/appbrain/a/q0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Lcom/appbrain/t/d;)Lcom/appbrain/t/c$a;
    .locals 3

    invoke-static {}, Lcom/appbrain/t/c;->S()Lcom/appbrain/t/c$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appbrain/t/d;->c()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/appbrain/t/c$a;->y(I)Lcom/appbrain/t/c$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/t/c$a;->w(J)Lcom/appbrain/t/c$a;

    return-object v0
.end method

.method static synthetic c(Lcom/appbrain/a/q0;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/q0;->d:Ljava/util/Map;

    return-object p0
.end method

.method private d(J)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-static {}, Lcom/appbrain/a/q0;->r()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    invoke-static {v0, v1}, Lcom/appbrain/a/q0;->k(J)V

    invoke-direct {p0}, Lcom/appbrain/a/q0;->q()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/appbrain/a/q0;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appbrain/a/q0;->d(J)V

    return-void
.end method

.method static synthetic h(Lcom/appbrain/t/h;)V
    .locals 0

    invoke-static {p0}, Lcom/appbrain/a/q0;->m(Lcom/appbrain/t/h;)V

    return-void
.end method

.method private static k(J)V
    .locals 2

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "update_ping_deadline"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/appbrain/o/f0;->d(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static synthetic l(Lcom/appbrain/a/q0;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/q0;->q()V

    return-void
.end method

.method private static m(Lcom/appbrain/t/h;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.appbrain.ping"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/appbrain/q/a;->k(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic o(Lcom/appbrain/a/q0;)V
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lcom/appbrain/a/q0;->k(J)V

    iput-wide v0, p0, Lcom/appbrain/a/q0;->b:J

    invoke-static {}, Lcom/appbrain/a/q0;->s()Lcom/appbrain/t/h;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/appbrain/a/r0;->c()Lcom/appbrain/a/r0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appbrain/a/r0;->d(Lcom/appbrain/t/h;)Lcom/appbrain/t/e;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/appbrain/a/q0;->m(Lcom/appbrain/t/h;)V

    iget-wide v0, p0, Lcom/appbrain/a/q0;->c:J

    invoke-direct {p0, v0, v1}, Lcom/appbrain/a/q0;->d(J)V

    iget-wide v0, p0, Lcom/appbrain/a/q0;->c:J

    long-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/a/q0;->c:J

    return-void

    :cond_0
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/appbrain/a/q0;->c:J

    :try_start_1
    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    move-result-object p0

    invoke-virtual {v1}, Lcom/appbrain/t/e;->M()Lcom/appbrain/t/f;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/appbrain/a/l1;->f(Lcom/appbrain/t/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Lcom/appbrain/t/h;->Q()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/a/l1;->n()V

    :cond_1
    return-void
.end method

.method static synthetic p()Lcom/appbrain/t/h$a;
    .locals 1

    invoke-static {}, Lcom/appbrain/a/q0;->t()Lcom/appbrain/t/h;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appbrain/t/h;->R()Lcom/appbrain/t/h$a;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v0

    check-cast v0, Lcom/appbrain/t/h$a;

    return-object v0
.end method

.method private q()V
    .locals 6

    invoke-static {}, Lcom/appbrain/a/q0;->r()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/appbrain/a/q0;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iput-wide v0, p0, Lcom/appbrain/a/q0;->b:J

    const-wide/16 v2, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/appbrain/a/q0;->a:Lcom/appbrain/o/l;

    iget-object v3, p0, Lcom/appbrain/a/q0;->f:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Lcom/appbrain/o/l;->f(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private static r()J
    .locals 4

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    const-string v1, "update_ping_deadline"

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3}, Lcom/appbrain/o/k0;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static s()Lcom/appbrain/t/h;
    .locals 3

    invoke-static {}, Lcom/appbrain/a/q0;->t()Lcom/appbrain/t/h;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.appbrain.ping"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private static t()Lcom/appbrain/t/h;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.appbrain.ping"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lcom/appbrain/t/h;->L(Ljava/io/InputStream;)Lcom/appbrain/t/h;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final f(Lcom/appbrain/t/c$a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/c;

    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, p1, v0, v1}, Lcom/appbrain/a/q0;->g(Lcom/appbrain/t/c;J)V

    return-void
.end method

.method public final g(Lcom/appbrain/t/c;J)V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/q0;->a:Lcom/appbrain/o/l;

    new-instance v1, Lcom/appbrain/a/q0$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/appbrain/a/q0$b;-><init>(Lcom/appbrain/a/q0;Lcom/appbrain/t/c;J)V

    invoke-virtual {v0, v1}, Lcom/appbrain/o/l;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/q0;->a:Lcom/appbrain/o/l;

    new-instance v1, Lcom/appbrain/a/q0$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/appbrain/a/q0$c;-><init>(Lcom/appbrain/a/q0;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/appbrain/o/l;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/q0;->a:Lcom/appbrain/o/l;

    iget-object v1, p0, Lcom/appbrain/a/q0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/appbrain/o/l;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/q0;->a:Lcom/appbrain/o/l;

    new-instance v1, Lcom/appbrain/a/q0$a;

    invoke-direct {v1, p0}, Lcom/appbrain/a/q0$a;-><init>(Lcom/appbrain/a/q0;)V

    invoke-virtual {v0, v1}, Lcom/appbrain/o/l;->e(Ljava/lang/Runnable;)V

    return-void
.end method

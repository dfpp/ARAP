.class public Lcom/appbrain/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/KeepClass;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/c$i;,
        Lcom/appbrain/a/c$j;,
        Lcom/appbrain/a/c$h;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/appbrain/a/c$h;

.field private final c:Z

.field private final d:Lcom/appbrain/t/w$a;

.field private final e:Lcom/appbrain/b;

.field private volatile f:Lcom/appbrain/a/c$j;

.field private g:J

.field private h:Lcom/appbrain/a/c$i;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLcom/appbrain/a/c$h;Lcom/appbrain/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/appbrain/t/w;->X()Lcom/appbrain/t/w$a;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/c;->d:Lcom/appbrain/t/w$a;

    sget-object v0, Lcom/appbrain/a/c$j;->b:Lcom/appbrain/a/c$j;

    iput-object v0, p0, Lcom/appbrain/a/c;->f:Lcom/appbrain/a/c$j;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appbrain/a/c;->h:Lcom/appbrain/a/c$i;

    iput-object p1, p0, Lcom/appbrain/a/c;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/appbrain/a/c;->b:Lcom/appbrain/a/c$h;

    iput-boolean p2, p0, Lcom/appbrain/a/c;->c:Z

    iput-object p4, p0, Lcom/appbrain/a/c;->e:Lcom/appbrain/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    return-void
.end method

.method static synthetic a(Lcom/appbrain/a/c;Lcom/appbrain/a/c$i;)Lcom/appbrain/a/c$i;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/c;->h:Lcom/appbrain/a/c$i;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/appbrain/t/n;
    .locals 0

    invoke-static {p0}, Lcom/appbrain/a/c;->b(Ljava/lang/String;)Lcom/appbrain/t/n;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/appbrain/a/c;)Lcom/appbrain/t/w$a;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/c;->d:Lcom/appbrain/t/w$a;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Lcom/appbrain/t/n;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/appbrain/t/n;->O(Ljava/io/InputStream;)Lcom/appbrain/t/n;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error decoding imp data "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    throw p0
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/c;->f:Lcom/appbrain/a/c$j;

    sget-object v1, Lcom/appbrain/a/c$j;->e:Lcom/appbrain/a/c$j;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/c;->d:Lcom/appbrain/t/w$a;

    invoke-virtual {v0}, Lcom/appbrain/t/w$a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/c;->d:Lcom/appbrain/t/w$a;

    invoke-virtual {v0}, Lcom/appbrain/t/w$a;->D()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/c;->d:Lcom/appbrain/t/w$a;

    invoke-virtual {v0}, Lcom/appbrain/t/w$a;->D()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nosend"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/appbrain/a/c;)Z
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/c;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/appbrain/a/c;)Lcom/appbrain/a/c$h;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/c;->b:Lcom/appbrain/a/c$h;

    return-object p0
.end method

.method static synthetic d(Lcom/appbrain/a/c;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/c;->a:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 7

    iget-object v0, p0, Lcom/appbrain/a/c;->f:Lcom/appbrain/a/c$j;

    sget-object v1, Lcom/appbrain/a/c$j;->b:Lcom/appbrain/a/c$j;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/appbrain/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/appbrain/a/c;->f:Lcom/appbrain/a/c$j;

    sget-object v1, Lcom/appbrain/a/c$j;->d:Lcom/appbrain/a/c$j;

    if-ne v0, v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    sget-object v0, Lcom/appbrain/a/c$j;->d:Lcom/appbrain/a/c$j;

    iput-object v0, p0, Lcom/appbrain/a/c;->f:Lcom/appbrain/a/c$j;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/appbrain/a/c;->c:Z

    if-eqz v0, :cond_4

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/appbrain/a/c;->g:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/appbrain/a/c;->g:J

    sub-long/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/appbrain/a/c;->d:Lcom/appbrain/t/w$a;

    invoke-virtual {v2, v0, v1}, Lcom/appbrain/t/w$a;->w(J)Lcom/appbrain/t/w$a;

    :cond_4
    iget-object v0, p0, Lcom/appbrain/a/c;->d:Lcom/appbrain/t/w$a;

    invoke-virtual {v0}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v0

    check-cast v0, Lcom/appbrain/t/w;

    new-instance v1, Lcom/appbrain/a/c$g;

    invoke-direct {v1, p0, v0}, Lcom/appbrain/a/c$g;-><init>(Lcom/appbrain/a/c;Lcom/appbrain/t/w;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/appbrain/o/k;->a([Ljava/lang/Object;)Lcom/appbrain/o/k;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public appClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v7, Lcom/appbrain/a/c$c;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/appbrain/a/c$c;-><init>(Lcom/appbrain/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v7}, Lcom/appbrain/o/j;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/appbrain/a/c$e;

    invoke-direct {v0, p0}, Lcom/appbrain/a/c$e;-><init>(Lcom/appbrain/a/c;)V

    invoke-static {v0}, Lcom/appbrain/o/j;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public debugLog(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public getAdIdString()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appbrain/a/c;->e:Lcom/appbrain/b;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appbrain/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/16 v0, 0xbe

    return v0
.end method

.method public getShowableOffers()Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-class v0, Lcom/appbrain/a/c$i;

    iget-object v1, p0, Lcom/appbrain/a/c;->f:Lcom/appbrain/a/c$j;

    sget-object v2, Lcom/appbrain/a/c$j;->b:Lcom/appbrain/a/c$j;

    if-eq v1, v2, :cond_0

    const-string v0, "false"

    return-object v0

    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sget-object v3, Lcom/appbrain/o/s0$a;->h:Lcom/appbrain/o/s0$a;

    invoke-static {v3, v1}, Lcom/appbrain/o/s0;->a(Lcom/appbrain/o/s0$a;I)I

    move-result v1

    aget v1, v2, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    monitor-enter v0

    :catch_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/appbrain/a/c;->h:Lcom/appbrain/a/c$i;

    if-nez v4, :cond_1

    int-to-long v4, v1

    add-long/2addr v4, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    :try_start_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/appbrain/a/c;->h:Lcom/appbrain/a/c$i;

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/a/l1;->p()V

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/appbrain/a/c$i;->d:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/appbrain/a/c;->d:Lcom/appbrain/t/w$a;

    iget-object v2, v0, Lcom/appbrain/a/c$i;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/appbrain/t/w$a;->y(Ljava/lang/Iterable;)Lcom/appbrain/t/w$a;

    iget-object v1, p0, Lcom/appbrain/a/c;->d:Lcom/appbrain/t/w$a;

    iget v2, v0, Lcom/appbrain/a/c$i;->c:I

    invoke-virtual {v1, v2}, Lcom/appbrain/t/w$a;->B(I)Lcom/appbrain/t/w$a;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, v0, Lcom/appbrain/a/c$i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/appbrain/a/c;->d:Lcom/appbrain/t/w$a;

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Lcom/appbrain/t/w$a;->z(Ljava/lang/String;)Lcom/appbrain/t/w$a;

    const-string v0, "false"

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appbrain/a/c;->g:J

    sget-object v1, Lcom/appbrain/a/c$j;->c:Lcom/appbrain/a/c$j;

    iput-object v1, p0, Lcom/appbrain/a/c;->f:Lcom/appbrain/a/c$j;

    iget-boolean v1, p0, Lcom/appbrain/a/c;->c:Z

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/appbrain/a/c;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/appbrain/a/c$b;

    invoke-direct {v1, p0}, Lcom/appbrain/a/c$b;-><init>(Lcom/appbrain/a/c;)V

    invoke-static {v1}, Lcom/appbrain/o/k;->f(Ljava/lang/Runnable;)V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3

    nop

    :array_0
    .array-data 4
        0x1f4
        0x44c
        0x8fc
        0x1388
    .end array-data
.end method

.method public openInBrowser(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/appbrain/a/c;->a:Landroid/app/Activity;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/appbrain/a/h0;->j(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setImpressionParams(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-object v0, Lcom/appbrain/o/s0$a;->i:Lcom/appbrain/o/s0$a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/appbrain/o/s0;->a(Lcom/appbrain/o/s0$a;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    new-instance v7, Lcom/appbrain/a/c$a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/appbrain/a/c$a;-><init>(Lcom/appbrain/a/c;Ljava/lang/String;ZJ)V

    if-eqz v6, :cond_1

    invoke-static {v7}, Lcom/appbrain/o/j;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {v7}, Lcom/appbrain/o/k;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNoTracking()V
    .locals 1

    sget-object v0, Lcom/appbrain/a/c$j;->e:Lcom/appbrain/a/c$j;

    iput-object v0, p0, Lcom/appbrain/a/c;->f:Lcom/appbrain/a/c$j;

    return-void
.end method

.method public setVisibleAppIndex(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/appbrain/a/c$d;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/a/c$d;-><init>(Lcom/appbrain/a/c;I)V

    invoke-static {v0}, Lcom/appbrain/o/j;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showOfferWall()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/appbrain/a/c$f;

    invoke-direct {v0, p0}, Lcom/appbrain/a/c$f;-><init>(Lcom/appbrain/a/c;)V

    invoke-static {v0}, Lcom/appbrain/o/j;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startDebugLog()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

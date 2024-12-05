.class public Lcom/appbrain/o/v;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation


# static fields
.field private static a:Lcom/appbrain/o/v;

.field private static volatile b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-void
.end method

.method public static declared-synchronized e()Lcom/appbrain/o/v;
    .locals 3

    const-class v0, Lcom/appbrain/o/v;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appbrain/o/v;->a:Lcom/appbrain/o/v;

    if-nez v1, :cond_9

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/appbrain/o/e0;

    invoke-direct {v1}, Lcom/appbrain/o/e0;-><init>()V

    :goto_0
    sput-object v1, Lcom/appbrain/o/v;->a:Lcom/appbrain/o/v;

    goto/16 :goto_1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    new-instance v1, Lcom/appbrain/o/d0;

    invoke-direct {v1}, Lcom/appbrain/o/d0;-><init>()V

    goto :goto_0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_2

    new-instance v1, Lcom/appbrain/o/c0;

    invoke-direct {v1}, Lcom/appbrain/o/c0;-><init>()V

    goto :goto_0

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3

    new-instance v1, Lcom/appbrain/o/b0;

    invoke-direct {v1}, Lcom/appbrain/o/b0;-><init>()V

    goto :goto_0

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_4

    new-instance v1, Lcom/appbrain/o/a0;

    invoke-direct {v1}, Lcom/appbrain/o/a0;-><init>()V

    goto :goto_0

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_5

    new-instance v1, Lcom/appbrain/o/z;

    invoke-direct {v1}, Lcom/appbrain/o/z;-><init>()V

    goto :goto_0

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_6

    new-instance v1, Lcom/appbrain/o/y;

    invoke-direct {v1}, Lcom/appbrain/o/y;-><init>()V

    goto :goto_0

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_7

    new-instance v1, Lcom/appbrain/o/x;

    invoke-direct {v1}, Lcom/appbrain/o/x;-><init>()V

    goto :goto_0

    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_8

    new-instance v1, Lcom/appbrain/o/w;

    invoke-direct {v1}, Lcom/appbrain/o/w;-><init>()V

    goto :goto_0

    :cond_8
    new-instance v1, Lcom/appbrain/o/v;

    invoke-direct {v1}, Lcom/appbrain/o/v;-><init>()V

    goto :goto_0

    :cond_9
    :goto_1
    sget-object v1, Lcom/appbrain/o/v;->a:Lcom/appbrain/o/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0

    new-instance p2, Landroid/app/Notification$Builder;

    invoke-direct {p2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    :goto_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    :cond_1
    return-object v0
.end method

.method public d(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public f(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public h(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public i(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public j(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method public k()I
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    mul-long v1, v1, v3

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    const-wide/32 v3, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v1, v0

    return v1

    :catchall_0
    const/4 v0, -0x1

    return v0
.end method

.method public l(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/webkit/WebView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 p1, 0x0

    aput-object p1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebSettings;

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    const-string p1, "http.agent"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public o(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "Problem getting screenflags from pm"

    invoke-static {v0, p1}, Lcom/appbrain/o/i;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final p(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/appbrain/o/v;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/appbrain/o/v;->q(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/appbrain/o/v;->b:Ljava/lang/Boolean;

    :cond_0
    sget-object p1, Lcom/appbrain/o/v;->b:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected q(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

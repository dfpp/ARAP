.class public final Lcom/appbrain/o/h0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/o/h0$b;,
        Lcom/appbrain/o/h0$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;

.field private static b:J

.field public static c:Lcom/appbrain/o/h0$a;

.field private static d:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/appbrain/o/h0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/appbrain/o/h0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/o/h0$b;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    invoke-static {v0}, Lcom/appbrain/o/h0$b;->a(Lcom/appbrain/o/h0$b;)J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, p0

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    invoke-static {v0}, Lcom/appbrain/o/h0$b;->d(Lcom/appbrain/o/h0$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/appbrain/o/h0$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/appbrain/o/h0$b;-><init>(B)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/appbrain/o/h0$b;->b(Lcom/appbrain/o/h0$b;J)J

    const-string p1, "market://details?id=com.google.android.gm"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_0
    const-string v2, "com.android.vending"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_3
    invoke-static {p0, v1}, Lcom/appbrain/o/h0$b;->c(Lcom/appbrain/o/h0$b;Ljava/lang/String;)Ljava/lang/String;

    sget-object p1, Lcom/appbrain/o/h0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/appbrain/o/h0$b;->d(Lcom/appbrain/o/h0$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Ljava/util/List;
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-class v2, Lcom/appbrain/o/h0;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/appbrain/o/h0;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-wide v3, Lcom/appbrain/o/h0;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/32 v5, 0xea60

    sub-long v5, v0, v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/appbrain/o/h0;->a:Ljava/util/List;

    sget-object v4, Lcom/appbrain/o/h0;->c:Lcom/appbrain/o/h0$a;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    :cond_1
    sput-wide v0, Lcom/appbrain/o/h0;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v1, Lcom/appbrain/o/h0;->c:Lcom/appbrain/o/h0$a;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/appbrain/o/h0;->c:Lcom/appbrain/o/h0$a;

    invoke-interface {v1, v0}, Lcom/appbrain/o/h0$a;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object v0, Lcom/appbrain/o/h0;->a:Ljava/util/List;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_3
    return-object v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/appbrain/o/h0;->g(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d()Landroid/content/pm/PackageManager;
    .locals 1

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    invoke-static {p0}, Lcom/appbrain/o/h0;->g(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/appbrain/o/g0;->b(Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    const/high16 p0, 0x10000000

    :try_start_1
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-void
.end method

.method private static g(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v1, Lcom/appbrain/o/h0;->c:Lcom/appbrain/o/h0$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/appbrain/o/h0$a;->a(Ljava/lang/Throwable;)V

    :catch_0
    :cond_0
    return-object v0
.end method

.class public final Lcom/appbrain/a/x0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/x0$d;,
        Lcom/appbrain/a/x0$c;
    }
.end annotation


# static fields
.field private static c:Lcom/appbrain/a/x0;


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private volatile b:Lcom/appbrain/a/x0$c;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/appbrain/a/x0;->a:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/appbrain/a/x0$a;

    invoke-direct {v0, p0}, Lcom/appbrain/a/x0$a;-><init>(Lcom/appbrain/a/x0;)V

    invoke-static {v0}, Lcom/appbrain/o/k;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method static declared-synchronized b()Lcom/appbrain/a/x0;
    .locals 2

    const-class v0, Lcom/appbrain/a/x0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appbrain/a/x0;->c:Lcom/appbrain/a/x0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appbrain/a/x0;

    invoke-direct {v1}, Lcom/appbrain/a/x0;-><init>()V

    sput-object v1, Lcom/appbrain/a/x0;->c:Lcom/appbrain/a/x0;

    :cond_0
    sget-object v1, Lcom/appbrain/a/x0;->c:Lcom/appbrain/a/x0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method static synthetic d(Lcom/appbrain/a/x0;)V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appbrain/a/x0$d;->a(Landroid/content/Context;)Lcom/appbrain/a/x0$c;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    const-wide/16 v1, 0x1f4

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    :try_start_2
    invoke-direct {p0}, Lcom/appbrain/a/x0;->e()Lcom/appbrain/a/x0$c;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    iput-object v0, p0, Lcom/appbrain/a/x0;->b:Lcom/appbrain/a/x0$c;

    iget-object p0, p0, Lcom/appbrain/a/x0;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private e()Lcom/appbrain/a/x0$c;
    .locals 6

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/appbrain/o/h0;->d()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v3, Lcom/appbrain/a/x0$b;

    invoke-direct {v3, p0, v1}, Lcom/appbrain/a/x0$b;-><init>(Lcom/appbrain/a/x0;Ljava/util/concurrent/LinkedBlockingQueue;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.google.android.gms"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    new-instance v2, Lcom/appbrain/a/x0$c;

    invoke-static {v1}, Lcom/appbrain/a/x0;->c(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/appbrain/a/x0;->f(Landroid/os/IBinder;)Z

    move-result v1

    invoke-direct {v2, v4, v1}, Lcom/appbrain/a/x0$c;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error connecting to Google Play Services"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f(Landroid/os/IBinder;)Z
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {p0, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method


# virtual methods
.method public final a(ILjava/util/concurrent/TimeUnit;)Lcom/appbrain/a/x0$c;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/x0;->a:Ljava/util/concurrent/CountDownLatch;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/appbrain/a/x0;->b:Lcom/appbrain/a/x0$c;

    return-object p1
.end method

.class Lb/a/a/a/b;
.super Lb/a/a/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/a/b$b;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Landroid/content/Context;

.field private c:Lb/b/a/b/a/a;

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/a/b;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/a/b;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic e(Lb/a/a/a/b;Lb/b/a/b/a/a;)Lb/b/a/b/a/a;
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b;->c:Lb/b/a/b/a/a;

    return-object p1
.end method

.method static synthetic f(Lb/a/a/a/b;I)I
    .locals 0

    iput p1, p0, Lb/a/a/a/b;->a:I

    return p1
.end method

.method private g()Z
    .locals 4

    iget-object v0, p0, Lb/a/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.android.vending"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x4d17ab4

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lb/a/a/a/b;->a:I

    iget-object v0, p0, Lb/a/a/a/b;->d:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "InstallReferrerClient"

    const-string v2, "Unbinding from service."

    invoke-static {v0, v2}, Lb/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lb/a/a/a/b;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lb/a/a/a/b;->d:Landroid/content/ServiceConnection;

    :cond_0
    iput-object v1, p0, Lb/a/a/a/b;->c:Lb/b/a/b/a/a;

    return-void
.end method

.method public b()Lb/a/a/a/d;
    .locals 3

    invoke-virtual {p0}, Lb/a/a/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lb/a/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lb/a/a/a/d;

    iget-object v2, p0, Lb/a/a/a/b;->c:Lb/b/a/b/a/a;

    invoke-interface {v2, v0}, Lb/b/a/b/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/a/d;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "InstallReferrerClient"

    const-string v2, "RemoteException getting install referrer information"

    invoke-static {v1, v2}, Lb/a/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lb/a/a/a/b;->a:I

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service not connected. Please start a connection before using the service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lb/a/a/a/c;)V
    .locals 8

    invoke-virtual {p0}, Lb/a/a/a/b;->h()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "InstallReferrerClient"

    if-eqz v0, :cond_0

    const-string v0, "Service connection is valid. No need to re-initialize."

    invoke-static {v2, v0}, Lb/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lb/a/a/a/c;->a(I)V

    return-void

    :cond_0
    iget v0, p0, Lb/a/a/a/b;->a:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    const-string v0, "Client is already in the process of connecting to the service."

    invoke-static {v2, v0}, Lb/a/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lb/a/a/a/c;->a(I)V

    return-void

    :cond_1
    if-ne v0, v3, :cond_2

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v2, v0}, Lb/a/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lb/a/a/a/c;->a(I)V

    return-void

    :cond_2
    const-string v0, "Starting install referrer service setup."

    invoke-static {v2, v0}, Lb/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.vending"

    const-string v6, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lb/a/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x2

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_5

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lb/a/a/a/b;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lb/a/a/a/b$b;

    const/4 v5, 0x0

    invoke-direct {v0, p0, p1, v5}, Lb/a/a/a/b$b;-><init>(Lb/a/a/a/b;Lb/a/a/a/c;Lb/a/a/a/b$a;)V

    iput-object v0, p0, Lb/a/a/a/b;->d:Landroid/content/ServiceConnection;

    iget-object v5, p0, Lb/a/a/a/b;->b:Landroid/content/Context;

    invoke-virtual {v5, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Service was bonded successfully."

    invoke-static {v2, p1}, Lb/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "Connection to service is blocked."

    invoke-static {v2, v0}, Lb/a/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lb/a/a/a/b;->a:I

    invoke-interface {p1, v4}, Lb/a/a/a/c;->a(I)V

    return-void

    :cond_4
    const-string v0, "Play Store missing or incompatible. Version 8.3.73 or later required."

    invoke-static {v2, v0}, Lb/a/a/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lb/a/a/a/b;->a:I

    invoke-interface {p1, v6}, Lb/a/a/a/c;->a(I)V

    return-void

    :cond_5
    iput v1, p0, Lb/a/a/a/b;->a:I

    const-string v0, "Install Referrer service unavailable on device."

    invoke-static {v2, v0}, Lb/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lb/a/a/a/c;->a(I)V

    return-void
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lb/a/a/a/b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/a/a/a/b;->c:Lb/b/a/b/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/b;->d:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

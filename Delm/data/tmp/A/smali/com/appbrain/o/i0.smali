.class public final Lcom/appbrain/o/i0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/o/i0$c;
    }
.end annotation


# static fields
.field private static volatile m:Lcom/appbrain/o/i0;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/appbrain/o/o;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/appbrain/o/i0$c;

.field private final f:I

.field private final g:Landroid/os/Bundle;

.field private final h:I

.field private final i:I

.field private j:I

.field private final k:Z

.field private volatile l:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/appbrain/o/i0;->j:I

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appbrain/o/i0;->l:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/o/i0;->x()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/appbrain/o/i0;->g:Landroid/os/Bundle;

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appbrain/o/v;->p(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/appbrain/o/i0;->k:Z

    iget-object v2, p0, Lcom/appbrain/o/i0;->l:Ljava/lang/String;

    invoke-static {v2}, Lcom/appbrain/o/j0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_instant"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appbrain/o/i0;->a:Ljava/lang/String;

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    iput-object v1, p0, Lcom/appbrain/o/i0;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/o/i0;->y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appbrain/o/i0;->d:Ljava/lang/String;

    const-string v1, "flavor"

    invoke-virtual {p0, v1}, Lcom/appbrain/o/i0;->c(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/appbrain/o/i0;->z()Lcom/appbrain/o/i0$c;

    move-result-object v1

    iput-object v1, p0, Lcom/appbrain/o/i0;->e:Lcom/appbrain/o/i0$c;

    iget-object v1, p0, Lcom/appbrain/o/i0;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/appbrain/o/j0;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/appbrain/o/i0;->f:I

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/appbrain/o/i0;->a(Landroid/app/ActivityManager;)I

    move-result v1

    iput v1, p0, Lcom/appbrain/o/i0;->h:I

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    :goto_1
    iput v0, p0, Lcom/appbrain/o/i0;->i:I

    new-instance v0, Lcom/appbrain/o/h;

    new-instance v1, Lcom/appbrain/o/i0$a;

    invoke-direct {v1, p0}, Lcom/appbrain/o/i0$a;-><init>(Lcom/appbrain/o/i0;)V

    invoke-direct {v0, v1}, Lcom/appbrain/o/h;-><init>(Lcom/appbrain/o/o;)V

    iput-object v0, p0, Lcom/appbrain/o/i0;->b:Lcom/appbrain/o/o;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    new-instance v1, Lcom/appbrain/o/i0$b;

    invoke-direct {v1, p0}, Lcom/appbrain/o/i0$b;-><init>(Lcom/appbrain/o/i0;)V

    invoke-virtual {v0, v1}, Lcom/appbrain/o/f0;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Landroid/app/ActivityManager;)I
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    div-long/2addr v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p0, v2

    return p0

    :catchall_0
    :cond_1
    return v1
.end method

.method static synthetic b(Lcom/appbrain/o/i0;)Lcom/appbrain/o/o;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/i0;->b:Lcom/appbrain/o/o;

    return-object p0
.end method

.method static d()V
    .locals 1

    new-instance v0, Lcom/appbrain/o/i0;

    invoke-direct {v0}, Lcom/appbrain/o/i0;-><init>()V

    sput-object v0, Lcom/appbrain/o/i0;->m:Lcom/appbrain/o/i0;

    return-void
.end method

.method public static e()Lcom/appbrain/o/i0;
    .locals 2

    sget-object v0, Lcom/appbrain/o/i0;->m:Lcom/appbrain/o/i0;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appbrain/o/i0;->m:Lcom/appbrain/o/i0;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppProperties.get() called before init()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static k(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v1, v2}, Lcom/appbrain/o/k0;->b(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic w()I
    .locals 5

    const-string v0, "installed-since"

    invoke-static {v0}, Lcom/appbrain/o/i0;->k(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/o/f0;->d(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    return v1
.end method

.method private x()Landroid/os/Bundle;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/h0;->d()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/o/i0;->l:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, p0, Lcom/appbrain/o/i0;->j:I

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "initManifestData"

    invoke-static {v1, v0}, Lcom/appbrain/o/i;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private y()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/h0;->d()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/o/i0;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    :cond_0
    return-object v0
.end method

.method private static z()Lcom/appbrain/o/i0$c;
    .locals 4

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    move-object v2, v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_1

    move-object v3, v0

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-object v3, v0

    goto :goto_0

    :catch_1
    move-object v2, v0

    move-object v3, v2

    :catch_2
    :goto_0
    new-instance v1, Lcom/appbrain/o/i0$c;

    invoke-direct {v1, v2, v3, v0}, Lcom/appbrain/o/i0$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/i0;->g:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/appbrain/o/i0;->g:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2

    :cond_6
    return v1
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/i0;->g:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/i0;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/i0;->b:Lcom/appbrain/o/o;

    invoke-interface {v0}, Lcom/appbrain/o/o;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final j(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/i0;->g:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/i0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/appbrain/o/i0;->f:I

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/appbrain/o/i0;->j:I

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/i0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/i0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/i0;->e:Lcom/appbrain/o/i0$c;

    iget-object v0, v0, Lcom/appbrain/o/i0$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/i0;->e:Lcom/appbrain/o/i0$c;

    iget-object v0, v0, Lcom/appbrain/o/i0$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/i0;->e:Lcom/appbrain/o/i0$c;

    iget-object v0, v0, Lcom/appbrain/o/i0$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lcom/appbrain/o/i0;->h:I

    return v0
.end method

.method public final u()I
    .locals 1

    iget v0, p0, Lcom/appbrain/o/i0;->i:I

    return v0
.end method

.method public final v()Z
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/i0;->d:Ljava/lang/String;

    const-string v1, "com.android.vending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

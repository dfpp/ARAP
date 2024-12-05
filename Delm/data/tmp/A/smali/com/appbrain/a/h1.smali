.class public final Lcom/appbrain/a/h1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/h1$e;
    }
.end annotation


# static fields
.field private static final j:Lcom/appbrain/a/h1;


# instance fields
.field private final a:Lcom/appbrain/a/o0;

.field private final b:Lcom/appbrain/a/s0;

.field private final c:Lcom/appbrain/a/a0;

.field private final d:Ljava/util/Set;

.field private final e:Lcom/appbrain/o/o;

.field private volatile f:Z

.field private volatile g:Z

.field private h:Z

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/a/h1;

    invoke-direct {v0}, Lcom/appbrain/a/h1;-><init>()V

    sput-object v0, Lcom/appbrain/a/h1;->j:Lcom/appbrain/a/h1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appbrain/a/o0;

    invoke-direct {v0}, Lcom/appbrain/a/o0;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/h1;->a:Lcom/appbrain/a/o0;

    new-instance v0, Lcom/appbrain/a/s0;

    invoke-direct {v0}, Lcom/appbrain/a/s0;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/h1;->b:Lcom/appbrain/a/s0;

    new-instance v0, Lcom/appbrain/a/a0;

    invoke-direct {v0}, Lcom/appbrain/a/a0;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/h1;->c:Lcom/appbrain/a/a0;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/h1;->d:Ljava/util/Set;

    new-instance v0, Lcom/appbrain/o/h;

    new-instance v1, Lcom/appbrain/a/h1$a;

    invoke-direct {v1, p0}, Lcom/appbrain/a/h1$a;-><init>(Lcom/appbrain/a/h1;)V

    invoke-direct {v0, v1}, Lcom/appbrain/o/h;-><init>(Lcom/appbrain/o/o;)V

    iput-object v0, p0, Lcom/appbrain/a/h1;->e:Lcom/appbrain/o/o;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/a/h1;->h:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/h1;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static b()Lcom/appbrain/a/h1;
    .locals 1

    sget-object v0, Lcom/appbrain/a/h1;->j:Lcom/appbrain/a/h1;

    return-object v0
.end method

.method static synthetic c(Lcom/appbrain/a/h1;)Lcom/appbrain/o/o;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/h1;->e:Lcom/appbrain/o/o;

    return-object p0
.end method

.method static synthetic f(Lcom/appbrain/a/h1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appbrain/a/h1;->h:Z

    return p1
.end method

.method static synthetic h(Lcom/appbrain/a/h1;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appbrain/a/h1;->h:Z

    return p0
.end method

.method static synthetic i(Lcom/appbrain/a/h1;)V
    .locals 10

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-virtual {p0}, Lcom/appbrain/a/h1;->n()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1e

    const-string v0, "test_ping_interval"

    goto :goto_0

    :cond_0
    const p0, 0x15180

    const-string v0, "ping_interval"

    :goto_0
    invoke-static {v0, p0}, Lcom/appbrain/a/l1;->b(Ljava/lang/String;I)I

    move-result p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v2

    const-string v3, "last_check_ping"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/appbrain/o/k0;->b(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v6, v0

    if-lez v2, :cond_1

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/appbrain/o/f0;->d(Landroid/content/SharedPreferences$Editor;)V

    return-void

    :cond_1
    int-to-long v4, p0

    const-wide/16 v8, 0x3e8

    mul-long v4, v4, v8

    sub-long v4, v0, v4

    cmp-long p0, v6, v4

    if-gez p0, :cond_2

    invoke-static {}, Lcom/appbrain/a/q0;->a()Lcom/appbrain/a/q0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appbrain/a/q0;->n()V

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/appbrain/o/f0;->d(Landroid/content/SharedPreferences$Editor;)V

    :cond_2
    return-void
.end method

.method static synthetic k(Lcom/appbrain/a/h1;)Lcom/appbrain/a/a0;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/h1;->c:Lcom/appbrain/a/a0;

    return-object p0
.end method

.method static synthetic m(Lcom/appbrain/a/h1;)Lcom/appbrain/a/s0;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/h1;->b:Lcom/appbrain/a/s0;

    return-object p0
.end method

.method static synthetic p(Lcom/appbrain/a/h1;)Lcom/appbrain/a/o0;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/h1;->a:Lcom/appbrain/a/o0;

    return-object p0
.end method

.method static synthetic q()Z
    .locals 1

    invoke-static {}, Lcom/appbrain/a/h1;->r()Z

    move-result v0

    return v0
.end method

.method private static r()Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lcom/appbrain/a/c;

    const-string v3, "setImpressionParams"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setImpressionP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_3

    invoke-static {}, Lcom/appbrain/o/h0;->d()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v4, v6, :cond_3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v7, v2, v5

    invoke-interface {v7}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "JavascriptInterface"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :cond_2
    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_1

    :catch_0
    move v0, v3

    :catch_1
    const/4 v1, 0x6

    const-string v2, "AppBrain"

    const-string v3, "Couldn\'t find current app on the system."

    invoke-static {v1, v2, v3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :catch_2
    :goto_1
    return v1
.end method


# virtual methods
.method public final a(Lcom/appbrain/o/i$b;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/appbrain/o/i$b;->d:Lcom/appbrain/o/i$b;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/h1;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    rem-int/lit8 v2, v0, 0x64

    if-nez v2, :cond_2

    :cond_1
    const/16 v2, 0xa

    if-le v0, v2, :cond_3

    rem-int/lit8 v3, v0, 0xa

    if-eqz v3, :cond_3

    :cond_2
    return-void

    :cond_3
    sget-object v3, Lcom/appbrain/t/d;->e:Lcom/appbrain/t/d;

    invoke-static {v3}, Lcom/appbrain/a/q0;->b(Lcom/appbrain/t/d;)Lcom/appbrain/t/c$a;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/appbrain/t/c$a;->z(Ljava/lang/String;)Lcom/appbrain/t/c$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/appbrain/t/c$a;->v(I)Lcom/appbrain/t/c$a;

    if-le v0, v1, :cond_4

    const-string p1, "throttle100"

    :goto_0
    invoke-virtual {v3, p1}, Lcom/appbrain/t/c$a;->x(Ljava/lang/String;)Lcom/appbrain/t/c$a;

    goto :goto_1

    :cond_4
    if-le v0, v2, :cond_5

    const-string p1, "throttle10"

    goto :goto_0

    :cond_5
    :goto_1
    invoke-static {}, Lcom/appbrain/a/q0;->a()Lcom/appbrain/a/q0;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/appbrain/a/q0;->f(Lcom/appbrain/t/c$a;)V

    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/a/h1;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/a/h1;->e(Landroid/content/Context;Z)V

    const-string p1, "AppBrain was not initialized yet in ensureInitialized()"

    invoke-static {p1}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/content/Context;Z)V
    .locals 6

    invoke-static {p0}, Lcom/appbrain/o/i;->b(Lcom/appbrain/o/i$a;)V

    new-instance v0, Lcom/appbrain/a/h1$b;

    invoke-direct {v0, p0}, Lcom/appbrain/a/h1$b;-><init>(Lcom/appbrain/a/h1;)V

    sput-object v0, Lcom/appbrain/o/h0;->c:Lcom/appbrain/o/h0$a;

    invoke-static {p1}, Lcom/appbrain/o/a;->a(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/appbrain/a/h1;->f:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v1, p0, Lcom/appbrain/a/h1;->f:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v3, Lcom/appbrain/a/h1$c;

    invoke-direct {v3, p0}, Lcom/appbrain/a/h1$c;-><init>(Lcom/appbrain/a/h1;)V

    invoke-static {v3}, Lcom/appbrain/o/k;->f(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_0

    :goto_0
    iget-object v3, p0, Lcom/appbrain/a/h1;->a:Lcom/appbrain/a/o0;

    invoke-virtual {v3, v2}, Lcom/appbrain/a/o0;->e(Z)V

    goto :goto_1

    :cond_0
    instance-of v4, v3, Landroid/app/Application;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/appbrain/a/h1;->a:Lcom/appbrain/a/o0;

    invoke-virtual {v4, v1}, Lcom/appbrain/a/o0;->e(Z)V

    check-cast v3, Landroid/app/Application;

    new-instance v4, Lcom/appbrain/a/h1$e;

    invoke-direct {v4, p0, v2}, Lcom/appbrain/a/h1$e;-><init>(Lcom/appbrain/a/h1;B)V

    invoke-virtual {v3, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_1

    :cond_1
    const-string v3, "App context is not an Application."

    invoke-static {v3}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/appbrain/a/x0;->b()Lcom/appbrain/a/x0;

    invoke-static {p1}, Lcom/appbrain/a/s;->b(Landroid/content/Context;)Lcom/appbrain/a/s;

    invoke-static {}, Lcom/appbrain/a/t0;->m()Lcom/appbrain/a/t0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appbrain/o/r;->c()V

    invoke-static {}, Lcom/appbrain/a/q0;->a()Lcom/appbrain/a/q0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appbrain/a/q0;->j()V

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/appbrain/a/m;->b()Lcom/appbrain/a/m;

    move-result-object v3

    invoke-static {}, Lcom/appbrain/a/m1;->r()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v4

    new-instance v5, Lcom/appbrain/a/m$a;

    invoke-direct {v5, v3}, Lcom/appbrain/a/m$a;-><init>(Lcom/appbrain/a/m;)V

    invoke-virtual {v4, v5}, Lcom/appbrain/o/f0;->e(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v3, p0, Lcom/appbrain/a/h1;->e:Lcom/appbrain/o/o;

    invoke-interface {v3}, Lcom/appbrain/o/o;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/appbrain/a/h1;->d:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "AppBrain"

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "AppBrain is running in test mode for device: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v4, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "To run AppBrain in test mode on this device, call AppBrain.addTestDevice(\"%s\")."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v4, v5, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/appbrain/a/i1;->b()V

    :cond_6
    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    new-instance v1, Lcom/appbrain/a/h1$d;

    invoke-direct {v1, p0, p2, p1}, Lcom/appbrain/a/h1$d;-><init>(Lcom/appbrain/a/h1;ZLandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/appbrain/o/f0;->e(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/appbrain/a/u;->D()V

    return-void
.end method

.method public final g()Z
    .locals 3

    iget-boolean v0, p0, Lcom/appbrain/a/h1;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x6

    const-string v1, "AppBrain"

    const-string v2, "The AppBrain SDK was not automatically initialized. Please integrate the AppBrain SDK as detailed in the documentation."

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final j()Z
    .locals 3

    invoke-virtual {p0}, Lcom/appbrain/a/h1;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    const-string v0, "sdk_off"

    invoke-static {v0, v1}, Lcom/appbrain/a/l1;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/appbrain/a/h1;->g:Z

    :cond_1
    iget-boolean v0, p0, Lcom/appbrain/a/h1;->g:Z

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/a/h1;->h:Z

    return v0
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/h1;->d:Ljava/util/Set;

    iget-object v1, p0, Lcom/appbrain/a/h1;->e:Lcom/appbrain/o/o;

    invoke-interface {v1}, Lcom/appbrain/o/o;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final o()Lcom/appbrain/a/o0;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/h1;->a:Lcom/appbrain/a/o0;

    return-object v0
.end method

.class public final Lcom/appbrain/a/t0;
.super Lcom/appbrain/o/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/t0$b;,
        Lcom/appbrain/a/t0$c;
    }
.end annotation


# static fields
.field private static final f:Lcom/appbrain/a/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/a/t0;

    invoke-direct {v0}, Lcom/appbrain/a/t0;-><init>()V

    sput-object v0, Lcom/appbrain/a/t0;->f:Lcom/appbrain/a/t0;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "pref_vector"

    const-wide/32 v1, 0x36ee80

    invoke-direct {p0, v0, v1, v2}, Lcom/appbrain/o/r;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic k(Lcom/appbrain/a/t0$c;Ljava/util/List;)Lcom/appbrain/a/t0$c;
    .locals 0

    invoke-static {p0, p1}, Lcom/appbrain/a/t0;->l(Lcom/appbrain/a/t0$c;Ljava/util/List;)Lcom/appbrain/a/t0$c;

    move-result-object p0

    return-object p0
.end method

.method private static l(Lcom/appbrain/a/t0$c;Ljava/util/List;)Lcom/appbrain/a/t0$c;
    .locals 12

    new-instance v0, Lcom/appbrain/a/t0$b;

    invoke-virtual {p0}, Lcom/appbrain/a/t0$c;->a()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/appbrain/a/t0$b;-><init>(J)V

    invoke-static {}, Lcom/appbrain/o/h0;->d()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    :try_start_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/appbrain/a/t0$b;->c(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    const-string p1, "vectorfeed"

    invoke-static {p1, v3}, Lcom/appbrain/o/i;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lcom/appbrain/a/t0$b;->b()V

    new-instance p0, Lcom/appbrain/a/t0$c;

    invoke-static {v0}, Lcom/appbrain/a/t0$b;->a(Lcom/appbrain/a/t0$b;)J

    move-result-wide v5

    invoke-static {v0}, Lcom/appbrain/a/t0$b;->d(Lcom/appbrain/a/t0$b;)I

    move-result v7

    invoke-static {v0}, Lcom/appbrain/a/t0$b;->e(Lcom/appbrain/a/t0$b;)I

    move-result v8

    invoke-static {v0}, Lcom/appbrain/a/t0$b;->f(Lcom/appbrain/a/t0$b;)I

    move-result v9

    invoke-static {v0}, Lcom/appbrain/a/t0$b;->g(Lcom/appbrain/a/t0$b;)[I

    move-result-object v10

    const/4 v11, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/appbrain/a/t0$c;-><init>(JIII[IB)V

    return-object p0
.end method

.method public static m()Lcom/appbrain/a/t0;
    .locals 1

    sget-object v0, Lcom/appbrain/a/t0;->f:Lcom/appbrain/a/t0;

    return-object v0
.end method


# virtual methods
.method protected final synthetic b(Lcom/appbrain/o/k0;)Ljava/lang/Object;
    .locals 11

    const-string v0, "pref_ola"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/appbrain/o/k0;->b(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "pref_ac"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/o/k0;->a(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "pref_ac7"

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/o/k0;->a(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "pref_ac30"

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/o/k0;->a(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "pref_f"

    invoke-virtual {p1, v0, v1}, Lcom/appbrain/o/k0;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    const-string v3, "pref_f2"

    invoke-virtual {p1, v3, v1}, Lcom/appbrain/o/k0;->a(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v2

    aput p1, v3, v1

    move-object v9, v3

    goto :goto_1

    :cond_0
    new-array p1, v1, [I

    aput v0, p1, v2

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    :goto_0
    move-object v9, p1

    :goto_1
    new-instance p1, Lcom/appbrain/a/t0$c;

    const/4 v10, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/appbrain/a/t0$c;-><init>(JIII[IB)V

    return-object p1
.end method

.method protected final synthetic d(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lcom/appbrain/a/t0$c;

    invoke-static {p2}, Lcom/appbrain/a/t0$c;->b(Lcom/appbrain/a/t0$c;)J

    move-result-wide v0

    const-string v2, "pref_ola"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Lcom/appbrain/a/t0$c;->d(Lcom/appbrain/a/t0$c;)I

    move-result v0

    const-string v1, "pref_ac"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Lcom/appbrain/a/t0$c;->f(Lcom/appbrain/a/t0$c;)I

    move-result v0

    const-string v1, "pref_ac7"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Lcom/appbrain/a/t0$c;->h(Lcom/appbrain/a/t0$c;)I

    move-result v0

    const-string v1, "pref_ac30"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Lcom/appbrain/a/t0$c;->j(Lcom/appbrain/a/t0$c;)[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-static {p2}, Lcom/appbrain/a/t0$c;->j(Lcom/appbrain/a/t0$c;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const-string v1, "pref_f"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-static {p2}, Lcom/appbrain/a/t0$c;->j(Lcom/appbrain/a/t0$c;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-static {p2}, Lcom/appbrain/a/t0$c;->j(Lcom/appbrain/a/t0$c;)[I

    move-result-object p2

    aget p2, p2, v1

    const-string v0, "pref_f2"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    return-void
.end method

.method protected final g(Lcom/appbrain/o/o0;)V
    .locals 2

    invoke-virtual {p0}, Lcom/appbrain/o/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/a/t0$c;

    new-instance v1, Lcom/appbrain/a/t0$a;

    invoke-direct {v1, p0, p1, v0}, Lcom/appbrain/a/t0$a;-><init>(Lcom/appbrain/a/t0;Lcom/appbrain/o/o0;Lcom/appbrain/a/t0$c;)V

    invoke-static {v1}, Lcom/appbrain/o/k;->f(Ljava/lang/Runnable;)V

    return-void
.end method

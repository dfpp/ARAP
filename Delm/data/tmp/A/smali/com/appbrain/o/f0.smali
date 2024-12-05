.class public final Lcom/appbrain/o/f0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/o/f0$d;,
        Lcom/appbrain/o/f0$c;,
        Lcom/appbrain/o/f0$b;
    }
.end annotation


# static fields
.field private static final g:Lcom/appbrain/o/f0;


# instance fields
.field private final a:Lcom/appbrain/o/f0$b;

.field private final b:Lcom/appbrain/o/f0$b;

.field private final c:Lcom/appbrain/o/f0$b;

.field private final d:Lcom/appbrain/o/f0$c;

.field private final e:Lcom/appbrain/o/f0$c;

.field private volatile f:Lcom/appbrain/o/f0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/o/f0;

    invoke-direct {v0}, Lcom/appbrain/o/f0;-><init>()V

    sput-object v0, Lcom/appbrain/o/f0;->g:Lcom/appbrain/o/f0;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appbrain/o/f0$b;

    const-string v1, "ab_sdk_pref"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/appbrain/o/f0$b;-><init>(Lcom/appbrain/o/f0;Ljava/lang/String;B)V

    iput-object v0, p0, Lcom/appbrain/o/f0;->a:Lcom/appbrain/o/f0$b;

    new-instance v0, Lcom/appbrain/o/f0$b;

    const-string v1, "ab_pref_int"

    invoke-direct {v0, p0, v1, v2}, Lcom/appbrain/o/f0$b;-><init>(Lcom/appbrain/o/f0;Ljava/lang/String;B)V

    iput-object v0, p0, Lcom/appbrain/o/f0;->b:Lcom/appbrain/o/f0$b;

    new-instance v0, Lcom/appbrain/o/f0$b;

    const-string v1, "ab_pref_ext"

    invoke-direct {v0, p0, v1, v2}, Lcom/appbrain/o/f0$b;-><init>(Lcom/appbrain/o/f0;Ljava/lang/String;B)V

    iput-object v0, p0, Lcom/appbrain/o/f0;->c:Lcom/appbrain/o/f0$b;

    new-instance v0, Lcom/appbrain/o/f0$c;

    invoke-direct {v0, p0, v2}, Lcom/appbrain/o/f0$c;-><init>(Lcom/appbrain/o/f0;B)V

    iput-object v0, p0, Lcom/appbrain/o/f0;->d:Lcom/appbrain/o/f0$c;

    new-instance v0, Lcom/appbrain/o/f0$c;

    invoke-direct {v0, p0, v2}, Lcom/appbrain/o/f0$c;-><init>(Lcom/appbrain/o/f0;B)V

    iput-object v0, p0, Lcom/appbrain/o/f0;->e:Lcom/appbrain/o/f0$c;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sget-object v0, Lcom/appbrain/o/f0$d;->b:Lcom/appbrain/o/f0$d;

    iput-object v0, p0, Lcom/appbrain/o/f0;->f:Lcom/appbrain/o/f0$d;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$d;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/f0;->f:Lcom/appbrain/o/f0$d;

    return-object p0
.end method

.method static synthetic b(Lcom/appbrain/o/f0;Lcom/appbrain/o/f0$d;)Lcom/appbrain/o/f0$d;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/f0;->f:Lcom/appbrain/o/f0$d;

    return-object p1
.end method

.method public static c()Lcom/appbrain/o/f0;
    .locals 1

    sget-object v0, Lcom/appbrain/o/f0;->g:Lcom/appbrain/o/f0;

    return-object v0
.end method

.method public static d(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    invoke-static {}, Lcom/appbrain/o/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic f(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$b;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/f0;->a:Lcom/appbrain/o/f0$b;

    return-object p0
.end method

.method static synthetic i(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$b;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/f0;->b:Lcom/appbrain/o/f0$b;

    return-object p0
.end method

.method static synthetic l(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$b;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/f0;->c:Lcom/appbrain/o/f0$b;

    return-object p0
.end method

.method static synthetic n(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$c;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/f0;->d:Lcom/appbrain/o/f0$c;

    return-object p0
.end method

.method static synthetic p(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$c;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/f0;->e:Lcom/appbrain/o/f0$c;

    return-object p0
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/f0;->f:Lcom/appbrain/o/f0$d;

    sget-object v1, Lcom/appbrain/o/f0$d;->b:Lcom/appbrain/o/f0$d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "AppBrainPrefs init not called"

    invoke-static {v0, v1}, Lcom/appbrain/o/i;->i(ZLjava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/o/f0;->q()V

    iget-object v0, p0, Lcom/appbrain/o/f0;->d:Lcom/appbrain/o/f0$c;

    invoke-static {v0, p1}, Lcom/appbrain/o/f0$c;->c(Lcom/appbrain/o/f0$c;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/appbrain/o/j;->i(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final g()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/f0;->f:Lcom/appbrain/o/f0$d;

    sget-object v1, Lcom/appbrain/o/f0$d;->b:Lcom/appbrain/o/f0$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "multi-call to AppBrainPrefs.init()?"

    invoke-static {v0, v1}, Lcom/appbrain/o/i;->i(ZLjava/lang/String;)Z

    sget-object v0, Lcom/appbrain/o/f0$d;->c:Lcom/appbrain/o/f0$d;

    iput-object v0, p0, Lcom/appbrain/o/f0;->f:Lcom/appbrain/o/f0$d;

    new-instance v0, Lcom/appbrain/o/f0$a;

    invoke-direct {v0, p0}, Lcom/appbrain/o/f0$a;-><init>(Lcom/appbrain/o/f0;)V

    invoke-static {v0}, Lcom/appbrain/o/k;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/o/f0;->q()V

    iget-object v0, p0, Lcom/appbrain/o/f0;->e:Lcom/appbrain/o/f0$c;

    invoke-static {v0, p1}, Lcom/appbrain/o/f0$c;->c(Lcom/appbrain/o/f0$c;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/appbrain/o/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/appbrain/o/k;->f(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public final j()Lcom/appbrain/o/k0;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/f0;->a:Lcom/appbrain/o/f0$b;

    invoke-static {v0}, Lcom/appbrain/o/f0$b;->d(Lcom/appbrain/o/f0$b;)Lcom/appbrain/o/k0;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/o/f0;->q()V

    iget-object v0, p0, Lcom/appbrain/o/f0;->d:Lcom/appbrain/o/f0$c;

    invoke-static {v0, p1}, Lcom/appbrain/o/f0$c;->c(Lcom/appbrain/o/f0$c;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final m()Lcom/appbrain/o/k0;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/f0;->b:Lcom/appbrain/o/f0$b;

    invoke-static {v0}, Lcom/appbrain/o/f0$b;->d(Lcom/appbrain/o/f0$b;)Lcom/appbrain/o/k0;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lcom/appbrain/o/k0;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/f0;->c:Lcom/appbrain/o/f0$b;

    invoke-static {v0}, Lcom/appbrain/o/f0$b;->d(Lcom/appbrain/o/f0$b;)Lcom/appbrain/o/k0;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/appbrain/a/w0;
.super Lcom/appbrain/u/c;
.source ""


# static fields
.field private static f:Lcom/appbrain/a/w0;


# instance fields
.field private final e:Lcom/appbrain/a/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Lcom/appbrain/a/k;->c:Lcom/appbrain/o/p;

    invoke-direct {p0, v0}, Lcom/appbrain/u/c;-><init>(Lcom/appbrain/o/p;)V

    new-instance v0, Lcom/appbrain/a/v0;

    invoke-direct {v0}, Lcom/appbrain/a/v0;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/w0;->e:Lcom/appbrain/a/j0;

    return-void
.end method

.method public static declared-synchronized c()Lcom/appbrain/a/w0;
    .locals 2

    const-class v0, Lcom/appbrain/a/w0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appbrain/a/w0;->f:Lcom/appbrain/a/w0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appbrain/a/w0;

    invoke-direct {v1}, Lcom/appbrain/a/w0;-><init>()V

    sput-object v1, Lcom/appbrain/a/w0;->f:Lcom/appbrain/a/w0;

    :cond_0
    sget-object v1, Lcom/appbrain/a/w0;->f:Lcom/appbrain/a/w0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private g(Lcom/appbrain/q/q;Ljava/lang/String;Lcom/appbrain/q/a0;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/appbrain/u/c;->b(Lcom/appbrain/q/q;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p3, p1}, Lcom/appbrain/q/a0;->c([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final a(Lcom/appbrain/q/q;Ljava/lang/String;)Lcom/appbrain/v/b$a;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/w0;->e:Lcom/appbrain/a/j0;

    invoke-virtual {v0, p1, p2}, Lcom/appbrain/a/j0;->e(Lcom/appbrain/q/q;Ljava/lang/String;)Lcom/appbrain/v/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/appbrain/t/v;)Lcom/appbrain/t/e;
    .locals 2

    invoke-static {}, Lcom/appbrain/t/e;->N()Lcom/appbrain/q/a0;

    move-result-object v0

    const-string v1, "ev"

    invoke-direct {p0, p1, v1, v0}, Lcom/appbrain/a/w0;->g(Lcom/appbrain/q/q;Ljava/lang/String;Lcom/appbrain/q/a0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/e;

    return-object p1
.end method

.method public final e(Lcom/appbrain/t/w;)Lcom/appbrain/t/e;
    .locals 2

    invoke-static {}, Lcom/appbrain/t/e;->N()Lcom/appbrain/q/a0;

    move-result-object v0

    const-string v1, "ai"

    invoke-direct {p0, p1, v1, v0}, Lcom/appbrain/a/w0;->g(Lcom/appbrain/q/q;Ljava/lang/String;Lcom/appbrain/q/a0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/e;

    return-object p1
.end method

.method public final f(Lcom/appbrain/t/s;)Lcom/appbrain/t/n;
    .locals 2

    invoke-static {}, Lcom/appbrain/t/n;->m0()Lcom/appbrain/q/a0;

    move-result-object v0

    const-string v1, "ba"

    invoke-direct {p0, p1, v1, v0}, Lcom/appbrain/a/w0;->g(Lcom/appbrain/q/q;Ljava/lang/String;Lcom/appbrain/q/a0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/n;

    return-object p1
.end method

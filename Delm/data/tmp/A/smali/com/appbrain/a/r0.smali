.class public final Lcom/appbrain/a/r0;
.super Lcom/appbrain/u/c;
.source ""


# static fields
.field private static f:Lcom/appbrain/a/r0;


# instance fields
.field private final e:Lcom/appbrain/a/j0;


# direct methods
.method constructor <init>()V
    .locals 1

    sget-object v0, Lcom/appbrain/a/k;->a:Lcom/appbrain/o/p;

    invoke-direct {p0, v0}, Lcom/appbrain/u/c;-><init>(Lcom/appbrain/o/p;)V

    new-instance v0, Lcom/appbrain/a/r0$a;

    invoke-direct {v0, p0}, Lcom/appbrain/a/r0$a;-><init>(Lcom/appbrain/a/r0;)V

    iput-object v0, p0, Lcom/appbrain/a/r0;->e:Lcom/appbrain/a/j0;

    return-void
.end method

.method public static declared-synchronized c()Lcom/appbrain/a/r0;
    .locals 2

    const-class v0, Lcom/appbrain/a/r0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appbrain/a/r0;->f:Lcom/appbrain/a/r0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appbrain/a/r0;

    invoke-direct {v1}, Lcom/appbrain/a/r0;-><init>()V

    sput-object v1, Lcom/appbrain/a/r0;->f:Lcom/appbrain/a/r0;

    :cond_0
    sget-object v1, Lcom/appbrain/a/r0;->f:Lcom/appbrain/a/r0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected final a(Lcom/appbrain/q/q;Ljava/lang/String;)Lcom/appbrain/v/b$a;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/r0;->e:Lcom/appbrain/a/j0;

    invoke-virtual {v0, p1, p2}, Lcom/appbrain/a/j0;->e(Lcom/appbrain/q/q;Ljava/lang/String;)Lcom/appbrain/v/b$a;

    move-result-object p1

    return-object p1
.end method

.method final d(Lcom/appbrain/t/h;)Lcom/appbrain/t/e;
    .locals 1

    const-string v0, "up"

    invoke-virtual {p0, p1, v0}, Lcom/appbrain/u/c;->b(Lcom/appbrain/q/q;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/appbrain/t/e;->L([B)Lcom/appbrain/t/e;

    move-result-object p1

    return-object p1
.end method

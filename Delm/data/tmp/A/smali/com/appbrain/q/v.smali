.class public Lcom/appbrain/q/v;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/appbrain/q/j;

.field private b:Lcom/appbrain/q/n;

.field protected volatile c:Lcom/appbrain/q/x;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/appbrain/q/n;->a()Lcom/appbrain/q/n;

    return-void
.end method

.method private c(Lcom/appbrain/q/x;)V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/q/v;->c:Lcom/appbrain/q/x;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/q/v;->c:Lcom/appbrain/q/x;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/appbrain/q/v;->a:Lcom/appbrain/q/j;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/appbrain/q/x;->f()Lcom/appbrain/q/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/q/v;->a:Lcom/appbrain/q/j;

    iget-object v2, p0, Lcom/appbrain/q/v;->b:Lcom/appbrain/q/n;

    invoke-interface {v0, v1, v2}, Lcom/appbrain/q/a0;->a(Lcom/appbrain/q/j;Lcom/appbrain/q/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/q/x;

    iput-object v0, p0, Lcom/appbrain/q/v;->c:Lcom/appbrain/q/x;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/appbrain/q/v;->c:Lcom/appbrain/q/x;

    sget-object p1, Lcom/appbrain/q/j;->c:Lcom/appbrain/q/j;
    :try_end_1
    .catch Lcom/appbrain/q/t; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/appbrain/q/v;->c:Lcom/appbrain/q/x;

    sget-object p1, Lcom/appbrain/q/j;->c:Lcom/appbrain/q/j;

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Lcom/appbrain/q/x;)Lcom/appbrain/q/x;
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/q/v;->c(Lcom/appbrain/q/x;)V

    iget-object p1, p0, Lcom/appbrain/q/v;->c:Lcom/appbrain/q/x;

    return-object p1
.end method

.method public final b(Lcom/appbrain/q/x;)Lcom/appbrain/q/x;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/q/v;->c:Lcom/appbrain/q/x;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appbrain/q/v;->a:Lcom/appbrain/q/j;

    iput-object p1, p0, Lcom/appbrain/q/v;->c:Lcom/appbrain/q/x;

    return-object v0
.end method

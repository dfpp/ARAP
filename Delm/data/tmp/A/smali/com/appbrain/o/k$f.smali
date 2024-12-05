.class final Lcom/appbrain/o/k$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field final a:Ljava/util/LinkedList;

.field b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/appbrain/o/k$f;->a:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/o/k$f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/o/k$f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/appbrain/o/k$f;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appbrain/o/k;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/o/k$f;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/o/k$f;->a:Ljava/util/LinkedList;

    new-instance v1, Lcom/appbrain/o/k$f$a;

    invoke-direct {v1, p0, p1}, Lcom/appbrain/o/k$f$a;-><init>(Lcom/appbrain/o/k$f;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/appbrain/o/k$f;->b:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/appbrain/o/k$f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.class public abstract Lcom/appbrain/o/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/o/k$h;,
        Lcom/appbrain/o/k$g;,
        Lcom/appbrain/o/k$f;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/concurrent/ThreadFactory;

.field public static final g:Ljava/util/concurrent/ExecutorService;

.field private static volatile h:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final a:Lcom/appbrain/o/k$h;

.field private final b:Ljava/util/concurrent/FutureTask;

.field private volatile c:Lcom/appbrain/o/k$g;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appbrain/o/k$a;

    invoke-direct {v0}, Lcom/appbrain/o/k$a;-><init>()V

    sput-object v0, Lcom/appbrain/o/k;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/v;->n()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lcom/appbrain/o/k;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/appbrain/o/k;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/appbrain/o/k$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appbrain/o/k$f;-><init>(B)V

    sget-object v0, Lcom/appbrain/o/k;->g:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lcom/appbrain/o/k;->h:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/appbrain/o/k$g;->b:Lcom/appbrain/o/k$g;

    iput-object v0, p0, Lcom/appbrain/o/k;->c:Lcom/appbrain/o/k$g;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/appbrain/o/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/appbrain/o/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/appbrain/o/k$b;

    invoke-direct {v0, p0}, Lcom/appbrain/o/k$b;-><init>(Lcom/appbrain/o/k;)V

    iput-object v0, p0, Lcom/appbrain/o/k;->a:Lcom/appbrain/o/k$h;

    new-instance v0, Lcom/appbrain/o/k$c;

    iget-object v1, p0, Lcom/appbrain/o/k;->a:Lcom/appbrain/o/k$h;

    invoke-direct {v0, p0, v1}, Lcom/appbrain/o/k$c;-><init>(Lcom/appbrain/o/k;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/appbrain/o/k;->b:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic c(Lcom/appbrain/o/k;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/o/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/appbrain/o/k;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static f(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/appbrain/o/k;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/appbrain/o/j;->a:Landroid/os/Handler;

    new-instance v1, Lcom/appbrain/o/k$d;

    invoke-direct {v1, p0, p1}, Lcom/appbrain/o/k$d;-><init>(Lcom/appbrain/o/k;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1
.end method

.method static synthetic h()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/appbrain/o/k;->h:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic i(Lcom/appbrain/o/k;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/k;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/appbrain/o/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/appbrain/o/k;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/appbrain/o/k;->e(Ljava/lang/Object;)V

    :cond_0
    sget-object p1, Lcom/appbrain/o/k$g;->d:Lcom/appbrain/o/k$g;

    iput-object p1, p0, Lcom/appbrain/o/k;->c:Lcom/appbrain/o/k$g;

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Lcom/appbrain/o/k;
    .locals 3

    sget-object v0, Lcom/appbrain/o/k;->h:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/appbrain/o/k;->c:Lcom/appbrain/o/k$g;

    sget-object v2, Lcom/appbrain/o/k$g;->b:Lcom/appbrain/o/k$g;

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/appbrain/o/k$e;->a:[I

    iget-object v2, p0, Lcom/appbrain/o/k;->c:Lcom/appbrain/o/k$g;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot execute task: the task is already running."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    sget-object v1, Lcom/appbrain/o/k$g;->c:Lcom/appbrain/o/k$g;

    iput-object v1, p0, Lcom/appbrain/o/k;->c:Lcom/appbrain/o/k$g;

    iget-object v1, p0, Lcom/appbrain/o/k;->a:Lcom/appbrain/o/k$h;

    iput-object p1, v1, Lcom/appbrain/o/k$h;->a:[Ljava/lang/Object;

    iget-object p1, p0, Lcom/appbrain/o/k;->b:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method protected varargs abstract b()Ljava/lang/Object;
.end method

.method protected abstract e(Ljava/lang/Object;)V
.end method

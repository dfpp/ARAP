.class final Lcom/appbrain/o/f0$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field final synthetic b:Lcom/appbrain/o/f0;


# direct methods
.method private constructor <init>(Lcom/appbrain/o/f0;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/f0$c;->b:Lcom/appbrain/o/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/appbrain/o/f0$c;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appbrain/o/f0;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/o/f0$c;-><init>(Lcom/appbrain/o/f0;)V

    return-void
.end method

.method private declared-synchronized a()Ljava/util/List;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/appbrain/o/f0$c;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/appbrain/o/f0$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/appbrain/o/f0$c;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/o/f0$c;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/appbrain/o/f0$c;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/o/f0$c;->d(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized d(Ljava/lang/Runnable;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/o/f0$c;->b:Lcom/appbrain/o/f0;

    invoke-static {v0}, Lcom/appbrain/o/f0;->a(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$d;

    move-result-object v0

    sget-object v1, Lcom/appbrain/o/f0$d;->d:Lcom/appbrain/o/f0$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/appbrain/o/f0$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

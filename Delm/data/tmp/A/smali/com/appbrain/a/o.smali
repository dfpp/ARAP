.class final Lcom/appbrain/a/o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/o$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appbrain/a/o$a;

    invoke-direct {v0, p0}, Lcom/appbrain/a/o$a;-><init>(Lcom/appbrain/a/o;)V

    iput-object v0, p0, Lcom/appbrain/a/o;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/a/o$b;

    invoke-static {v1}, Lcom/appbrain/a/o$b;->a(Lcom/appbrain/a/o$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/appbrain/a/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/a/o$b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/appbrain/a/o$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appbrain/a/o$b;-><init>(B)V

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/appbrain/a/o$b;->b(Lcom/appbrain/a/o$b;)V

    :goto_1
    iget-object v1, p0, Lcom/appbrain/a/o;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method final declared-synchronized b(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized c(Ljava/lang/Object;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/a/o;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/a/o$b;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/appbrain/a/o$b;->a(Lcom/appbrain/a/o$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/appbrain/a/o$b;->c(Lcom/appbrain/a/o$b;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

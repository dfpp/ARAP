.class public Lcom/appbrain/o/l0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/o/l0$a;,
        Lcom/appbrain/o/l0$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Lcom/appbrain/o/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appbrain/o/l0;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/o/l0;)Lcom/appbrain/o/r0;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/l0;->b:Lcom/appbrain/o/r0;

    return-object p0
.end method

.method static synthetic c(Lcom/appbrain/o/l0;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/o/l0;->a:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lcom/appbrain/o/o0;)V
    .locals 4

    iget-object v0, p0, Lcom/appbrain/o/l0;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appbrain/o/l0;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/appbrain/o/l0;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/appbrain/o/l0$a;

    invoke-direct {p2, p0, p1}, Lcom/appbrain/o/l0$a;-><init>(Lcom/appbrain/o/l0;Ljava/lang/String;)V

    new-array p1, v2, [Ljava/lang/Void;

    const/4 v1, 0x0

    aput-object v1, p1, v3

    invoke-virtual {p2, p1}, Lcom/appbrain/o/k;->a([Ljava/lang/Object;)Lcom/appbrain/o/k;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

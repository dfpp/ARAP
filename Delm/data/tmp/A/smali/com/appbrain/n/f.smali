.class public final Lcom/appbrain/n/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final c:Lcom/appbrain/n/f;


# instance fields
.field private final a:Ljava/util/Set;

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/n/f;

    invoke-direct {v0}, Lcom/appbrain/n/f;-><init>()V

    sput-object v0, Lcom/appbrain/n/f;->c:Lcom/appbrain/n/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/appbrain/n/f;->a:Ljava/util/Set;

    return-void
.end method

.method public static a()Lcom/appbrain/n/f;
    .locals 1

    sget-object v0, Lcom/appbrain/n/f;->c:Lcom/appbrain/n/f;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized b(Lcom/appbrain/b;)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/appbrain/a/l1;->d()Lcom/appbrain/a/l1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/a/l1;->i()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/appbrain/n/f;->b:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    iput-wide v1, p0, Lcom/appbrain/n/f;->b:J

    iget-object v1, p0, Lcom/appbrain/n/f;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-static {}, Lcom/appbrain/a/l1;->d()Lcom/appbrain/a/l1;

    const-string v1, "medadids"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/appbrain/a/l1;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/appbrain/b;->e(Ljava/lang/String;)Lcom/appbrain/b;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/appbrain/n/f;->a:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/appbrain/n/f;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

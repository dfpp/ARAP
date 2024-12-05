.class public Lcom/appbrain/n/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/n/i$b;,
        Lcom/appbrain/n/i$c;,
        Lcom/appbrain/n/i$d;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "i"

.field private static g:Lcom/appbrain/n/i;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Lcom/appbrain/a/d0;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ab_mediation_evs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/n/i;->b:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/appbrain/a/d0;->c()Lcom/appbrain/a/d0;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/n/i;->c:Lcom/appbrain/a/d0;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/n/i;)Lcom/appbrain/a/d0;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/i;->c:Lcom/appbrain/a/d0;

    return-object p0
.end method

.method public static declared-synchronized b()Lcom/appbrain/n/i;
    .locals 2

    const-class v0, Lcom/appbrain/n/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appbrain/n/i;->g:Lcom/appbrain/n/i;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appbrain/n/i;

    invoke-direct {v1}, Lcom/appbrain/n/i;-><init>()V

    sput-object v1, Lcom/appbrain/n/i;->g:Lcom/appbrain/n/i;

    invoke-direct {v1}, Lcom/appbrain/n/i;->q()V

    :cond_0
    sget-object v1, Lcom/appbrain/n/i;->g:Lcom/appbrain/n/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic d(Lcom/appbrain/a/d0;Ljava/util/List;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lcom/appbrain/n/i;->m(Lcom/appbrain/a/d0;Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private e(Lcom/appbrain/n/i$c;)V
    .locals 3

    iget-object v0, p1, Lcom/appbrain/n/i$c;->d:Lcom/appbrain/n/i$d;

    sget-object v1, Lcom/appbrain/n/i$d;->d:Lcom/appbrain/n/i$d;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/appbrain/n/i$d;->e:Lcom/appbrain/n/i$d;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/appbrain/n/i$c;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/appbrain/n/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p1, Lcom/appbrain/n/i$c;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object p1, p1, Lcom/appbrain/n/i$c;->d:Lcom/appbrain/n/i$d;

    sget-object v0, Lcom/appbrain/n/i$d;->e:Lcom/appbrain/n/i$d;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/appbrain/n/i;->t()V

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/appbrain/n/i;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->k(Ljava/util/Set;)V

    return-void
.end method

.method private declared-synchronized k(Ljava/util/Set;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/appbrain/n/i;->d:Z

    iget-object v1, p0, Lcom/appbrain/n/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appbrain/n/i$c;

    invoke-virtual {v2}, Lcom/appbrain/n/i$c;->h()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, v2, Lcom/appbrain/n/i$c;->c:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/appbrain/n/i;->e:Z

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lcom/appbrain/n/i;->e:Z

    invoke-direct {p0}, Lcom/appbrain/n/i;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
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

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appbrain/n/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static m(Lcom/appbrain/a/d0;Ljava/util/List;)Ljava/util/Set;
    .locals 8

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Lcom/appbrain/p/j;->L()Lcom/appbrain/p/j$a;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x20

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appbrain/n/i$b;

    iget-object v7, v6, Lcom/appbrain/n/i$b;->a:Lcom/appbrain/p/b;

    invoke-virtual {v1, v7}, Lcom/appbrain/p/j$a;->v(Lcom/appbrain/p/b;)Lcom/appbrain/p/j$a;

    iget-object v6, v6, Lcom/appbrain/n/i$b;->b:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v1

    check-cast v1, Lcom/appbrain/p/j;

    invoke-virtual {p0, v1}, Lcom/appbrain/a/d0;->e(Lcom/appbrain/p/j;)Lcom/appbrain/p/h;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/appbrain/r/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private declared-synchronized q()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/n/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/appbrain/n/i$c;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/n/i$c;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/appbrain/n/i$c;->h()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v2, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v1, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appbrain/n/i$c;

    iget-object v3, v3, Lcom/appbrain/n/i$c;->c:Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0}, Lcom/appbrain/n/i;->t()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private t()V
    .locals 9

    iget-boolean v0, p0, Lcom/appbrain/n/i;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/appbrain/n/i;->e:Z

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appbrain/n/i$c;

    iget-object v4, v3, Lcom/appbrain/n/i$c;->d:Lcom/appbrain/n/i$d;

    sget-object v5, Lcom/appbrain/n/i$d;->e:Lcom/appbrain/n/i$d;

    if-eq v4, v5, :cond_2

    sget-object v5, Lcom/appbrain/n/i$d;->d:Lcom/appbrain/n/i$d;

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/appbrain/n/i$c;->c()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/appbrain/n/i$c;->g()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    :cond_2
    invoke-virtual {v3}, Lcom/appbrain/n/i$c;->j()Lcom/appbrain/n/i$b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iput-boolean v1, p0, Lcom/appbrain/n/i;->d:Z

    new-instance v1, Lcom/appbrain/n/i$a;

    invoke-direct {v1, p0, v0}, Lcom/appbrain/n/i$a;-><init>(Lcom/appbrain/n/i;Ljava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/appbrain/o/k;->a([Ljava/lang/Object;)Lcom/appbrain/o/k;

    :cond_4
    return-void
.end method

.method private v(Ljava/lang/String;)Lcom/appbrain/n/i$c;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/n/i$c;

    iget-object v1, v1, Lcom/appbrain/n/i$c;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/n/i$c;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method final declared-synchronized c(Lcom/appbrain/b;Lcom/appbrain/t/l$a;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/appbrain/n/a;->b(Lcom/appbrain/b;Lcom/appbrain/t/l$a;)Lcom/appbrain/t/l;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 v0, 0x100

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/appbrain/n/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/n/i$c;

    iget-object v0, v0, Lcom/appbrain/n/i$c;->c:Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-static {p1}, Lcom/appbrain/n/i$c;->d(Lcom/appbrain/t/l;)Lcom/appbrain/n/i$c;

    move-result-object p1

    iget-object p2, p0, Lcom/appbrain/n/i;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->e(Lcom/appbrain/n/i$c;)V

    iget-object p1, p1, Lcom/appbrain/n/i$c;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized g(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->v(Ljava/lang/String;)Lcom/appbrain/n/i$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/appbrain/n/i$d;->e:Lcom/appbrain/n/i$d;

    iput-object v0, p1, Lcom/appbrain/n/i$c;->d:Lcom/appbrain/n/i$d;

    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->e(Lcom/appbrain/n/i$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized h(Ljava/lang/String;Lcom/appbrain/q/j;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->v(Ljava/lang/String;)Lcom/appbrain/n/i$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/appbrain/n/i$d;->c:Lcom/appbrain/n/i$d;

    iput-object v0, p1, Lcom/appbrain/n/i$c;->d:Lcom/appbrain/n/i$d;

    sget-object v0, Lcom/appbrain/p/f;->h:Lcom/appbrain/p/f;

    invoke-virtual {p1, p2, v0}, Lcom/appbrain/n/i$c;->f(Lcom/appbrain/q/j;Lcom/appbrain/p/f;)V

    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->e(Lcom/appbrain/n/i$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized i(Ljava/lang/String;Lcom/appbrain/q/j;Lcom/appbrain/n/h;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->v(Ljava/lang/String;)Lcom/appbrain/n/i$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p3}, Lcom/appbrain/n/h;->c()Lcom/appbrain/p/f;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/appbrain/n/i$c;->f(Lcom/appbrain/q/j;Lcom/appbrain/p/f;)V

    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->e(Lcom/appbrain/n/i$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->v(Ljava/lang/String;)Lcom/appbrain/n/i$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-virtual {v0, p2}, Lcom/appbrain/p/b$a;->A(Ljava/lang/String;)Lcom/appbrain/p/b$a;

    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->e(Lcom/appbrain/n/i$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized n(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->v(Ljava/lang/String;)Lcom/appbrain/n/i$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-virtual {v3}, Lcom/appbrain/p/b$a;->v()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/appbrain/p/b$a;->w(I)Lcom/appbrain/p/b$a;

    sget-object v0, Lcom/appbrain/n/i$d;->d:Lcom/appbrain/n/i$d;

    iput-object v0, p1, Lcom/appbrain/n/i$c;->d:Lcom/appbrain/n/i$d;

    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->e(Lcom/appbrain/n/i$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized o(Ljava/lang/String;Lcom/appbrain/q/j;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->v(Ljava/lang/String;)Lcom/appbrain/n/i$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/appbrain/p/f;->c:Lcom/appbrain/p/f;

    invoke-virtual {p1, p2, v0}, Lcom/appbrain/n/i$c;->f(Lcom/appbrain/q/j;Lcom/appbrain/p/f;)V

    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->e(Lcom/appbrain/n/i$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized p(Ljava/lang/String;Lcom/appbrain/q/j;Lcom/appbrain/n/h;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->v(Ljava/lang/String;)Lcom/appbrain/n/i$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p3}, Lcom/appbrain/n/h;->c()Lcom/appbrain/p/f;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/appbrain/n/i$c;->f(Lcom/appbrain/q/j;Lcom/appbrain/p/f;)V

    sget-object p2, Lcom/appbrain/n/i$d;->e:Lcom/appbrain/n/i$d;

    iput-object p2, p1, Lcom/appbrain/n/i$c;->d:Lcom/appbrain/n/i$d;

    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->e(Lcom/appbrain/n/i$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized r(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->v(Ljava/lang/String;)Lcom/appbrain/n/i$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-virtual {v0}, Lcom/appbrain/p/b$a;->v()J

    move-result-wide v0

    iget-object v2, p1, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-virtual {v2}, Lcom/appbrain/p/b$a;->B()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p1, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Lcom/appbrain/p/b$a;->D(I)Lcom/appbrain/p/b$a;

    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->e(Lcom/appbrain/n/i$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized s(Ljava/lang/String;Lcom/appbrain/q/j;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->v(Ljava/lang/String;)Lcom/appbrain/n/i$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/appbrain/p/f;->g:Lcom/appbrain/p/f;

    invoke-virtual {p1, p2, v0}, Lcom/appbrain/n/i$c;->f(Lcom/appbrain/q/j;Lcom/appbrain/p/f;)V

    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->e(Lcom/appbrain/n/i$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized u(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->v(Ljava/lang/String;)Lcom/appbrain/n/i$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-virtual {v0}, Lcom/appbrain/p/b$a;->v()J

    move-result-wide v0

    iget-object v2, p1, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-virtual {v2}, Lcom/appbrain/p/b$a;->B()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p1, Lcom/appbrain/n/i$c;->b:Lcom/appbrain/p/b$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v3, v0

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Lcom/appbrain/p/b$a;->C(I)Lcom/appbrain/p/b$a;

    sget-object v0, Lcom/appbrain/n/i$d;->e:Lcom/appbrain/n/i$d;

    iput-object v0, p1, Lcom/appbrain/n/i$c;->d:Lcom/appbrain/n/i$d;

    invoke-direct {p0, p1}, Lcom/appbrain/n/i;->e(Lcom/appbrain/n/i$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

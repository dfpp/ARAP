.class public Lcom/appbrain/n/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/n/g$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "g"

.field private static final e:J

.field private static final f:J

.field private static g:Lcom/appbrain/n/g;


# instance fields
.field private final a:Lcom/appbrain/a/d0;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/appbrain/n/g;->e:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/appbrain/n/g;->f:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/appbrain/a/d0;->c()Lcom/appbrain/a/d0;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/n/g;->a:Lcom/appbrain/a/d0;

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ab_mediation_cfg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/n/g;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/appbrain/n/g;->l()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/n/g;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/n/g;)Lcom/appbrain/a/d0;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/g;->a:Lcom/appbrain/a/d0;

    return-object p0
.end method

.method public static b()Lcom/appbrain/n/g;
    .locals 1

    sget-object v0, Lcom/appbrain/n/g;->g:Lcom/appbrain/n/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appbrain/n/g;

    invoke-direct {v0}, Lcom/appbrain/n/g;-><init>()V

    sput-object v0, Lcom/appbrain/n/g;->g:Lcom/appbrain/n/g;

    :cond_0
    sget-object v0, Lcom/appbrain/n/g;->g:Lcom/appbrain/n/g;

    return-object v0
.end method

.method static synthetic d(Lcom/appbrain/p/h;)V
    .locals 0

    invoke-static {p0}, Lcom/appbrain/n/g;->h(Lcom/appbrain/p/h;)V

    return-void
.end method

.method private static e(J)Z
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    invoke-static {}, Lcom/appbrain/n/g;->k()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appbrain/n/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/appbrain/n/g;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/g;->c:Ljava/util/Map;

    return-object p0
.end method

.method private static h(Lcom/appbrain/p/h;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/appbrain/p/h;->L()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/appbrain/p/h;->M(I)Lcom/appbrain/p/e;

    invoke-virtual {p0, v0}, Lcom/appbrain/p/h;->O(I)F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic i()J
    .locals 2

    invoke-static {}, Lcom/appbrain/n/g;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic j(Lcom/appbrain/n/g;)V
    .locals 6

    iget-object v0, p0, Lcom/appbrain/n/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/appbrain/n/g;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appbrain/n/g$b;

    invoke-static {v2}, Lcom/appbrain/n/g$b;->a(Lcom/appbrain/n/g$b;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/appbrain/n/g;->e(J)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/appbrain/n/g$b;->a(Lcom/appbrain/n/g$b;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/appbrain/n/g$b;->b(Lcom/appbrain/n/g$b;)Lcom/appbrain/p/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/q/a;->h()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/appbrain/o/f0;->d(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private static k()J
    .locals 2

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/h1;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/appbrain/n/g;->f:J

    return-wide v0

    :cond_0
    sget-wide v0, Lcom/appbrain/n/g;->e:J

    return-wide v0
.end method

.method private l()Ljava/util/Map;
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/appbrain/n/g;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "_"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/appbrain/n/g;->e(J)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/appbrain/p/h;->N([B)Lcom/appbrain/p/h;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Lcom/appbrain/n/g$b;

    invoke-direct {v8, v3, v5, v6, v4}, Lcom/appbrain/n/g$b;-><init>(Lcom/appbrain/p/h;JB)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final c(Lcom/appbrain/b;Lcom/appbrain/t/l$a;Lcom/appbrain/o/o0;)V
    .locals 6

    invoke-static {p1, p2}, Lcom/appbrain/n/a;->b(Lcom/appbrain/b;Lcom/appbrain/t/l$a;)Lcom/appbrain/t/l;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Lcom/appbrain/o/o0;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appbrain/b;->b()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/appbrain/n/g;->c:Ljava/util/Map;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/appbrain/n/g$b;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/appbrain/n/g$b;->a(Lcom/appbrain/n/g$b;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/appbrain/n/g;->e(J)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v3}, Lcom/appbrain/n/g$b;->b(Lcom/appbrain/n/g$b;)Lcom/appbrain/p/h;

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/n/g;->h(Lcom/appbrain/p/h;)V

    invoke-static {v3}, Lcom/appbrain/n/g$b;->b(Lcom/appbrain/n/g$b;)Lcom/appbrain/p/h;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/appbrain/o/o0;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Lcom/appbrain/n/g$a;

    move-object v0, p1

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/appbrain/n/g$a;-><init>(Lcom/appbrain/n/g;Lcom/appbrain/t/l;Lcom/appbrain/n/g$b;Ljava/lang/String;Lcom/appbrain/o/o0;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/appbrain/o/k;->a([Ljava/lang/Object;)Lcom/appbrain/o/k;

    return-void
.end method

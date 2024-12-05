.class public final Lcom/appbrain/a/y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/y$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/y;-><init>()V

    return-void
.end method

.method public static a()Lcom/appbrain/a/y;
    .locals 1

    invoke-static {}, Lcom/appbrain/a/y$a;->a()Lcom/appbrain/a/y;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;ILjava/lang/String;)Lcom/appbrain/t/q$d;
    .locals 2

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {p0, p1}, Lcom/appbrain/a/l1;->b(Ljava/lang/String;I)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p2, v0, v1}, Lcom/appbrain/a/l1;->a(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {}, Lcom/appbrain/t/q$d;->P()Lcom/appbrain/t/q$d$a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/appbrain/t/q$d$a;->w(J)Lcom/appbrain/t/q$d$a;

    invoke-virtual {p2, v0, v1}, Lcom/appbrain/t/q$d$a;->v(D)Lcom/appbrain/t/q$d$a;

    invoke-virtual {p2}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object p0

    check-cast p0, Lcom/appbrain/t/q$d;

    return-object p0
.end method

.method public static c(Lcom/appbrain/t/q$d;)Z
    .locals 1

    const-string v0, "last_intload_time"

    invoke-static {v0, p0}, Lcom/appbrain/a/y;->e(Ljava/lang/String;Lcom/appbrain/t/q$d;)Z

    move-result p0

    return p0
.end method

.method private static e(Ljava/lang/String;Lcom/appbrain/t/q$d;)Z
    .locals 10

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/h1;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/appbrain/a/m1;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/appbrain/o/k0;->b(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    invoke-virtual {v2}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/appbrain/o/f0;->d(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/appbrain/t/q$d;->L()J

    move-result-wide v2

    sub-long/2addr v7, v2

    cmp-long p0, v5, v7

    if-lez p0, :cond_3

    return v1

    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/appbrain/t/q$d;->O()D

    move-result-wide p0

    cmpg-double v4, v2, p0

    if-gez v4, :cond_4

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public static f()Lcom/appbrain/t/q$d;
    .locals 3

    const-string v0, "intldint"

    const/4 v1, 0x0

    const-string v2, "intldsam"

    invoke-static {v0, v1, v2}, Lcom/appbrain/a/y;->b(Ljava/lang/String;ILjava/lang/String;)Lcom/appbrain/t/q$d;

    move-result-object v0

    return-object v0
.end method

.method public static g()Lcom/appbrain/t/q$d;
    .locals 3

    const-string v0, "offerwall"

    const v1, 0x15180

    const-string v2, "intshsam"

    invoke-static {v0, v1, v2}, Lcom/appbrain/a/y;->b(Ljava/lang/String;ILjava/lang/String;)Lcom/appbrain/t/q$d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final declared-synchronized d(Lcom/appbrain/t/q$d;J)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "last_offer_time"

    invoke-static {v0, p1}, Lcom/appbrain/a/y;->e(Ljava/lang/String;Lcom/appbrain/t/q$d;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_intload_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "last_offer_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p2, p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-static {p2}, Lcom/appbrain/o/f0;->d(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

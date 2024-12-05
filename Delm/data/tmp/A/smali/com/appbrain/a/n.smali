.class public Lcom/appbrain/a/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/n$c;,
        Lcom/appbrain/a/n$b;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/appbrain/a/n;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/a/n;->b:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/appbrain/a/n;
    .locals 1

    invoke-static {}, Lcom/appbrain/a/n$c;->a()Lcom/appbrain/a/n;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    const-string v1, "actintevts"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/appbrain/a/l1;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    :try_start_0
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/appbrain/t/r;->L([B)Lcom/appbrain/t/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/t/r;->M()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/appbrain/q/t; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/o/f0;->j()Lcom/appbrain/o/k0;

    move-result-object v1

    invoke-static {}, Lcom/appbrain/e;->values()[Lcom/appbrain/e;

    move-result-object v2

    sget-object v3, Lcom/appbrain/e;->b:Lcom/appbrain/e;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v4, "usrcmbtr_conf"

    invoke-virtual {v1, v4, v3}, Lcom/appbrain/o/k0;->a(Ljava/lang/String;I)I

    move-result v1

    aget-object v1, v2, v1

    sget-object v2, Lcom/appbrain/e;->b:Lcom/appbrain/e;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/appbrain/e;->c:Lcom/appbrain/e;

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appbrain/t/q;

    invoke-virtual {v2}, Lcom/appbrain/t/q;->P()Lcom/appbrain/t/q$c;

    move-result-object v2

    sget-object v3, Lcom/appbrain/t/q$c;->c:Lcom/appbrain/t/q$c;

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/appbrain/e;->d:Lcom/appbrain/e;

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appbrain/t/q;

    invoke-virtual {v3}, Lcom/appbrain/t/q;->P()Lcom/appbrain/t/q$c;

    move-result-object v3

    sget-object v4, Lcom/appbrain/t/q$c;->c:Lcom/appbrain/t/q$c;

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    if-nez v1, :cond_6

    invoke-static {}, Lcom/appbrain/t/q;->f0()Lcom/appbrain/t/q$b;

    move-result-object v1

    invoke-static {}, Lcom/appbrain/t/q$f;->N()Lcom/appbrain/t/q$f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/t/q$f$a;->v()Lcom/appbrain/t/q$f$a;

    invoke-virtual {v1, v2}, Lcom/appbrain/t/q$b;->x(Lcom/appbrain/t/q$f$a;)Lcom/appbrain/t/q$b;

    sget-object v2, Lcom/appbrain/t/q$c;->c:Lcom/appbrain/t/q$c;

    invoke-virtual {v1, v2}, Lcom/appbrain/t/q$b;->w(Lcom/appbrain/t/q$c;)Lcom/appbrain/t/q$b;

    const-string v2, "event_user_comeback"

    invoke-virtual {v1, v2}, Lcom/appbrain/t/q$b;->y(Ljava/lang/String;)Lcom/appbrain/t/q$b;

    invoke-virtual {v1}, Lcom/appbrain/t/q$b;->v()Lcom/appbrain/t/q$b;

    invoke-virtual {v1}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v1

    check-cast v1, Lcom/appbrain/t/q;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unhandled config: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-object v0
.end method


# virtual methods
.method final declared-synchronized b(Landroid/content/Context;Lcom/appbrain/t/q$c;Lcom/appbrain/a/n$b;)V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, v1, Lcom/appbrain/a/n;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-wide v2, v1, Lcom/appbrain/a/n;->a:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v6, 0x7d0

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/appbrain/a/n;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appbrain/t/q;

    invoke-virtual {v2}, Lcom/appbrain/t/q;->P()Lcom/appbrain/t/q$c;

    move-result-object v3

    move-object/from16 v4, p2

    if-ne v3, v4, :cond_b

    move-object/from16 v3, p3

    invoke-interface {v3, v2}, Lcom/appbrain/a/n$b;->a(Lcom/appbrain/t/q;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Lcom/appbrain/c;

    invoke-direct {v5}, Lcom/appbrain/c;-><init>()V

    invoke-virtual {v2}, Lcom/appbrain/t/q;->a0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/appbrain/c;->h(Ljava/lang/String;)Lcom/appbrain/c;

    invoke-virtual {v2}, Lcom/appbrain/t/q;->d0()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/appbrain/t/q;->e0()I

    move-result v6

    if-ne v6, v8, :cond_2

    sget-object v6, Lcom/appbrain/c$a;->b:Lcom/appbrain/c$a;

    :goto_1
    invoke-virtual {v5, v6}, Lcom/appbrain/c;->j(Lcom/appbrain/c$a;)Lcom/appbrain/c;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/appbrain/t/q;->e0()I

    move-result v6

    if-ne v6, v7, :cond_3

    sget-object v6, Lcom/appbrain/c$a;->c:Lcom/appbrain/c$a;

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/appbrain/t/q;->U()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/appbrain/t/q;->V()Lcom/appbrain/t/q$d;

    move-result-object v6

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/appbrain/a/y$a;->a()Lcom/appbrain/a/y;

    invoke-static {}, Lcom/appbrain/a/y;->f()Lcom/appbrain/t/q$d;

    move-result-object v6

    :goto_3
    move-object v11, v6

    invoke-virtual {v2}, Lcom/appbrain/t/q;->W()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lcom/appbrain/t/q;->X()Lcom/appbrain/t/q$d;

    move-result-object v6

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/appbrain/a/y$a;->a()Lcom/appbrain/a/y;

    invoke-static {}, Lcom/appbrain/a/y;->g()Lcom/appbrain/t/q$d;

    move-result-object v6

    :goto_4
    invoke-virtual {v2}, Lcom/appbrain/t/q;->Y()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v2}, Lcom/appbrain/t/q;->Z()D

    move-result-wide v9

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/appbrain/a/m1;->a()D

    move-result-wide v9

    :goto_5
    move-wide v15, v9

    sget-object v9, Lcom/appbrain/a/n$a;->a:[I

    invoke-virtual {v2}, Lcom/appbrain/t/q;->P()Lcom/appbrain/t/q$c;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v8, :cond_8

    if-eq v9, v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Missing OfferWallSource for InterstitialEventType "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/appbrain/t/q;->P()Lcom/appbrain/t/q$c;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appbrain/o/i;->g(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    sget-object v2, Lcom/appbrain/t/t;->n:Lcom/appbrain/t/t;

    goto :goto_6

    :cond_8
    sget-object v2, Lcom/appbrain/t/t;->m:Lcom/appbrain/t/t;

    :goto_6
    move-object/from16 v17, v2

    new-instance v2, Lcom/appbrain/a/x;

    new-instance v10, Lcom/appbrain/a/w;

    invoke-direct {v10, v5}, Lcom/appbrain/a/w;-><init>(Lcom/appbrain/c;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/appbrain/a/x;-><init>(Lcom/appbrain/a/w;Lcom/appbrain/t/q$d;Lcom/appbrain/k;Ljava/lang/Runnable;Z)V

    move-object/from16 v5, p1

    invoke-virtual {v2, v5}, Lcom/appbrain/a/x;->b(Landroid/content/Context;)V

    move-object v12, v2

    move-object/from16 v13, p1

    move-object v14, v6

    invoke-virtual/range {v12 .. v17}, Lcom/appbrain/a/x;->e(Landroid/content/Context;Lcom/appbrain/t/q$d;DLcom/appbrain/t/t;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/appbrain/a/n;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_a
    move-object/from16 v5, p1

    goto/16 :goto_0

    :cond_b
    move-object/from16 v5, p1

    move-object/from16 v3, p3

    goto/16 :goto_0

    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

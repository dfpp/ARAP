.class Lcom/appbrain/a/t;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/t$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appbrain/a/m0$b;

    invoke-static {}, Lcom/appbrain/t/p;->U()Lcom/appbrain/q/a0;

    move-result-object v1

    const-string v2, "InstallTrackingMap"

    invoke-direct {v0, v2, v1}, Lcom/appbrain/a/m0$b;-><init>(Ljava/lang/String;Lcom/appbrain/q/a0;)V

    iput-object v0, p0, Lcom/appbrain/a/t;->a:Ljava/util/Map;

    return-void
.end method

.method private static b(JJ)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "&delta="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a()J
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/appbrain/a/t;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, v0, Lcom/appbrain/a/t;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide v6, 0x7fffffffffffffffL

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/appbrain/t/p;

    invoke-virtual {v8}, Lcom/appbrain/t/p;->P()J

    move-result-wide v10

    sub-long v10, v1, v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-gez v14, :cond_0

    invoke-virtual {v8}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v8

    check-cast v8, Lcom/appbrain/t/p$a;

    invoke-virtual {v8, v1, v2}, Lcom/appbrain/t/p$a;->w(J)Lcom/appbrain/t/p$a;

    invoke-virtual {v8}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v8

    check-cast v8, Lcom/appbrain/t/p;

    iget-object v10, v0, Lcom/appbrain/a/t;->a:Ljava/util/Map;

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v14, v12

    goto :goto_1

    :cond_0
    move-wide v14, v10

    :goto_1
    invoke-virtual {v8}, Lcom/appbrain/t/p;->L()I

    move-result v10

    new-instance v11, Lcom/appbrain/a/t$b;

    const/4 v4, 0x0

    invoke-direct {v11, v9, v4}, Lcom/appbrain/a/t$b;-><init>(Ljava/lang/String;B)V

    const/4 v4, 0x1

    if-nez v10, :cond_3

    invoke-static {v11}, Lcom/appbrain/a/t$b;->b(Lcom/appbrain/a/t$b;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v8}, Lcom/appbrain/t/p;->P()J

    move-result-wide v12

    invoke-static {v12, v13, v14, v15}, Lcom/appbrain/a/t;->b(JJ)Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lcom/appbrain/t/m;->d:Lcom/appbrain/t/m;

    invoke-virtual {v8}, Lcom/appbrain/t/p;->R()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10, v12, v5}, Lcom/appbrain/a/n0;->c(Ljava/lang/String;Lcom/appbrain/t/m;Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/t/v$a;

    move-result-object v5

    invoke-static {v11}, Lcom/appbrain/a/t$b;->c(Lcom/appbrain/a/t$b;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/appbrain/t/v$a;->C(J)Lcom/appbrain/t/v$a;

    invoke-static {}, Lcom/appbrain/a/n0;->b()Lcom/appbrain/a/n0;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/appbrain/a/n0;->e(Lcom/appbrain/t/v$a;)V

    invoke-virtual {v8}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v5

    check-cast v5, Lcom/appbrain/t/p$a;

    invoke-virtual {v5, v4}, Lcom/appbrain/t/p$a;->v(I)Lcom/appbrain/t/p$a;

    invoke-virtual {v5}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/appbrain/t/p;

    iget-object v4, v0, Lcom/appbrain/a/t;->a:Ljava/util/Map;

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/a/l1;->t()V

    invoke-virtual {v8}, Lcom/appbrain/t/p;->S()Ljava/lang/String;

    move-result-object v4

    const-string v5, "as"

    invoke-static {v4, v5}, Lcom/appbrain/a/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    const/16 v4, 0x384

    const-string v5, "asmd"

    invoke-static {v5, v4}, Lcom/appbrain/a/l1;->b(Ljava/lang/String;I)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v12, 0x3e8

    mul-long v4, v4, v12

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    const/16 v10, 0x3c

    const-string v12, "asmind"

    invoke-static {v12, v10}, Lcom/appbrain/a/l1;->b(Ljava/lang/String;I)I

    move-result v10

    int-to-long v12, v10

    const-wide/16 v18, 0x3e8

    mul-long v12, v12, v18

    cmp-long v10, v14, v4

    if-gez v10, :cond_2

    sub-long/2addr v12, v14

    const-wide/16 v4, 0x0

    cmp-long v10, v12, v4

    if-gtz v10, :cond_1

    invoke-static {v9}, Lcom/appbrain/o/h0;->f(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v4, Lcom/appbrain/a/t$a;

    invoke-direct {v4, v9}, Lcom/appbrain/a/t$a;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v12, v13}, Lcom/appbrain/o/j;->d(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_2
    move-wide/from16 v17, v1

    move-object/from16 v16, v11

    move-wide v1, v14

    goto :goto_3

    :cond_3
    if-ne v10, v4, :cond_2

    invoke-static {v11}, Lcom/appbrain/a/t$b;->b(Lcom/appbrain/a/t$b;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v8}, Lcom/appbrain/t/p;->P()J

    move-result-wide v4

    invoke-static {v4, v5, v14, v15}, Lcom/appbrain/a/t;->b(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/appbrain/a/n0;->b()Lcom/appbrain/a/n0;

    move-result-object v10

    sget-object v12, Lcom/appbrain/t/m;->e:Lcom/appbrain/t/m;

    invoke-virtual {v8}, Lcom/appbrain/t/p;->R()Ljava/lang/String;

    move-result-object v13

    const/4 v5, 0x0

    move-object/from16 v16, v11

    move-object v11, v9

    move-wide/from16 v17, v1

    move-wide v1, v14

    move-object v14, v4

    move v15, v5

    invoke-virtual/range {v10 .. v15}, Lcom/appbrain/a/n0;->g(Ljava/lang/String;Lcom/appbrain/t/m;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8}, Lcom/appbrain/q/q;->H()Lcom/appbrain/q/q$a;

    move-result-object v4

    check-cast v4, Lcom/appbrain/t/p$a;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/appbrain/t/p$a;->v(I)Lcom/appbrain/t/p$a;

    invoke-virtual {v4}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/appbrain/t/p;

    iget-object v4, v0, Lcom/appbrain/a/t;->a:Ljava/util/Map;

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-wide/32 v4, 0x493e0

    cmp-long v10, v1, v4

    if-gez v10, :cond_4

    const-wide/16 v4, 0x7530

    goto :goto_4

    :cond_4
    const-wide/32 v10, 0xdbba0

    cmp-long v12, v1, v10

    if-gez v12, :cond_5

    const-wide/32 v4, 0x1d4c0

    goto :goto_4

    :cond_5
    const-wide/32 v10, 0x36ee80

    cmp-long v12, v1, v10

    if-gez v12, :cond_6

    goto :goto_4

    :cond_6
    const-wide/32 v4, 0x5943900

    cmp-long v10, v1, v4

    if-gez v10, :cond_7

    const-wide/32 v4, 0x1b7740

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Lcom/appbrain/t/p;->P()J

    move-result-wide v4

    invoke-static {v4, v5, v1, v2}, Lcom/appbrain/a/t;->b(JJ)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/appbrain/a/n0;->b()Lcom/appbrain/a/n0;

    move-result-object v10

    sget-object v12, Lcom/appbrain/t/m;->f:Lcom/appbrain/t/m;

    invoke-virtual {v8}, Lcom/appbrain/t/p;->R()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v16 .. v16}, Lcom/appbrain/a/t$b;->b(Lcom/appbrain/a/t$b;)Z

    move-result v15

    move-object v11, v9

    invoke-virtual/range {v10 .. v15}, Lcom/appbrain/a/n0;->g(Ljava/lang/String;Lcom/appbrain/t/m;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v0, Lcom/appbrain/a/t;->a:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v4, 0x7fffffffffffffffL

    :goto_4
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide/from16 v1, v17

    goto/16 :goto_0

    :cond_8
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, v6, v1

    if-eqz v3, :cond_9

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    :cond_9
    cmp-long v3, v6, v1

    if-nez v3, :cond_a

    const-wide/16 v1, -0x1

    return-wide v1

    :cond_a
    return-wide v6
.end method

.method final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/appbrain/a/t;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/t/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appbrain/t/p;->L()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/appbrain/t/p;->L()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/appbrain/t/p;->L()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/appbrain/t/p;->P()J

    move-result-wide v3

    sub-long v6, v1, v3

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    move-wide v6, v8

    goto :goto_0

    :cond_2
    move-wide v1, v3

    :goto_0
    invoke-static {v1, v2, v6, v7}, Lcom/appbrain/a/t;->b(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/appbrain/a/n0;->b()Lcom/appbrain/a/n0;

    move-result-object v1

    sget-object v2, Lcom/appbrain/t/m;->i:Lcom/appbrain/t/m;

    invoke-virtual {v0}, Lcom/appbrain/t/p;->R()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/appbrain/a/n0;->g(Ljava/lang/String;Lcom/appbrain/t/m;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    invoke-static {}, Lcom/appbrain/a/n0;->b()Lcom/appbrain/a/n0;

    move-result-object v0

    sget-object v2, Lcom/appbrain/t/m;->c:Lcom/appbrain/t/m;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/appbrain/a/n0;->g(Ljava/lang/String;Lcom/appbrain/t/m;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/appbrain/a/t;->a:Ljava/util/Map;

    invoke-static {}, Lcom/appbrain/t/p;->T()Lcom/appbrain/t/p$a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/appbrain/t/p$a;->w(J)Lcom/appbrain/t/p$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appbrain/t/p$a;->v(I)Lcom/appbrain/t/p$a;

    invoke-virtual {v1, p2}, Lcom/appbrain/t/p$a;->x(Ljava/lang/String;)Lcom/appbrain/t/p$a;

    invoke-virtual {v1, p3}, Lcom/appbrain/t/p$a;->y(Ljava/lang/String;)Lcom/appbrain/t/p$a;

    invoke-virtual {v1}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v1

    check-cast v1, Lcom/appbrain/t/p;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

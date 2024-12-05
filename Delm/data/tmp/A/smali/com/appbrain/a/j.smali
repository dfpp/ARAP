.class public Lcom/appbrain/a/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile e:Lcom/appbrain/h;

.field private static volatile f:Z

.field private static g:Ljava/lang/Long;


# instance fields
.field private final a:Z

.field private b:Z

.field private c:Z

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/a/j;->c:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/appbrain/a/j;->d:Z

    iput-boolean v0, p0, Lcom/appbrain/a/j;->a:Z

    return-void
.end method

.method static a()Lcom/appbrain/a/j;
    .locals 2

    new-instance v0, Lcom/appbrain/a/j;

    invoke-direct {v0}, Lcom/appbrain/a/j;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appbrain/a/j;->b:Z

    return-object v0
.end method

.method private c(ZLjava/util/List;)Lcom/appbrain/t/j;
    .locals 11

    invoke-static {}, Lcom/appbrain/o/j;->j()V

    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-static {}, Lcom/appbrain/o/i0;->e()Lcom/appbrain/o/i0;

    move-result-object v0

    invoke-static {}, Lcom/appbrain/a/t0;->m()Lcom/appbrain/a/t0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/o/r;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/a/t0$c;

    invoke-static {}, Lcom/appbrain/a/l0;->a()Lcom/appbrain/a/l0;

    move-result-object v2

    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-static {}, Lcom/appbrain/t/j;->Z0()Lcom/appbrain/t/j$a;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/appbrain/t/j$a;->z(J)Lcom/appbrain/t/j$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/appbrain/t/j$a;->E(J)Lcom/appbrain/t/j$a;

    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appbrain/a/h1;->o()Lcom/appbrain/a/o0;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/appbrain/a/o0;->d(Lcom/appbrain/t/j$a;)V

    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-static {v3}, Lcom/appbrain/a/j;->d(Lcom/appbrain/t/j$a;)V

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v6

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/appbrain/o/v;->p(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/appbrain/t/j$a;->f0()I

    move-result v6

    or-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->t0(I)Lcom/appbrain/t/j$a;

    :cond_0
    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    iget-boolean v6, p0, Lcom/appbrain/a/j;->a:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/appbrain/a/x0;->b()Lcom/appbrain/a/x0;

    move-result-object v6

    if-eqz p1, :cond_1

    const/16 v9, 0x1f4

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    :cond_1
    const/4 v9, 0x5

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_0
    invoke-virtual {v6, v9, v10}, Lcom/appbrain/a/x0;->a(ILjava/util/concurrent/TimeUnit;)Lcom/appbrain/a/x0$c;

    move-result-object v6

    iget-boolean v9, p0, Lcom/appbrain/a/j;->c:Z

    if-eqz v9, :cond_3

    iput-boolean v7, p0, Lcom/appbrain/a/j;->c:Z

    goto :goto_1

    :cond_2
    move-object v6, v8

    :cond_3
    :goto_1
    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/appbrain/a/x0$c;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/appbrain/t/j$a;->q0(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    invoke-virtual {v6}, Lcom/appbrain/a/x0$c;->b()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/appbrain/t/j$a;->G()Lcom/appbrain/t/j$a;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/appbrain/o/i0;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->A(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    :cond_5
    :goto_2
    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/appbrain/o/i0;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->F(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    invoke-virtual {v0}, Lcom/appbrain/o/i0;->m()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->J(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    invoke-virtual {v0}, Lcom/appbrain/o/i0;->n()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->E0(I)Lcom/appbrain/t/j$a;

    invoke-virtual {v3}, Lcom/appbrain/t/j$a;->i0()Lcom/appbrain/t/j$a;

    invoke-virtual {v0}, Lcom/appbrain/o/i0;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->M(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->O(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    invoke-virtual {v0}, Lcom/appbrain/o/i0;->i()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->y(I)Lcom/appbrain/t/j$a;

    invoke-virtual {v1}, Lcom/appbrain/a/t0$c;->c()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->D(I)Lcom/appbrain/t/j$a;

    invoke-virtual {v0}, Lcom/appbrain/o/i0;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->R(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    invoke-virtual {v0}, Lcom/appbrain/o/i0;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->U(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->X(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->h0(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->a0(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->e0(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v6}, Lcom/appbrain/t/j$a;->l0(I)Lcom/appbrain/t/j$a;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/appbrain/t/j$a;->j0(I)Lcom/appbrain/t/j$a;

    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-virtual {v3}, Lcom/appbrain/t/j$a;->w()Lcom/appbrain/t/j$a;

    invoke-static {}, Lcom/appbrain/a/l1;->k()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v4}, Lcom/appbrain/t/j$a;->k0(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    :cond_6
    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-static {}, Lcom/appbrain/a/l1;->o()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/appbrain/t/j$a;->H(I)Lcom/appbrain/t/j$a;

    invoke-static {}, Lcom/appbrain/a/l1;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/appbrain/t/j$a;->K(I)Lcom/appbrain/t/j$a;

    invoke-static {}, Lcom/appbrain/a/j;->k()J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    div-long/2addr v4, v9

    invoke-virtual {v3, v4, v5}, Lcom/appbrain/t/j$a;->I(J)Lcom/appbrain/t/j$a;

    invoke-static {}, Lcom/appbrain/o/q0;->b()Lcom/appbrain/o/t;

    move-result-object v4

    invoke-interface {v4}, Lcom/appbrain/o/t;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/appbrain/t/j$a;->N(I)Lcom/appbrain/t/j$a;

    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appbrain/o/v;->k()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/appbrain/t/j$a;->P(I)Lcom/appbrain/t/j$a;

    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/appbrain/a/l0;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/appbrain/t/j$a;->S(I)Lcom/appbrain/t/j$a;

    invoke-static {}, Lcom/appbrain/a/j;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/appbrain/t/j$a;->V(I)Lcom/appbrain/t/j$a;

    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-static {}, Lcom/appbrain/a/l1;->q()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/appbrain/t/j$a;->Y(I)Lcom/appbrain/t/j$a;

    invoke-static {}, Lcom/appbrain/a/l1;->s()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/appbrain/t/j$a;->d0(I)Lcom/appbrain/t/j$a;

    invoke-static {}, Lcom/appbrain/a/l1;->u()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/appbrain/t/j$a;->g0(I)Lcom/appbrain/t/j$a;

    invoke-virtual {v0}, Lcom/appbrain/o/i0;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/appbrain/t/j$a;->m0(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    invoke-virtual {v2}, Lcom/appbrain/a/l0;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/appbrain/t/j$a;->w0(I)Lcom/appbrain/t/j$a;

    invoke-virtual {v2}, Lcom/appbrain/a/l0;->d()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/appbrain/t/j$a;->y0(I)Lcom/appbrain/t/j$a;

    invoke-static {}, Lcom/appbrain/a/j;->e()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/appbrain/t/j$a;->u0(I)Lcom/appbrain/t/j$a;

    invoke-virtual {v0}, Lcom/appbrain/o/i0;->t()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/appbrain/t/j$a;->z0(I)Lcom/appbrain/t/j$a;

    invoke-virtual {v0}, Lcom/appbrain/o/i0;->u()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/appbrain/t/j$a;->A0(I)Lcom/appbrain/t/j$a;

    const-string v2, "extra"

    invoke-static {v2, v8}, Lcom/appbrain/a/l1;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3, v2}, Lcom/appbrain/t/j$a;->o0(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    :cond_7
    invoke-virtual {v1}, Lcom/appbrain/a/t0$c;->e()I

    move-result v2

    if-ltz v2, :cond_8

    invoke-virtual {v1}, Lcom/appbrain/a/t0$c;->e()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/appbrain/t/j$a;->n0(I)Lcom/appbrain/t/j$a;

    :cond_8
    invoke-virtual {v1}, Lcom/appbrain/a/t0$c;->g()I

    move-result v2

    if-ltz v2, :cond_9

    invoke-virtual {v1}, Lcom/appbrain/a/t0$c;->g()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/appbrain/t/j$a;->p0(I)Lcom/appbrain/t/j$a;

    :cond_9
    invoke-virtual {v1}, Lcom/appbrain/a/t0$c;->i()[I

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_a

    invoke-virtual {v1}, Lcom/appbrain/a/t0$c;->i()[I

    move-result-object v2

    array-length v4, v2

    :goto_3
    if-ge v7, v4, :cond_a

    aget v5, v2, v7

    invoke-virtual {v3, v5}, Lcom/appbrain/t/j$a;->v(I)Lcom/appbrain/t/j$a;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Lcom/appbrain/a/t0$c;->a()J

    move-result-wide v1

    div-long/2addr v1, v9

    invoke-virtual {v3, v1, v2}, Lcom/appbrain/t/j$a;->L(J)Lcom/appbrain/t/j$a;

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/a/h1;->n()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v3}, Lcom/appbrain/t/j$a;->B()Lcom/appbrain/t/j$a;

    :cond_b
    invoke-virtual {v0}, Lcom/appbrain/o/i0;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/appbrain/t/j$a;->s0(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    invoke-static {}, Lcom/appbrain/a/j;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v3}, Lcom/appbrain/t/j$a;->c0()Lcom/appbrain/t/j$a;

    :cond_c
    sget-object v0, Lcom/appbrain/a/j;->e:Lcom/appbrain/h;

    if-nez v0, :cond_11

    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-direct {p0, v3}, Lcom/appbrain/a/j;->g(Lcom/appbrain/t/j$a;)V

    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-static {}, Lcom/appbrain/o/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/appbrain/t/j$a;->v0(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    if-eqz p1, :cond_d

    const/16 p1, 0x12c

    goto :goto_4

    :cond_d
    const/16 p1, 0x1388

    :goto_4
    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/a/s;->b(Landroid/content/Context;)Lcom/appbrain/a/s;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1}, Lcom/appbrain/a/s;->a(ILjava/util/concurrent/TimeUnit;)Lcom/appbrain/a/s$c;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/appbrain/a/s$c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/appbrain/a/s$c;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/appbrain/t/j$a;->x0(Ljava/lang/String;)Lcom/appbrain/t/j$a;

    :cond_e
    iget v0, p1, Lcom/appbrain/a/s$c;->c:I

    if-eqz v0, :cond_f

    invoke-virtual {v3, v0}, Lcom/appbrain/t/j$a;->B0(I)Lcom/appbrain/t/j$a;

    :cond_f
    iget p1, p1, Lcom/appbrain/a/s$c;->b:I

    if-eqz p1, :cond_10

    invoke-virtual {v3, p1}, Lcom/appbrain/t/j$a;->C0(I)Lcom/appbrain/t/j$a;

    :cond_10
    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object p1

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appbrain/o/v;->o(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/appbrain/t/j$a;->D0(I)Lcom/appbrain/t/j$a;

    invoke-static {}, Lcom/appbrain/o/s0;->b()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/appbrain/t/j$a;->Z(J)Lcom/appbrain/t/j$a;

    invoke-static {p2}, Lcom/appbrain/a/j;->i(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/j;

    return-object p1

    :cond_11
    invoke-virtual {v0}, Lcom/appbrain/h;->a()Landroid/location/Location;

    goto :goto_6

    :goto_5
    throw v8

    :goto_6
    goto :goto_5
.end method

.method private static d(Lcom/appbrain/t/j$a;)V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "level"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "scale"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/appbrain/t/j$a;->r0(I)Lcom/appbrain/t/j$a;

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/appbrain/t/j$a;->f0()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appbrain/t/j$a;->t0(I)Lcom/appbrain/t/j$a;

    :cond_2
    return-void
.end method

.method private static e()I
    .locals 12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v0, v4, :cond_0

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v4, v0, v3

    sget-object v4, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v4, v0, v2

    :goto_0
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v7, v0, v5

    const-string v8, ""

    if-nez v7, :cond_1

    move-object v9, v8

    goto :goto_2

    :cond_1
    move-object v9, v7

    :goto_2
    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v8, "arm64-v8a"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v10, 0x2

    goto :goto_3

    :sswitch_1
    const-string v8, "armeabi-v7a"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v10, 0x1

    goto :goto_3

    :sswitch_2
    const-string v8, "x86"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v10, 0x3

    goto :goto_3

    :sswitch_3
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v10, 0x5

    goto :goto_3

    :sswitch_4
    const-string v8, "unknown"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v10, 0x6

    goto :goto_3

    :sswitch_5
    const-string v8, "armeabi"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v10, 0x0

    goto :goto_3

    :sswitch_6
    const-string v8, "x86_64"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v10, 0x4

    :cond_2
    :goto_3
    packed-switch v10, :pswitch_data_0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Unknown ABI: "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appbrain/o/i;->g(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_0
    or-int/lit8 v6, v6, 0x10

    goto :goto_4

    :pswitch_1
    or-int/lit8 v6, v6, 0x8

    goto :goto_4

    :pswitch_2
    or-int/lit8 v6, v6, 0x4

    goto :goto_4

    :pswitch_3
    or-int/lit8 v6, v6, 0x2

    goto :goto_4

    :pswitch_4
    or-int/lit8 v6, v6, 0x1

    :goto_4
    :pswitch_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x300b59d9 -> :sswitch_6
        -0x2c0bb1c1 -> :sswitch_5
        -0x10fa53b6 -> :sswitch_4
        0x0 -> :sswitch_3
        0x1c976 -> :sswitch_2
        0x8ab4d72 -> :sswitch_1
        0x5553f3ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private g(Lcom/appbrain/t/j$a;)V
    .locals 11

    invoke-virtual {p1}, Lcom/appbrain/t/j$a;->b0()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/appbrain/a/j;->b:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/appbrain/a/j;->j()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    const-string v0, "useloc"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appbrain/a/l1;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/appbrain/a/j;->d:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_1
    const-string v4, "gps"

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-object v4, v0

    const/4 v5, 0x1

    :goto_0
    :try_start_2
    const-string v6, "network"

    invoke-virtual {v2, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-nez v4, :cond_0

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    goto :goto_1

    :catch_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    :cond_2
    :goto_2
    const/4 v2, 0x2

    if-ne v5, v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    :try_start_3
    iput-boolean v3, p0, Lcom/appbrain/a/j;->d:Z

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/32 v7, 0x36ee80

    sub-long/2addr v5, v7

    cmp-long v1, v2, v5

    if-gez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v4

    goto :goto_3

    :catchall_0
    move-object v0, v4

    :catchall_1
    iput-boolean v1, p0, Lcom/appbrain/a/j;->d:Z

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/appbrain/t/j$a;->x(F)Lcom/appbrain/t/j$a;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/appbrain/t/j$a;->C(F)Lcom/appbrain/t/j$a;

    :cond_5
    return-void
.end method

.method private static h()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    add-int/2addr v2, v1

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v0

    return v2

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private static i(Ljava/util/List;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static j()Z
    .locals 1

    invoke-static {}, Lcom/appbrain/a/b0;->b()Lcom/appbrain/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/b0;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/appbrain/a/j;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static k()J
    .locals 5

    sget-object v0, Lcom/appbrain/a/j;->g:Ljava/lang/Long;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/appbrain/o/h0;->d()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    iget-wide v2, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/appbrain/a/j;->g:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/j;->g:Ljava/lang/Long;

    :cond_1
    :goto_1
    sget-object v0, Lcom/appbrain/a/j;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final b(Ljava/util/List;)Lcom/appbrain/t/j;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/appbrain/a/j;->c(ZLjava/util/List;)Lcom/appbrain/t/j;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/util/List;)Lcom/appbrain/t/j;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/appbrain/a/j;->c(ZLjava/util/List;)Lcom/appbrain/t/j;

    move-result-object p1

    return-object p1
.end method

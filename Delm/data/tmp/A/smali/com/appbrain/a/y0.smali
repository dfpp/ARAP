.class public final Lcom/appbrain/a/y0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/f;


# static fields
.field private static a:Lcom/appbrain/a/y0;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/appbrain/a/y0;
    .locals 2

    const-class v0, Lcom/appbrain/a/y0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appbrain/a/y0;->a:Lcom/appbrain/a/y0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appbrain/a/y0;

    invoke-direct {v1}, Lcom/appbrain/a/y0;-><init>()V

    sput-object v1, Lcom/appbrain/a/y0;->a:Lcom/appbrain/a/y0;

    :cond_0
    sget-object v1, Lcom/appbrain/a/y0;->a:Lcom/appbrain/a/y0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/h1;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    const-string v0, "convoff"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appbrain/a/l1;->b(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {}, Lcom/appbrain/t/c;->S()Lcom/appbrain/t/c$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/t/c$a;->w(J)Lcom/appbrain/t/c$a;

    invoke-virtual {v0, p1}, Lcom/appbrain/t/c$a;->x(Ljava/lang/String;)Lcom/appbrain/t/c$a;

    invoke-virtual {v0, p2}, Lcom/appbrain/t/c$a;->v(I)Lcom/appbrain/t/c$a;

    invoke-virtual {v0}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object p1

    check-cast p1, Lcom/appbrain/t/c;

    invoke-static {}, Lcom/appbrain/a/q0;->a()Lcom/appbrain/a/q0;

    move-result-object p2

    const-wide/16 v0, 0x2710

    invoke-virtual {p2, p1, v0, v1}, Lcom/appbrain/a/q0;->g(Lcom/appbrain/t/c;J)V

    :cond_2
    :goto_0
    return-void
.end method

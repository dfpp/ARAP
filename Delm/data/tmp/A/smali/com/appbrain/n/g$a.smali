.class final Lcom/appbrain/n/g$a;
.super Lcom/appbrain/o/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/n/g;->c(Lcom/appbrain/b;Lcom/appbrain/t/l$a;Lcom/appbrain/o/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Lcom/appbrain/t/l;

.field final synthetic j:Lcom/appbrain/n/g$b;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Lcom/appbrain/o/o0;

.field final synthetic m:Lcom/appbrain/n/g;


# direct methods
.method constructor <init>(Lcom/appbrain/n/g;Lcom/appbrain/t/l;Lcom/appbrain/n/g$b;Ljava/lang/String;Lcom/appbrain/o/o0;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/n/g$a;->m:Lcom/appbrain/n/g;

    iput-object p2, p0, Lcom/appbrain/n/g$a;->i:Lcom/appbrain/t/l;

    iput-object p3, p0, Lcom/appbrain/n/g$a;->j:Lcom/appbrain/n/g$b;

    iput-object p4, p0, Lcom/appbrain/n/g$a;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/appbrain/n/g$a;->l:Lcom/appbrain/o/o0;

    invoke-direct {p0}, Lcom/appbrain/o/k;-><init>()V

    return-void
.end method

.method private varargs k()Lcom/appbrain/p/h;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/appbrain/p/g;->L()Lcom/appbrain/p/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/g$a;->i:Lcom/appbrain/t/l;

    invoke-virtual {v0, v1}, Lcom/appbrain/p/g$a;->w(Lcom/appbrain/t/l;)Lcom/appbrain/p/g$a;

    iget-object v1, p0, Lcom/appbrain/n/g$a;->j:Lcom/appbrain/n/g$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appbrain/n/g$a;->j:Lcom/appbrain/n/g$b;

    invoke-static {v1}, Lcom/appbrain/n/g$b;->b(Lcom/appbrain/n/g$b;)Lcom/appbrain/p/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/p/h;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/p/g$a;->x(Ljava/lang/String;)Lcom/appbrain/p/g$a;

    :cond_0
    iget-object v1, p0, Lcom/appbrain/n/g$a;->m:Lcom/appbrain/n/g;

    invoke-static {v1}, Lcom/appbrain/n/g;->a(Lcom/appbrain/n/g;)Lcom/appbrain/a/d0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v0

    check-cast v0, Lcom/appbrain/p/g;

    invoke-virtual {v1, v0}, Lcom/appbrain/a/d0;->d(Lcom/appbrain/p/g;)Lcom/appbrain/p/h;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/appbrain/r/a; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-static {}, Lcom/appbrain/n/g;->f()Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/n/g$a;->k()Lcom/appbrain/p/h;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic e(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/appbrain/p/h;

    invoke-static {p1}, Lcom/appbrain/n/g;->d(Lcom/appbrain/p/h;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/appbrain/n/g;->i()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/appbrain/p/h;->P()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/appbrain/n/g$a;->m:Lcom/appbrain/n/g;

    invoke-static {v2}, Lcom/appbrain/n/g;->g(Lcom/appbrain/n/g;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/appbrain/n/g$a;->k:Ljava/lang/String;

    new-instance v4, Lcom/appbrain/n/g$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v0

    const/4 v0, 0x0

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/appbrain/n/g$b;-><init>(Lcom/appbrain/p/h;JB)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appbrain/n/g$a;->m:Lcom/appbrain/n/g;

    invoke-static {v0}, Lcom/appbrain/n/g;->j(Lcom/appbrain/n/g;)V

    :cond_0
    iget-object v0, p0, Lcom/appbrain/n/g$a;->l:Lcom/appbrain/o/o0;

    invoke-interface {v0, p1}, Lcom/appbrain/o/o0;->a(Ljava/lang/Object;)V

    return-void
.end method

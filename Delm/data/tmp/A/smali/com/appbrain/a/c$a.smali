.class final Lcom/appbrain/a/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/c;->setImpressionParams(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/appbrain/a/c;


# direct methods
.method constructor <init>(Lcom/appbrain/a/c;Ljava/lang/String;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/c$a;->c:Lcom/appbrain/a/c;

    iput-object p2, p0, Lcom/appbrain/a/c$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-class v0, Lcom/appbrain/a/c$i;

    iget-object v1, p0, Lcom/appbrain/a/c$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/appbrain/a/c;->a(Ljava/lang/String;)Lcom/appbrain/t/n;

    move-result-object v1

    new-instance v2, Lcom/appbrain/a/c$i;

    invoke-direct {v2}, Lcom/appbrain/a/c$i;-><init>()V

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appbrain/a/c$a;->c:Lcom/appbrain/a/c;

    invoke-static {v1}, Lcom/appbrain/a/c;->a(Lcom/appbrain/a/c;)Lcom/appbrain/t/w$a;

    move-result-object v1

    const-string v4, "error"

    invoke-virtual {v1, v4}, Lcom/appbrain/t/w$a;->C(Ljava/lang/String;)Lcom/appbrain/t/w$a;

    iput-boolean v3, v2, Lcom/appbrain/a/c$i;->d:Z

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lcom/appbrain/a/c$a;->c:Lcom/appbrain/a/c;

    invoke-static {v4}, Lcom/appbrain/a/c;->a(Lcom/appbrain/a/c;)Lcom/appbrain/t/w$a;

    move-result-object v4

    invoke-virtual {v1}, Lcom/appbrain/t/n;->Q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appbrain/t/w$a;->C(Ljava/lang/String;)Lcom/appbrain/t/w$a;

    :goto_0
    invoke-virtual {v1}, Lcom/appbrain/t/n;->N()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Lcom/appbrain/t/n;->P(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appbrain/o/h0;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v4, v2, Lcom/appbrain/a/c$i;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/appbrain/a/c$i;->c:I

    goto :goto_1

    :cond_1
    iget-object v5, v2, Lcom/appbrain/a/c$i;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lcom/appbrain/a/c$i;->b:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/appbrain/t/n;->W(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/appbrain/a/c$a;->c:Lcom/appbrain/a/c;

    invoke-static {v1, v2}, Lcom/appbrain/a/c;->a(Lcom/appbrain/a/c;Lcom/appbrain/a/c$i;)Lcom/appbrain/a/c$i;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

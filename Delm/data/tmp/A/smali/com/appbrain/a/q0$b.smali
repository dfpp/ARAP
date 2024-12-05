.class final Lcom/appbrain/a/q0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/q0;->g(Lcom/appbrain/t/c;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/t/c;

.field final synthetic c:J

.field final synthetic d:Lcom/appbrain/a/q0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/q0;Lcom/appbrain/t/c;J)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/q0$b;->d:Lcom/appbrain/a/q0;

    iput-object p2, p0, Lcom/appbrain/a/q0$b;->b:Lcom/appbrain/t/c;

    iput-wide p3, p0, Lcom/appbrain/a/q0$b;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/a/q0$b;->b:Lcom/appbrain/t/c;

    invoke-virtual {v0}, Lcom/appbrain/t/c;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/a/q0$b;->d:Lcom/appbrain/a/q0;

    invoke-static {v0}, Lcom/appbrain/a/q0;->c(Lcom/appbrain/a/q0;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/q0$b;->b:Lcom/appbrain/t/c;

    invoke-virtual {v1}, Lcom/appbrain/t/c;->P()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/appbrain/a/q0$b;->d:Lcom/appbrain/a/q0;

    invoke-static {v1}, Lcom/appbrain/a/q0;->c(Lcom/appbrain/a/q0;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/a/q0$b;->b:Lcom/appbrain/t/c;

    invoke-virtual {v2}, Lcom/appbrain/t/c;->P()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/appbrain/a/q0;->p()Lcom/appbrain/t/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/q0$b;->b:Lcom/appbrain/t/c;

    invoke-virtual {v0, v1}, Lcom/appbrain/t/h$a;->w(Lcom/appbrain/t/c;)Lcom/appbrain/t/h$a;

    invoke-virtual {v0}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v0

    check-cast v0, Lcom/appbrain/t/h;

    invoke-static {v0}, Lcom/appbrain/a/q0;->h(Lcom/appbrain/t/h;)V

    iget-object v0, p0, Lcom/appbrain/a/q0$b;->d:Lcom/appbrain/a/q0;

    iget-wide v1, p0, Lcom/appbrain/a/q0$b;->c:J

    invoke-static {v0, v1, v2}, Lcom/appbrain/a/q0;->e(Lcom/appbrain/a/q0;J)V

    return-void
.end method

.class final Lcom/appbrain/a/k1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/k1;->c(ILcom/appbrain/a/k1$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/k1$e;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/appbrain/a/k1$e;I)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/k1$a;->b:Lcom/appbrain/a/k1$e;

    iput p2, p0, Lcom/appbrain/a/k1$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/appbrain/a/k1;->b()Ljava/lang/String;

    invoke-static {}, Lcom/appbrain/a/k1;->d()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/a/k1$a;->c:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/a/k1$d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event listener ID unknown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appbrain/a/k1$a;->b:Lcom/appbrain/a/k1$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/appbrain/a/k1$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/o/i;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lcom/appbrain/a/k1$c;->a:[I

    iget-object v2, p0, Lcom/appbrain/a/k1$a;->b:Lcom/appbrain/a/k1$e;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/appbrain/a/k1$d;->a:Lcom/appbrain/k;

    iget-boolean v0, v0, Lcom/appbrain/a/k1$d;->c:Z

    invoke-interface {v1, v0}, Lcom/appbrain/k;->c(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/appbrain/a/k1;->d()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/a/k1$a;->c:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/appbrain/a/k1;->d()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/appbrain/a/k1$a;->c:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    throw v0

    :cond_2
    iget-boolean v1, v0, Lcom/appbrain/a/k1$d;->c:Z

    if-nez v1, :cond_6

    iput-boolean v2, v0, Lcom/appbrain/a/k1$d;->c:Z

    iget-object v0, v0, Lcom/appbrain/a/k1$d;->a:Lcom/appbrain/k;

    invoke-interface {v0}, Lcom/appbrain/k;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :cond_3
    :try_start_3
    iget-boolean v1, v0, Lcom/appbrain/a/k1$d;->b:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/appbrain/a/k1$d;->a:Lcom/appbrain/k;

    iget-boolean v0, v0, Lcom/appbrain/a/k1$d;->c:Z

    invoke-interface {v1, v0}, Lcom/appbrain/k;->c(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lcom/appbrain/a/k1$d;->a:Lcom/appbrain/k;

    sget-object v1, Lcom/appbrain/k$a;->c:Lcom/appbrain/k$a;

    invoke-interface {v0, v1}, Lcom/appbrain/k;->d(Lcom/appbrain/k$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    invoke-static {}, Lcom/appbrain/a/k1;->d()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/a/k1$a;->c:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/appbrain/a/k1;->d()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/appbrain/a/k1$a;->c:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    throw v0

    :cond_5
    iget-boolean v1, v0, Lcom/appbrain/a/k1$d;->b:Z

    if-nez v1, :cond_6

    iput-boolean v2, v0, Lcom/appbrain/a/k1$d;->b:Z

    iget-object v0, v0, Lcom/appbrain/a/k1$d;->a:Lcom/appbrain/k;

    invoke-interface {v0}, Lcom/appbrain/k;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    :goto_1
    return-void

    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.class final Lcom/appbrain/o/k$f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/k$f;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/appbrain/o/k$f;


# direct methods
.method constructor <init>(Lcom/appbrain/o/k$f;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/k$f$a;->c:Lcom/appbrain/o/k$f;

    iput-object p2, p0, Lcom/appbrain/o/k$f$a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appbrain/o/k$f$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/appbrain/o/k$f$a;->c:Lcom/appbrain/o/k$f;

    invoke-virtual {v0}, Lcom/appbrain/o/k$f;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/appbrain/o/k$f$a;->c:Lcom/appbrain/o/k$f;

    invoke-virtual {v1}, Lcom/appbrain/o/k$f;->a()V

    throw v0
.end method

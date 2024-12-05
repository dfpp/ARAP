.class final Lcom/appbrain/o/k$b;
.super Lcom/appbrain/o/k$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/k;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/o/k;


# direct methods
.method constructor <init>(Lcom/appbrain/o/k;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/k$b;->b:Lcom/appbrain/o/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/appbrain/o/k$h;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/k$b;->b:Lcom/appbrain/o/k;

    invoke-static {v0}, Lcom/appbrain/o/k;->d(Lcom/appbrain/o/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/appbrain/o/k$b;->b:Lcom/appbrain/o/k;

    invoke-virtual {v0}, Lcom/appbrain/o/k;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appbrain/o/k;->c(Lcom/appbrain/o/k;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

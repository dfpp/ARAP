.class final Lcom/appbrain/o/k0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/o/k0;


# direct methods
.method constructor <init>(Lcom/appbrain/o/k0;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/k0$b;->b:Lcom/appbrain/o/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/k0$b;->b:Lcom/appbrain/o/k0;

    invoke-static {v0}, Lcom/appbrain/o/k0;->l(Lcom/appbrain/o/k0;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/appbrain/o/k0$b;->b:Lcom/appbrain/o/k0;

    invoke-static {v0}, Lcom/appbrain/o/k0;->n(Lcom/appbrain/o/k0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/o/k;->f(Ljava/lang/Runnable;)V

    return-void
.end method

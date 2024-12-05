.class final Lcom/appbrain/a/s$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/s;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/appbrain/a/s;


# direct methods
.method constructor <init>(Lcom/appbrain/a/s;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/s$a;->c:Lcom/appbrain/a/s;

    iput-object p2, p0, Lcom/appbrain/a/s$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/s$a;->c:Lcom/appbrain/a/s;

    invoke-static {v0}, Lcom/appbrain/a/s;->c(Lcom/appbrain/a/s;)V

    iget-object v0, p0, Lcom/appbrain/a/s$a;->c:Lcom/appbrain/a/s;

    invoke-static {v0}, Lcom/appbrain/a/s;->f(Lcom/appbrain/a/s;)Lcom/appbrain/a/s$c;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/s$a;->c:Lcom/appbrain/a/s;

    invoke-static {v0}, Lcom/appbrain/a/s;->g(Lcom/appbrain/a/s;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/s$a;->c:Lcom/appbrain/a/s;

    iget-object v1, p0, Lcom/appbrain/a/s$a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/appbrain/a/s;->d(Lcom/appbrain/a/s;Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/s$a;->c:Lcom/appbrain/a/s;

    invoke-static {v0}, Lcom/appbrain/a/s;->h(Lcom/appbrain/a/s;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

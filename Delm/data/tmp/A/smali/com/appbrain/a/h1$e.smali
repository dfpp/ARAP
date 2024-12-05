.class final Lcom/appbrain/a/h1$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/a/h1;


# direct methods
.method private constructor <init>(Lcom/appbrain/a/h1;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/h1$e;->a:Lcom/appbrain/a/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appbrain/a/h1;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/h1$e;-><init>(Lcom/appbrain/a/h1;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    iget-object v0, p0, Lcom/appbrain/a/h1$e;->a:Lcom/appbrain/a/h1;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/appbrain/a/h1;->e(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/appbrain/a/h1$e;->a:Lcom/appbrain/a/h1;

    invoke-static {v0}, Lcom/appbrain/a/h1;->k(Lcom/appbrain/a/h1;)Lcom/appbrain/a/a0;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/appbrain/a/m1;->q(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v1

    new-instance v2, Lcom/appbrain/a/a0$a;

    invoke-direct {v2, v0, p1}, Lcom/appbrain/a/a0$a;-><init>(Lcom/appbrain/a/a0;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/appbrain/o/f0;->h(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/h1$e;->a:Lcom/appbrain/a/h1;

    invoke-static {v0}, Lcom/appbrain/a/h1;->m(Lcom/appbrain/a/h1;)Lcom/appbrain/a/s0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appbrain/a/s0;->c(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/h1$e;->a:Lcom/appbrain/a/h1;

    invoke-static {v0}, Lcom/appbrain/a/h1;->p(Lcom/appbrain/a/h1;)Lcom/appbrain/a/o0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appbrain/a/o0;->i(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/h1$e;->a:Lcom/appbrain/a/h1;

    invoke-static {v0}, Lcom/appbrain/a/h1;->p(Lcom/appbrain/a/h1;)Lcom/appbrain/a/o0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appbrain/a/o0;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/h1$e;->a:Lcom/appbrain/a/h1;

    invoke-static {v0}, Lcom/appbrain/a/h1;->k(Lcom/appbrain/a/h1;)Lcom/appbrain/a/a0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appbrain/a/a0;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/appbrain/a/h1$e;->a:Lcom/appbrain/a/h1;

    invoke-static {v0}, Lcom/appbrain/a/h1;->m(Lcom/appbrain/a/h1;)Lcom/appbrain/a/s0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appbrain/a/s0;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/h1$e;->a:Lcom/appbrain/a/h1;

    invoke-static {v0}, Lcom/appbrain/a/h1;->m(Lcom/appbrain/a/h1;)Lcom/appbrain/a/s0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appbrain/a/s0;->g(Landroid/app/Activity;)V

    return-void
.end method

.class public Lcom/appbrain/AppBrainActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lcom/appbrain/a/j1$a;


# instance fields
.field private final b:Lcom/appbrain/a/j1$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/appbrain/a/j1$b;

    invoke-direct {v0}, Lcom/appbrain/a/j1$b;-><init>()V

    iput-object v0, p0, Lcom/appbrain/AppBrainActivity;->b:Lcom/appbrain/a/j1$b;

    return-void
.end method

.method public static d(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p0}, Lcom/appbrain/o/g0;->b(Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/appbrain/AppBrainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1}, Lcom/appbrain/a/h0;->c(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainActivity;->b:Lcom/appbrain/a/j1$b;

    invoke-virtual {v0}, Lcom/appbrain/a/j1$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/appbrain/AppBrainActivity;->b:Lcom/appbrain/a/j1$b;

    invoke-virtual {p1}, Lcom/appbrain/a/j1$b;->a()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appbrain/o/v;->f(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/appbrain/AppBrainActivity;->b:Lcom/appbrain/a/j1$b;

    invoke-virtual {v0, p0, p1}, Lcom/appbrain/a/j1$b;->b(Lcom/appbrain/a/j1$a;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainActivity;->b:Lcom/appbrain/a/j1$b;

    invoke-virtual {v0}, Lcom/appbrain/a/j1$b;->h()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainActivity;->b:Lcom/appbrain/a/j1$b;

    invoke-virtual {v0}, Lcom/appbrain/a/j1$b;->f()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/appbrain/AppBrainActivity;->b:Lcom/appbrain/a/j1$b;

    invoke-virtual {v0}, Lcom/appbrain/a/j1$b;->e()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainActivity;->b:Lcom/appbrain/a/j1$b;

    invoke-virtual {v0, p1}, Lcom/appbrain/a/j1$b;->c(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainActivity;->b:Lcom/appbrain/a/j1$b;

    invoke-virtual {v0}, Lcom/appbrain/a/j1$b;->g()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

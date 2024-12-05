.class final Lcom/appbrain/AppBrainBanner$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/a/f1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/AppBrainBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/AppBrainBanner;


# direct methods
.method constructor <init>(Lcom/appbrain/AppBrainBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/AppBrainBanner$m;->a:Lcom/appbrain/AppBrainBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$m;->a:Lcom/appbrain/AppBrainBanner;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$m;->a:Lcom/appbrain/AppBrainBanner;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$m;->a:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->n(Lcom/appbrain/AppBrainBanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/h1;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$m;->a:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->o(Lcom/appbrain/AppBrainBanner;)Z

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$m;->a:Lcom/appbrain/AppBrainBanner;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$m;->a:Lcom/appbrain/AppBrainBanner;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final h(II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$m;->a:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0, p1, p2}, Lcom/appbrain/AppBrainBanner;->d(Lcom/appbrain/AppBrainBanner;II)V

    return-void
.end method

.method public final i(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$m;->a:Lcom/appbrain/AppBrainBanner;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$m;->a:Lcom/appbrain/AppBrainBanner;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$m;->a:Lcom/appbrain/AppBrainBanner;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$m;->a:Lcom/appbrain/AppBrainBanner;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

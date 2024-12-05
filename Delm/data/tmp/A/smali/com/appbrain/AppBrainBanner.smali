.class public Lcom/appbrain/AppBrainBanner;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/AppBrainBanner$p;
    }
.end annotation


# instance fields
.field private final b:Lcom/appbrain/a/e$a;

.field private c:Lcom/appbrain/a/f1;

.field private d:Lcom/appbrain/a/a$b;

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:Lcom/appbrain/a/f1$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appbrain/AppBrainBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/appbrain/AppBrainBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/appbrain/a/e$a;

    invoke-direct {p1}, Lcom/appbrain/a/e$a;-><init>()V

    iput-object p1, p0, Lcom/appbrain/AppBrainBanner;->b:Lcom/appbrain/a/e$a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appbrain/AppBrainBanner;->f:Z

    new-instance p1, Lcom/appbrain/AppBrainBanner$m;

    invoke-direct {p1, p0}, Lcom/appbrain/AppBrainBanner$m;-><init>(Lcom/appbrain/AppBrainBanner;)V

    iput-object p1, p0, Lcom/appbrain/AppBrainBanner;->h:Lcom/appbrain/a/f1$a;

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/appbrain/o/v;->h(Landroid/view/View;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/appbrain/AppBrainBanner;->b:Lcom/appbrain/a/e$a;

    invoke-virtual {p0}, Lcom/appbrain/AppBrainBanner;->b()Lcom/appbrain/a/e$b;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/appbrain/a/e$a;->h(Lcom/appbrain/a/e$b;)V

    iget-object p1, p0, Lcom/appbrain/AppBrainBanner;->b:Lcom/appbrain/a/e$a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/appbrain/a/e$a;->d(Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method static synthetic a(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/e$a;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/AppBrainBanner;->b:Lcom/appbrain/a/e$a;

    return-object p0
.end method

.method static synthetic c(Lcom/appbrain/AppBrainBanner;Lcom/appbrain/a/f1;)Lcom/appbrain/a/f1;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/AppBrainBanner;->c:Lcom/appbrain/a/f1;

    return-object p1
.end method

.method static synthetic d(Lcom/appbrain/AppBrainBanner;II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method static synthetic e(Lcom/appbrain/AppBrainBanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appbrain/AppBrainBanner;->f:Z

    return p1
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner;->c:Lcom/appbrain/a/f1;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appbrain/AppBrainBanner;->b:Lcom/appbrain/a/e$a;

    invoke-virtual {v0}, Lcom/appbrain/a/e$a;->b()Lcom/appbrain/a/e;

    move-result-object v0

    iget-boolean v1, p0, Lcom/appbrain/AppBrainBanner;->f:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/appbrain/a/e;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/appbrain/n/f;->a()Lcom/appbrain/n/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/appbrain/a/e;->l()Lcom/appbrain/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appbrain/n/f;->b(Lcom/appbrain/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/appbrain/a/c0;

    iget-object v2, p0, Lcom/appbrain/AppBrainBanner;->h:Lcom/appbrain/a/f1$a;

    new-instance v3, Lcom/appbrain/AppBrainBanner$l;

    invoke-direct {v3, p0}, Lcom/appbrain/AppBrainBanner$l;-><init>(Lcom/appbrain/AppBrainBanner;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/appbrain/a/c0;-><init>(Lcom/appbrain/a/f1$a;Lcom/appbrain/a/e;Lcom/appbrain/a/c0$b;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/appbrain/a/g;

    iget-object v2, p0, Lcom/appbrain/AppBrainBanner;->h:Lcom/appbrain/a/f1$a;

    invoke-direct {v1, v2, v0}, Lcom/appbrain/a/g;-><init>(Lcom/appbrain/a/f1$a;Lcom/appbrain/a/e;)V

    :goto_0
    iput-object v1, p0, Lcom/appbrain/AppBrainBanner;->c:Lcom/appbrain/a/f1;

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner;->c:Lcom/appbrain/a/f1;

    invoke-interface {v0}, Lcom/appbrain/a/f1;->a()V

    return-void
.end method

.method static synthetic g(Lcom/appbrain/AppBrainBanner;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/AppBrainBanner;->f()V

    return-void
.end method

.method static synthetic h(Lcom/appbrain/AppBrainBanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/appbrain/AppBrainBanner;->g:Z

    return p1
.end method

.method static synthetic i(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/f1;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/AppBrainBanner;->c:Lcom/appbrain/a/f1;

    return-object p0
.end method

.method private j()V
    .locals 2

    iget-boolean v0, p0, Lcom/appbrain/AppBrainBanner;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/AppBrainBanner;->e:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/appbrain/AppBrainBanner;->f()V

    return-void

    :cond_1
    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    new-instance v1, Lcom/appbrain/AppBrainBanner$i;

    invoke-direct {v1, p0}, Lcom/appbrain/AppBrainBanner$i;-><init>(Lcom/appbrain/AppBrainBanner;)V

    invoke-virtual {v0, v1}, Lcom/appbrain/o/f0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic k(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/f1$a;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/AppBrainBanner;->h:Lcom/appbrain/a/f1$a;

    return-object p0
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner;->c:Lcom/appbrain/a/f1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/appbrain/a/f1;->a()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/appbrain/AppBrainBanner;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/appbrain/AppBrainBanner;->j()V

    :cond_1
    return-void
.end method

.method private m()Z
    .locals 3

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner;->d:Lcom/appbrain/a/a$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method static synthetic n(Lcom/appbrain/AppBrainBanner;)Z
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/AppBrainBanner;->m()Z

    move-result p0

    return p0
.end method

.method static synthetic o(Lcom/appbrain/AppBrainBanner;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appbrain/AppBrainBanner;->g:Z

    return p0
.end method


# virtual methods
.method protected b()Lcom/appbrain/a/e$b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBannerListener()Lcom/appbrain/i;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner;->b:Lcom/appbrain/a/e$a;

    invoke-virtual {v0}, Lcom/appbrain/a/e$a;->j()Lcom/appbrain/i;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner;->d:Lcom/appbrain/a/a$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appbrain/AppBrainBanner$k;

    invoke-direct {v0, p0}, Lcom/appbrain/AppBrainBanner$k;-><init>(Lcom/appbrain/AppBrainBanner;)V

    invoke-static {p0, v0}, Lcom/appbrain/a/a;->b(Landroid/view/View;Lcom/appbrain/a/a$b;)Lcom/appbrain/a/a$b;

    iput-object v0, p0, Lcom/appbrain/AppBrainBanner;->d:Lcom/appbrain/a/a$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appbrain/AppBrainBanner;->g:Z

    invoke-direct {p0}, Lcom/appbrain/AppBrainBanner;->l()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner;->d:Lcom/appbrain/a/a$b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/appbrain/a/a;->f(Lcom/appbrain/a/a$b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appbrain/AppBrainBanner;->d:Lcom/appbrain/a/a$b;

    invoke-direct {p0}, Lcom/appbrain/AppBrainBanner;->l()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner;->c:Lcom/appbrain/a/f1;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/appbrain/a/f1;->h(II)V

    return-void
.end method

.method public p()V
    .locals 2

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    new-instance v1, Lcom/appbrain/AppBrainBanner$j;

    invoke-direct {v1, p0}, Lcom/appbrain/AppBrainBanner$j;-><init>(Lcom/appbrain/AppBrainBanner;)V

    invoke-virtual {v0, v1}, Lcom/appbrain/o/f0;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q(ZLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/appbrain/AppBrainBanner$o;

    invoke-direct {v0, p0, p1, p2}, Lcom/appbrain/AppBrainBanner$o;-><init>(Lcom/appbrain/AppBrainBanner;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/appbrain/o/j;->i(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public r(Lcom/appbrain/AppBrainBanner$p;Lcom/appbrain/AppBrainBanner$p;)V
    .locals 1

    new-instance v0, Lcom/appbrain/AppBrainBanner$n;

    invoke-direct {v0, p0, p1, p2}, Lcom/appbrain/AppBrainBanner$n;-><init>(Lcom/appbrain/AppBrainBanner;Lcom/appbrain/AppBrainBanner$p;Lcom/appbrain/AppBrainBanner$p;)V

    invoke-static {v0}, Lcom/appbrain/o/j;->i(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdId(Lcom/appbrain/b;)V
    .locals 1

    new-instance v0, Lcom/appbrain/AppBrainBanner$b;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/AppBrainBanner$b;-><init>(Lcom/appbrain/AppBrainBanner;Lcom/appbrain/b;)V

    invoke-static {v0}, Lcom/appbrain/o/j;->i(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAllowedToUseMediation(Z)V
    .locals 1

    new-instance v0, Lcom/appbrain/AppBrainBanner$g;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/AppBrainBanner$g;-><init>(Lcom/appbrain/AppBrainBanner;Z)V

    invoke-static {v0}, Lcom/appbrain/o/j;->i(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setBannerListener(Lcom/appbrain/i;)V
    .locals 1

    new-instance v0, Lcom/appbrain/AppBrainBanner$a;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/AppBrainBanner$a;-><init>(Lcom/appbrain/AppBrainBanner;Lcom/appbrain/i;)V

    invoke-static {v0}, Lcom/appbrain/o/j;->i(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setButtonTextIndex(I)V
    .locals 1

    new-instance v0, Lcom/appbrain/AppBrainBanner$d;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/AppBrainBanner$d;-><init>(Lcom/appbrain/AppBrainBanner;I)V

    invoke-static {v0}, Lcom/appbrain/o/j;->i(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setColors(I)V
    .locals 1

    new-instance v0, Lcom/appbrain/AppBrainBanner$f;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/AppBrainBanner$f;-><init>(Lcom/appbrain/AppBrainBanner;I)V

    invoke-static {v0}, Lcom/appbrain/o/j;->i(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDesign(I)V
    .locals 1

    new-instance v0, Lcom/appbrain/AppBrainBanner$e;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/AppBrainBanner$e;-><init>(Lcom/appbrain/AppBrainBanner;I)V

    invoke-static {v0}, Lcom/appbrain/o/j;->i(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSingleAppDesign(I)V
    .locals 1

    new-instance v0, Lcom/appbrain/AppBrainBanner$h;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/AppBrainBanner$h;-><init>(Lcom/appbrain/AppBrainBanner;I)V

    invoke-static {v0}, Lcom/appbrain/o/j;->i(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSize(Lcom/appbrain/AppBrainBanner$p;)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/appbrain/AppBrainBanner;->r(Lcom/appbrain/AppBrainBanner$p;Lcom/appbrain/AppBrainBanner$p;)V

    return-void
.end method

.method public setTitleIndex(I)V
    .locals 1

    new-instance v0, Lcom/appbrain/AppBrainBanner$c;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/AppBrainBanner$c;-><init>(Lcom/appbrain/AppBrainBanner;I)V

    invoke-static {v0}, Lcom/appbrain/o/j;->i(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/appbrain/AppBrainBanner;->l()V

    return-void
.end method

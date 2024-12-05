.class public abstract Lcom/appbrain/a/j1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/j1$b;,
        Lcom/appbrain/a/j1$a;
    }
.end annotation


# static fields
.field private static volatile d:Ljava/lang/Integer;

.field private static volatile e:Lcom/appbrain/d;

.field private static volatile f:I

.field private static g:Lcom/appbrain/o/o0;


# instance fields
.field private final a:Lcom/appbrain/a/j1$a;

.field private final b:Landroid/content/Context;

.field private c:Z


# direct methods
.method protected constructor <init>(Lcom/appbrain/a/j1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/j1;->a:Lcom/appbrain/a/j1$a;

    invoke-interface {p1}, Lcom/appbrain/a/j1$a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/a/m1;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/a/j1;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->d()Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/appbrain/a/j1$a;)I
    .locals 0

    invoke-static {p0}, Lcom/appbrain/a/j1;->g(Lcom/appbrain/a/j1$a;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/View;)Landroid/view/View;
    .locals 4

    const/high16 v0, 0x43900000    # 288.0f

    invoke-static {v0}, Lcom/appbrain/o/p0;->c(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumWidth(I)V

    sget v0, Lcom/appbrain/a/j1;->f:I

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/appbrain/a/j1;->f:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-virtual {v0, p0, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    sget-object v0, Lcom/appbrain/a/j1;->e:Lcom/appbrain/d;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appbrain/a/j1;->e:Lcom/appbrain/d;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/appbrain/a/b0;->b()Lcom/appbrain/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/b0;->d()Lcom/appbrain/d;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    sget-object v2, Lcom/appbrain/d;->c:Lcom/appbrain/d;

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    sget-object v2, Lcom/appbrain/a/j1;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/appbrain/a/j1;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/appbrain/a/b0;->b()Lcom/appbrain/a/b0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/a/b0;->e()I

    move-result v2

    :goto_1
    iget v0, v0, Lcom/appbrain/d;->b:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/appbrain/o/p0;->c(F)I

    move-result v0

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    int-to-float v0, v0

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/appbrain/o/v;->i(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    move-object p0, v0

    goto :goto_3

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_5
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_6

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/appbrain/o/v;->i(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    :cond_6
    nop

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_7

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/appbrain/o/p0;->c(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/o/j;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/high16 v0, 0x42000000    # 32.0f

    :goto_4
    invoke-static {v0}, Lcom/appbrain/o/p0;->c(F)I

    move-result v0

    goto :goto_5

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x168

    if-lt v0, v1, :cond_9

    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_4

    :cond_9
    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_4

    :goto_5
    invoke-static {p0}, Lcom/appbrain/a/m1;->d(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p0
.end method

.method static synthetic f(Lcom/appbrain/a/j1;)V
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/a/j1;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/a/j1;->c:Z

    iget-object p0, p0, Lcom/appbrain/a/j1;->a:Lcom/appbrain/a/j1$a;

    invoke-static {p0}, Lcom/appbrain/a/j1;->g(Lcom/appbrain/a/j1$a;)I

    move-result p0

    sget-object v0, Lcom/appbrain/a/k1$e;->d:Lcom/appbrain/a/k1$e;

    invoke-static {p0, v0}, Lcom/appbrain/a/k1;->c(ILcom/appbrain/a/k1$e;)V

    :cond_0
    return-void
.end method

.method private static g(Lcom/appbrain/a/j1$a;)I
    .locals 2

    invoke-interface {p0}, Lcom/appbrain/a/j1$a;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "aid"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static synthetic u()Lcom/appbrain/o/o0;
    .locals 1

    sget-object v0, Lcom/appbrain/a/j1;->g:Lcom/appbrain/o/o0;

    return-object v0
.end method


# virtual methods
.method protected abstract b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected e(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected h()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 0

    return-void
.end method

.method protected l()V
    .locals 0

    return-void
.end method

.method protected m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final n()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/j1;->a:Lcom/appbrain/a/j1$a;

    invoke-static {v0}, Lcom/appbrain/a/j1;->g(Lcom/appbrain/a/j1$a;)I

    move-result v0

    return v0
.end method

.method protected final o()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/j1;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected final p()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/j1;->a:Lcom/appbrain/a/j1$a;

    invoke-interface {v0}, Lcom/appbrain/a/j1$a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected q()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/j1;->a:Lcom/appbrain/a/j1$a;

    invoke-interface {v0}, Lcom/appbrain/a/j1$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/j1;->a:Lcom/appbrain/a/j1$a;

    invoke-interface {v0}, Lcom/appbrain/a/j1$a;->close()V

    :cond_0
    return-void
.end method

.method protected final r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/a/j1;->c:Z

    return-void
.end method

.method protected final s()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/j1;->a:Lcom/appbrain/a/j1$a;

    invoke-interface {v0}, Lcom/appbrain/a/j1$a;->a()Z

    move-result v0

    return v0
.end method

.method protected final t()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/j1;->a:Lcom/appbrain/a/j1$a;

    invoke-interface {v0}, Lcom/appbrain/a/j1$a;->b()Z

    move-result v0

    return v0
.end method

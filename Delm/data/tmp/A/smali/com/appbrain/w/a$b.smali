.class final Lcom/appbrain/w/a$b;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/w/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/appbrain/w/a;Landroid/view/View;I)V
    .locals 0

    iput-object p2, p0, Lcom/appbrain/w/a$b;->b:Landroid/view/View;

    iput p3, p0, Lcom/appbrain/w/a$b;->c:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Lcom/appbrain/w/a$b;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    iget-object p1, p0, Lcom/appbrain/w/a$b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 p2, -0x2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/appbrain/w/a$b;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/appbrain/w/a$b;->c:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object p1, p0, Lcom/appbrain/w/a$b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

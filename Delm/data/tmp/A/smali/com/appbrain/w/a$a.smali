.class final Lcom/appbrain/w/a$a;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/w/a;->b(Landroid/view/View;IIIILandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:I

.field final synthetic n:I


# direct methods
.method constructor <init>(Lcom/appbrain/w/a;Landroid/view/View;IIIIIIIIIIII)V
    .locals 0

    iput-object p2, p0, Lcom/appbrain/w/a$a;->b:Landroid/view/View;

    iput p3, p0, Lcom/appbrain/w/a$a;->c:I

    iput p4, p0, Lcom/appbrain/w/a$a;->d:I

    iput p5, p0, Lcom/appbrain/w/a$a;->e:I

    iput p6, p0, Lcom/appbrain/w/a$a;->f:I

    iput p7, p0, Lcom/appbrain/w/a$a;->g:I

    iput p8, p0, Lcom/appbrain/w/a$a;->h:I

    iput p9, p0, Lcom/appbrain/w/a$a;->i:I

    iput p10, p0, Lcom/appbrain/w/a$a;->j:I

    iput p11, p0, Lcom/appbrain/w/a$a;->k:I

    iput p12, p0, Lcom/appbrain/w/a$a;->l:I

    iput p13, p0, Lcom/appbrain/w/a$a;->m:I

    iput p14, p0, Lcom/appbrain/w/a$a;->n:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Lcom/appbrain/w/a$a;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget p1, p0, Lcom/appbrain/w/a$a;->c:I

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p1, p0, Lcom/appbrain/w/a$a;->d:I

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p0, Lcom/appbrain/w/a$a;->e:I

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p0, Lcom/appbrain/w/a$a;->f:I

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/appbrain/w/a$a;->g:I

    iget v1, p0, Lcom/appbrain/w/a$a;->h:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p0, Lcom/appbrain/w/a$a;->i:I

    iget v1, p0, Lcom/appbrain/w/a$a;->j:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, p0, Lcom/appbrain/w/a$a;->k:I

    iget v1, p0, Lcom/appbrain/w/a$a;->l:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p0, Lcom/appbrain/w/a$a;->m:I

    iget v1, p0, Lcom/appbrain/w/a$a;->n:I

    int-to-float v1, v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    iget-object p1, p0, Lcom/appbrain/w/a$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

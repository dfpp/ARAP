.class public final Lcom/appbrain/w/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    new-instance v2, Lcom/appbrain/w/a$b;

    invoke-direct {v2, p0, p1, v1}, Lcom/appbrain/w/a$b;-><init>(Lcom/appbrain/w/a;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final b(Landroid/view/View;IIIILandroid/view/animation/Animation$AnimationListener;)V
    .locals 17

    move-object/from16 v0, p6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v13, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v15, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v10, p2, v9

    sub-int v12, p4, v11

    sub-int v14, p3, v13

    sub-int v16, p5, v15

    new-instance v1, Lcom/appbrain/w/a$a;

    move-object v2, v1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v16}, Lcom/appbrain/w/a$a;-><init>(Lcom/appbrain/w/a;Landroid/view/View;IIIIIIIIIIII)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    new-instance v2, Lcom/appbrain/w/a$c;

    invoke-direct {v2, p0, p1, v1}, Lcom/appbrain/w/a$c;-><init>(Lcom/appbrain/w/a;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

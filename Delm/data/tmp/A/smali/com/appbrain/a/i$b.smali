.class final Lcom/appbrain/a/i$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/appbrain/w/a;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/appbrain/w/a;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/i$b;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/appbrain/a/i$b;->c:Lcom/appbrain/w/a;

    iput p3, p0, Lcom/appbrain/a/i$b;->d:I

    iput p4, p0, Lcom/appbrain/a/i$b;->e:I

    iput p5, p0, Lcom/appbrain/a/i$b;->f:I

    iput p6, p0, Lcom/appbrain/a/i$b;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    iget-object p1, p0, Lcom/appbrain/a/i$b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/i$b;->c:Lcom/appbrain/w/a;

    iget-object v1, p0, Lcom/appbrain/a/i$b;->b:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/appbrain/w/a;->b(Landroid/view/View;IIIILandroid/view/animation/Animation$AnimationListener;)V

    return-void

    :cond_0
    iget-object v7, p0, Lcom/appbrain/a/i$b;->c:Lcom/appbrain/w/a;

    iget-object v8, p0, Lcom/appbrain/a/i$b;->b:Landroid/view/View;

    iget v9, p0, Lcom/appbrain/a/i$b;->d:I

    iget v10, p0, Lcom/appbrain/a/i$b;->e:I

    iget v11, p0, Lcom/appbrain/a/i$b;->f:I

    iget v12, p0, Lcom/appbrain/a/i$b;->g:I

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/appbrain/w/a;->b(Landroid/view/View;IIIILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

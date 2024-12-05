.class final Lcom/appbrain/a/i$a;
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
.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/widget/RelativeLayout;

.field final synthetic e:Lcom/appbrain/w/a;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Lcom/appbrain/w/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/i$a;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/appbrain/a/i$a;->c:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/appbrain/a/i$a;->d:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/appbrain/a/i$a;->e:Lcom/appbrain/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/appbrain/a/i$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/appbrain/a/i$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/appbrain/a/i$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/appbrain/a/i$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/appbrain/a/i$a;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/appbrain/a/i$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_0
    iget-object v4, p0, Lcom/appbrain/a/i$a;->d:Landroid/widget/RelativeLayout;

    if-eq p1, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    sub-int/2addr v5, p1

    add-int/2addr v3, v5

    move-object p1, v4

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {p1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/appbrain/a/i$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/appbrain/a/i$a;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/appbrain/a/i$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/appbrain/a/i$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    iget-object p1, p0, Lcom/appbrain/a/i$a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/appbrain/a/i$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1, p1}, Lcom/appbrain/a/q;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/appbrain/a/i$a;->e:Lcom/appbrain/w/a;

    iget-object v2, p0, Lcom/appbrain/a/i$a;->b:Landroid/widget/TextView;

    new-instance v7, Lcom/appbrain/a/i$a$a;

    invoke-direct {v7, p0, p1, v0}, Lcom/appbrain/a/i$a$a;-><init>(Lcom/appbrain/a/i$a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/appbrain/w/a;->b(Landroid/view/View;IIIILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

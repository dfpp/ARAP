.class public Lcom/appbrain/a/o1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/a/b$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/content/Context;Lcom/appbrain/a/b$e;)Landroid/view/ViewGroup;
    .locals 13

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v3

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v4

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v5

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x42e00000    # 112.0f

    invoke-static {v11}, Lcom/appbrain/o/p0;->c(F)I

    move-result v12

    invoke-static {v11}, Lcom/appbrain/o/p0;->c(F)I

    move-result v11

    invoke-direct {v10, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v11

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v11, p2, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    invoke-virtual {v9, v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v11, p2, Lcom/appbrain/a/b$e;->b:Landroid/widget/TextView;

    invoke-virtual {v9, v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v10

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v7, p2, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {v12, v7, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p2, Lcom/appbrain/a/b$e;->c:Landroid/widget/ImageView;

    invoke-virtual {v12, v7, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    iput v7, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v7, p2, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {v10, v7, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p2, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {v10, v7, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    iput v7, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v7, p2, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {v10, v7, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p2, Lcom/appbrain/a/b$e;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v7, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {v3}, Lcom/appbrain/o/p0;->c(F)I

    move-result v3

    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p2, Lcom/appbrain/a/b$e;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p2, p2, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final c(Landroid/content/Context;Lcom/appbrain/a/b$e;)Landroid/view/ViewGroup;
    .locals 10

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    invoke-static {v1}, Lcom/appbrain/o/p0;->c(F)I

    move-result v3

    invoke-static {v1}, Lcom/appbrain/o/p0;->c(F)I

    move-result v4

    invoke-static {v1}, Lcom/appbrain/o/p0;->c(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p2, Lcom/appbrain/a/b$e;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v4}, Lcom/appbrain/o/p0;->c(F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p2, Lcom/appbrain/a/b$e;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v6, p2, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p2, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v9

    invoke-virtual {v2, v6, v8, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v6, p2, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p2, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42e00000    # 112.0f

    invoke-static {v6}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-static {v6}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    invoke-direct {v2, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v6, p2, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    invoke-virtual {v0, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-virtual {v2, v6, v8, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v6, p2, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p2, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-static {v1}, Lcom/appbrain/o/p0;->c(F)I

    move-result v1

    invoke-virtual {v2, v6, v8, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p2, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p2, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p2, Lcom/appbrain/a/b$e;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p2, Lcom/appbrain/a/b$e;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p2, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p2, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

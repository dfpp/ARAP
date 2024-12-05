.class public Lcom/appbrain/a/p1;
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

.method private static d(Landroid/content/Context;Lcom/appbrain/a/b$e;)Landroid/view/ViewGroup;
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p1, Lcom/appbrain/a/b$e;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p1, p1, Lcom/appbrain/a/b$e;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Landroid/content/Context;Lcom/appbrain/a/b$e;)Landroid/view/ViewGroup;
    .locals 12

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

    invoke-static {p1, p2}, Lcom/appbrain/a/p1;->d(Landroid/content/Context;Lcom/appbrain/a/b$e;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41d00000    # 26.0f

    invoke-static {v6}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v6, p2, Lcom/appbrain/a/b$e;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-static {v6}, Lcom/appbrain/o/p0;->c(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p2, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p2, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v6}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-static {v6}, Lcom/appbrain/o/p0;->c(F)I

    move-result v8

    invoke-static {v6}, Lcom/appbrain/o/p0;->c(F)I

    move-result v10

    invoke-virtual {v3, v7, v9, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p2, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p2, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v11, p2, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    invoke-virtual {v7, v11, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v10, p2, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {v9, v10, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v10, p2, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {v9, v10, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v6}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    iput v6, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v6, p2, Lcom/appbrain/a/b$e;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p2, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.method public final c(Landroid/content/Context;Lcom/appbrain/a/b$e;)Landroid/view/ViewGroup;
    .locals 11

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v3

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3, v5, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v8

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v10

    invoke-virtual {v3, v7, v5, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-static {p1, p2}, Lcom/appbrain/a/p1;->d(Landroid/content/Context;Lcom/appbrain/a/b$e;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x42280000    # 42.0f

    invoke-static {v3}, Lcom/appbrain/o/p0;->c(F)I

    move-result v3

    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p2, Lcom/appbrain/a/b$e;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v3

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-virtual {p1, v3, v5, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p2, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v3

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v8

    invoke-virtual {p1, v3, v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p2, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v3

    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p2, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    invoke-virtual {v0, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v3

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-virtual {p1, v3, v5, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p2, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v3

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v8

    invoke-virtual {p1, v3, v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p2, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p2, Lcom/appbrain/a/b$e;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v3

    invoke-static {v9}, Lcom/appbrain/o/p0;->c(F)I

    move-result v4

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p2, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

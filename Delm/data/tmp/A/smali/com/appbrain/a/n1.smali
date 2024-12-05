.class public Lcom/appbrain/a/n1;
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

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/content/Context;Lcom/appbrain/a/b$e;)Landroid/view/ViewGroup;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lcom/appbrain/o/p0;->c(F)I

    move-result v5

    invoke-static {v4}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    invoke-static {v4}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-static {v4}, Lcom/appbrain/o/p0;->c(F)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v4}, Lcom/appbrain/o/p0;->c(F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-static/range {p1 .. p2}, Lcom/appbrain/a/n1;->d(Landroid/content/Context;Lcom/appbrain/a/b$e;)Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v2, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x42080000    # 34.0f

    invoke-static {v8}, Lcom/appbrain/o/p0;->c(F)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v8, v1, Lcom/appbrain/a/b$e;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x42e00000    # 112.0f

    invoke-static {v11}, Lcom/appbrain/o/p0;->c(F)I

    move-result v12

    invoke-static {v11}, Lcom/appbrain/o/p0;->c(F)I

    move-result v11

    invoke-direct {v10, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v11, v1, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    invoke-virtual {v8, v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v4}, Lcom/appbrain/o/p0;->c(F)I

    move-result v11

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v13

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v14

    invoke-virtual {v0, v13, v9, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v13, v1, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {v11, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v13

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v14

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v15

    invoke-virtual {v0, v13, v9, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v13, v1, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {v11, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v13

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v14

    invoke-virtual {v0, v13, v9, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v13, v1, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {v11, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v13

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v14

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v12

    invoke-virtual {v0, v13, v9, v14, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v9, v1, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {v11, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, v1, Lcom/appbrain/a/b$e;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v4}, Lcom/appbrain/o/p0;->c(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, v1, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method

.method public final c(Landroid/content/Context;Lcom/appbrain/a/b$e;)Landroid/view/ViewGroup;
    .locals 9

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

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v5

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-static {p1, p2}, Lcom/appbrain/a/n1;->d(Landroid/content/Context;Lcom/appbrain/a/b$e;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p2, Lcom/appbrain/a/b$e;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, v2, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p2, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v8

    invoke-virtual {p1, v2, v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p2, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42e00000    # 112.0f

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    invoke-static {v2}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    invoke-direct {p1, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p2, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    invoke-virtual {p1, v2, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p2, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v6

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v8

    invoke-virtual {p1, v2, v7, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p2, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p2, Lcom/appbrain/a/b$e;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v5}, Lcom/appbrain/o/p0;->c(F)I

    move-result v2

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p2, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-object v0
.end method

.class final Lcom/appbrain/a/i$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/a/i$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/i$o;-><init>()V

    return-void
.end method

.method private static b(Landroid/widget/TextView;Lcom/appbrain/a/i$m;Lcom/appbrain/a/i$p;)V
    .locals 5

    iget-object v0, p1, Lcom/appbrain/a/i$h;->c:Lcom/appbrain/a/i$j;

    iget v1, v0, Lcom/appbrain/a/i$j;->d:I

    iget v2, v0, Lcom/appbrain/a/i$j;->e:I

    iget v0, v0, Lcom/appbrain/a/i$j;->f:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v3}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p2, v4}, Lcom/appbrain/a/i$p;->b(F)F

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/appbrain/s/a;->b(IIIIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/appbrain/o/v;->i(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0, p1}, Lcom/appbrain/a/i;->g(Landroid/widget/TextView;Lcom/appbrain/a/i$m;)V

    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {p2, p1}, Lcom/appbrain/a/i$p;->a(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 p1, 0x41000000    # 8.0f

    invoke-virtual {p2, p1}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p2, v1}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v2

    invoke-virtual {p2, p1}, Lcom/appbrain/a/i$p;->c(F)I

    move-result p1

    invoke-virtual {p2, v1}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v1

    invoke-virtual {p0, v0, v2, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 p1, 0x42c00000    # 96.0f

    invoke-virtual {p2, p1}, Lcom/appbrain/a/i$p;->c(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/appbrain/a/i$m;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-virtual {v5, v1, v2}, Lcom/appbrain/a/i$h;->a(II)Lcom/appbrain/a/i$p;

    move-result-object v6

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v6, v1}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v6, v2}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v7

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-virtual {v6, v2}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v2

    iget v3, v5, Lcom/appbrain/a/i$h;->b:I

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    if-le v3, v7, :cond_0

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    new-instance v9, Lcom/appbrain/o/t0;

    invoke-direct {v9, v0}, Lcom/appbrain/o/t0;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/appbrain/o/t0;->setMaxLines(I)V

    iget-object v2, v5, Lcom/appbrain/a/i$m;->d:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v6, v2}, Lcom/appbrain/a/i$p;->a(F)F

    move-result v2

    invoke-virtual {v9, v2}, Lcom/appbrain/o/t0;->setTextSize(F)V

    iget-object v2, v5, Lcom/appbrain/a/i$h;->c:Lcom/appbrain/a/i$j;

    iget v2, v2, Lcom/appbrain/a/i$j;->c:I

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v11, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v12, Lcom/appbrain/o/t0;

    invoke-direct {v12, v0}, Lcom/appbrain/o/t0;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v12, v5, v6}, Lcom/appbrain/a/i$o;->b(Landroid/widget/TextView;Lcom/appbrain/a/i$m;Lcom/appbrain/a/i$p;)V

    invoke-static {v13, v5, v6}, Lcom/appbrain/a/i$o;->b(Landroid/widget/TextView;Lcom/appbrain/a/i$m;Lcom/appbrain/a/i$p;)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v14, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, v5, Lcom/appbrain/a/i$h;->c:Lcom/appbrain/a/i$j;

    iget v2, v1, Lcom/appbrain/a/i$j;->b:I

    iget v1, v1, Lcom/appbrain/a/i$j;->a:I

    if-ne v2, v1, :cond_1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0xff0000

    and-int v4, v1, v3

    move-object v15, v11

    int-to-double v10, v4

    const-wide v16, 0x3fee666666666666L    # 0.95

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v16

    double-to-int v4, v10

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    const v3, 0xff00

    and-int v4, v1, v3

    int-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v16

    double-to-int v4, v10

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    and-int/lit16 v1, v1, 0xff

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v16

    double-to-int v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    move v4, v1

    goto :goto_1

    :cond_1
    move-object v15, v11

    move v4, v2

    :goto_1
    new-instance v10, Lcom/appbrain/a/i$o$a;

    iget-object v1, v5, Lcom/appbrain/a/i$h;->c:Lcom/appbrain/a/i$j;

    iget v3, v1, Lcom/appbrain/a/i$j;->a:I

    move-object v1, v10

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/appbrain/a/i$o$a;-><init>(Lcom/appbrain/a/i$o;IILcom/appbrain/a/i$m;Lcom/appbrain/a/i$p;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v0

    invoke-virtual {v0, v1, v10}, Lcom/appbrain/o/v;->i(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v7, v8, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    move-object v0, v15

    invoke-virtual {v1, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v1, v12, v13}, Lcom/appbrain/a/i;->e(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

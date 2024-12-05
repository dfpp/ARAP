.class final Lcom/appbrain/a/i$n;
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
    name = "n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/i$n;-><init>()V

    return-void
.end method

.method private static b(Landroid/widget/TextView;Lcom/appbrain/a/i$m;Lcom/appbrain/a/i$p;)V
    .locals 5

    iget-object v0, p1, Lcom/appbrain/a/i$h;->c:Lcom/appbrain/a/i$j;

    iget v1, v0, Lcom/appbrain/a/i$j;->d:I

    iget v2, v0, Lcom/appbrain/a/i$j;->e:I

    iget v0, v0, Lcom/appbrain/a/i$j;->f:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p2, v3}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/appbrain/s/a;->b(IIIIF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/appbrain/o/v;->i(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0, p1}, Lcom/appbrain/a/i;->g(Landroid/widget/TextView;Lcom/appbrain/a/i$m;)V

    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {p2, p1}, Lcom/appbrain/a/i$p;->a(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 p1, 0x40800000    # 4.0f

    invoke-virtual {p2, p1}, Lcom/appbrain/a/i$p;->c(F)I

    move-result p1

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p2, v0}, Lcom/appbrain/a/i$p;->c(F)I

    move-result p2

    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/appbrain/a/i$m;)Landroid/view/View;
    .locals 10

    const/16 v0, 0x64

    const/16 v1, 0xc8

    invoke-virtual {p2, v0, v1}, Lcom/appbrain/a/i$h;->a(II)Lcom/appbrain/a/i$p;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v1

    new-instance v2, Lcom/appbrain/o/t0;

    invoke-direct {v2, p1}, Lcom/appbrain/o/t0;-><init>(Landroid/content/Context;)V

    iget-object v3, p2, Lcom/appbrain/a/i$m;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p2, Lcom/appbrain/a/i$h;->a:I

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-static {v4}, Lcom/appbrain/o/p0;->c(F)I

    move-result v4

    if-le v3, v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    :goto_0
    invoke-virtual {v2, v3}, Lcom/appbrain/o/t0;->setMaxLines(I)V

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v3}, Lcom/appbrain/a/i$p;->a(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/appbrain/o/t0;->setTextSize(F)V

    iget-object v3, p2, Lcom/appbrain/a/i$h;->c:Lcom/appbrain/a/i$j;

    iget v3, v3, Lcom/appbrain/a/i$j;->c:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v0, v7}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v7

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v7, Lcom/appbrain/o/t0;

    invoke-direct {v7, p1}, Lcom/appbrain/o/t0;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v7, p2, v0}, Lcom/appbrain/a/i$n;->b(Landroid/widget/TextView;Lcom/appbrain/a/i$m;Lcom/appbrain/a/i$p;)V

    invoke-static {v8, p2, v0}, Lcom/appbrain/a/i$n;->b(Landroid/widget/TextView;Lcom/appbrain/a/i$m;Lcom/appbrain/a/i$p;)V

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v1, p2, Lcom/appbrain/a/i$h;->a:I

    iget-object p2, p2, Lcom/appbrain/a/i$h;->c:Lcom/appbrain/a/i$j;

    invoke-static {v1, v0, p2}, Lcom/appbrain/a/i;->b(ILcom/appbrain/a/i$p;Lcom/appbrain/a/i$j;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/appbrain/o/v;->i(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0, v7, v8}, Lcom/appbrain/a/i;->e(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    return-object p1
.end method

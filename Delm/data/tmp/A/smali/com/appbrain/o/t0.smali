.class public final Lcom/appbrain/o/t0;
.super Landroid/widget/TextView;
.source ""


# instance fields
.field private b:I

.field private c:F

.field private d:I

.field private e:F

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/appbrain/o/t0;->d:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/appbrain/o/t0;->e:F

    const-string p1, ""

    iput-object p1, p0, Lcom/appbrain/o/t0;->f:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/appbrain/o/t0;->setMaxLines(I)V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/appbrain/o/t0;->c:F

    return-void
.end method

.method private static a(FLandroid/text/TextPaint;Ljava/lang/String;III)Z
    .locals 8

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    new-instance p0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-gt p1, p5, :cond_1

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getHeight()I

    move-result p0

    if-le p0, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 15

    move-object v0, p0

    invoke-super/range {p0 .. p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget v1, v0, Lcom/appbrain/o/t0;->c:F

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/appbrain/o/t0;->d:I

    if-ne v2, v4, :cond_0

    iget-object v4, v0, Lcom/appbrain/o/t0;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v1, v0, Lcom/appbrain/o/t0;->e:F

    goto/16 :goto_2

    :cond_0
    iput v2, v0, Lcom/appbrain/o/t0;->d:I

    iput-object v3, v0, Lcom/appbrain/o/t0;->f:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_1

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v3, v5, :cond_2

    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v4, v3

    if-lez v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Lcom/appbrain/o/t0;->b:I

    iget v11, v0, Lcom/appbrain/o/t0;->c:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    int-to-float v12, v7

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    new-instance v13, Landroid/text/TextPaint;

    invoke-direct {v13, v7}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v13, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move v5, v11

    move-object v6, v13

    move-object v7, v1

    move v8, v2

    move v9, v4

    move v10, v3

    invoke-static/range {v5 .. v10}, Lcom/appbrain/o/t0;->a(FLandroid/text/TextPaint;Ljava/lang/String;III)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    sub-float v5, v11, v12

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    add-float v5, v11, v12

    const/high16 v6, 0x40000000    # 2.0f

    div-float v14, v5, v6

    move v5, v14

    move-object v6, v13

    move-object v7, v1

    move v8, v2

    move v9, v4

    move v10, v3

    invoke-static/range {v5 .. v10}, Lcom/appbrain/o/t0;->a(FLandroid/text/TextPaint;Ljava/lang/String;III)Z

    move-result v5

    if-eqz v5, :cond_4

    move v11, v14

    goto :goto_0

    :cond_4
    move v12, v14

    goto :goto_0

    :cond_5
    move v11, v12

    :goto_1
    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v11, v1

    if-ltz v1, :cond_6

    float-to-double v1, v11

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v11, v1

    :cond_6
    move v1, v11

    :cond_7
    iput v1, v0, Lcom/appbrain/o/t0;->e:F

    :cond_8
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    const/4 v2, 0x0

    invoke-super {p0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-super/range {p0 .. p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_9
    return-void
.end method

.method public final setMaxLines(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    iput p1, p0, Lcom/appbrain/o/t0;->b:I

    return-void
.end method

.method public final setTextSize(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/appbrain/o/t0;->c:F

    return-void
.end method

.method public final setTextSize(IF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/appbrain/o/t0;->c:F

    return-void
.end method

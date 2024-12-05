.class public final Lcom/appbrain/s/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(IF)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p0, v0, v0, p1}, Lcom/appbrain/s/a;->b(IIIIF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static b(IIIIF)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    new-instance p0, Lcom/appbrain/s/a$a;

    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {p0, p1, v0}, Lcom/appbrain/s/a$a;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p0, p3, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, p4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object p0
.end method

.method public static c(Landroid/graphics/drawable/ShapeDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/high16 v0, 0x44000000    # 512.0f

    invoke-static {p0, v0}, Lcom/appbrain/s/a;->d(Landroid/graphics/drawable/ShapeDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x44ffffff    # 2047.9999f

    invoke-static {p0, v1}, Lcom/appbrain/s/a;->d(Landroid/graphics/drawable/ShapeDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a7

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-virtual {v2, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v3, [I

    const v4, 0x101009c

    aput v4, v0, v6

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v3, [I

    const v3, 0x10100a1

    aput v3, v0, v6

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v6, [I

    invoke-virtual {v2, v0, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private static d(Landroid/graphics/drawable/ShapeDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    invoke-direct {p1, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p1

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ShapeDrawable\'s Shape should implement clone()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Lcom/appbrain/s/b;
.super Landroid/graphics/drawable/Drawable;
.source ""


# instance fields
.field private a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(II)V
    .locals 10

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/appbrain/o/p0;->c(F)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v8, p2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, v0

    const/high16 v2, 0x40a00000    # 5.0f

    div-float v2, p2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    move v4, p2

    move v5, p2

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    neg-int p1, v0

    int-to-float v6, p1

    move v3, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move v4, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/appbrain/s/b;->a:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, v1, v0, v0}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/s/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

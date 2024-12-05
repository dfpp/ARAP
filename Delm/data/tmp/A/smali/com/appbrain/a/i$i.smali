.class final Lcom/appbrain/a/i$i;
.super Lcom/appbrain/a/i$r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/i$r;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/i$i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/appbrain/a/i$s;)Landroid/view/View;
    .locals 15

    move-object v0, p0

    const/16 v1, 0x140

    const/16 v2, 0x32

    move-object/from16 v4, p2

    invoke-virtual {v4, v1, v2}, Lcom/appbrain/a/i$h;->a(II)Lcom/appbrain/a/i$p;

    move-result-object v5

    new-instance v6, Lcom/appbrain/a/i$j;

    invoke-direct {v6}, Lcom/appbrain/a/i$j;-><init>()V

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v5, v1}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v9

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v5, v1}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v10

    iget v1, v6, Lcom/appbrain/a/i$j;->g:I

    invoke-static {v1, v5}, Lcom/appbrain/a/i;->c(ILcom/appbrain/a/i$p;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v7

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance v2, Lcom/appbrain/a/i$i$a;

    invoke-direct {v2, p0}, Lcom/appbrain/a/i$i$a;-><init>(Lcom/appbrain/a/i$i;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    invoke-static {v1}, Lcom/appbrain/s/a;->c(Landroid/graphics/drawable/ShapeDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v14, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v14, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance v1, Lcom/appbrain/a/i$i$b;

    invoke-direct {v1, p0}, Lcom/appbrain/a/i$i$b;-><init>(Lcom/appbrain/a/i$i;)V

    invoke-virtual {v14, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v14}, Lcom/appbrain/a/i;->d(Landroid/content/Context;Lcom/appbrain/a/i$s;Lcom/appbrain/a/i$p;Lcom/appbrain/a/i$j;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIIZZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

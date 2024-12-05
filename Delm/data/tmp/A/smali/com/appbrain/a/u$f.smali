.class final Lcom/appbrain/a/u$f;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/u;->y(II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(Lcom/appbrain/a/u;I)V
    .locals 0

    iput p2, p0, Lcom/appbrain/a/u$f;->a:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final resize(II)Landroid/graphics/Shader;
    .locals 9

    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    new-array v7, v0, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v7, v0

    iget v0, p0, Lcom/appbrain/a/u$f;->a:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/4 v2, 0x1

    aput v0, v7, v2

    const/4 v0, 0x2

    aput v1, v7, v0

    new-instance v1, Landroid/graphics/RadialGradient;

    div-int/2addr p1, v0

    int-to-float v3, p1

    div-int/2addr p2, v0

    int-to-float v4, p2

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v1

    :array_0
    .array-data 4
        -0x70000000
        -0x70000000
        0x0
    .end array-data
.end method

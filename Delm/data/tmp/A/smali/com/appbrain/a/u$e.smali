.class final Lcom/appbrain/a/u$e;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/u;->G()Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/appbrain/a/u;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final resize(II)Landroid/graphics/Shader;
    .locals 9

    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    const/4 v0, 0x5

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    new-array v7, v0, [F

    fill-array-data v7, :array_1

    new-instance v0, Landroid/graphics/RadialGradient;

    div-int/lit8 p1, p1, 0x2

    int-to-float v3, p1

    div-int/lit8 p2, p2, 0x2

    int-to-float v4, p2

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x5f000001
        0x50ffffff
        0x28ffffff
        0x8ffffff
        0xffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f0f5c29    # 0.56f
        0x3f51eb85    # 0.82f
        0x3f800000    # 1.0f
    .end array-data
.end method

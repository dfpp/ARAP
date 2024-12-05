.class final Lcom/appbrain/a/i$i$b;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/i$i;->a(Landroid/content/Context;Lcom/appbrain/a/i$s;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/appbrain/a/i$i;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final resize(II)Landroid/graphics/Shader;
    .locals 8

    const/4 p1, 0x5

    new-array v5, p1, [I

    fill-array-data v5, :array_0

    new-array v6, p1, [F

    fill-array-data v6, :array_1

    new-instance p1, Landroid/graphics/LinearGradient;

    int-to-float v4, p2

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object p1

    :array_0
    .array-data 4
        -0xdbdbdc
        -0x989798
        -0xc2c1c2
        -0xc2c1c2
        -0xdbdbdc
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3ca3d70a    # 0.02f
        0x3d23d70a    # 0.04f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

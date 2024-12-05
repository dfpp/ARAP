.class final Lcom/appbrain/a/u$d;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/u;->x([I)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I


# direct methods
.method constructor <init>(Lcom/appbrain/a/u;[I)V
    .locals 0

    iput-object p2, p0, Lcom/appbrain/a/u$d;->a:[I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final resize(II)Landroid/graphics/Shader;
    .locals 8

    new-instance p1, Landroid/graphics/LinearGradient;

    int-to-float v4, p2

    iget-object v5, p0, Lcom/appbrain/a/u$d;->a:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object p1
.end method

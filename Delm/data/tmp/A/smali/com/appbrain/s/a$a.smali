.class final Lcom/appbrain/s/a$a;
.super Landroid/graphics/drawable/GradientDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/s/a;->b(IIIIF)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    return-void
.end method


# virtual methods
.method public final isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final onStateChange([I)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    const v5, 0x10100a7

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/high16 v0, 0x44000000    # 512.0f

    :goto_2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_5

    :cond_2
    array-length v0, p1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_5

    aget v4, p1, v2

    const v5, 0x101009c

    if-eq v4, v5, :cond_4

    const v5, 0x10100a1

    if-ne v4, v5, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    const v0, 0x44ffffff    # 2047.9999f

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_5
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

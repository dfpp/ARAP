.class final Lcom/appbrain/a/i$t;
.super Lcom/appbrain/a/i$r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "t"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/appbrain/a/i$r;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/appbrain/a/i$s;)Landroid/view/View;
    .locals 12

    const/16 v0, 0x140

    const/16 v2, 0x32

    invoke-virtual {p2, v0, v2}, Lcom/appbrain/a/i$h;->a(II)Lcom/appbrain/a/i$p;

    move-result-object v2

    iget-object v3, p2, Lcom/appbrain/a/i$h;->c:Lcom/appbrain/a/i$j;

    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {v2, v0}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v6

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v2, v0}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v7

    iget v0, v3, Lcom/appbrain/a/i$j;->g:I

    invoke-static {v0, v2}, Lcom/appbrain/a/i;->c(ILcom/appbrain/a/i$p;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v4

    iget v0, v3, Lcom/appbrain/a/i$j;->d:I

    iget v5, v3, Lcom/appbrain/a/i$j;->e:I

    invoke-static {v5}, Lcom/appbrain/a/i;->k(I)I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v2, v9}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v0, v5, v8, v9, v10}, Lcom/appbrain/s/a;->b(IIIIF)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v8, 0x2

    new-array v8, v8, [I

    iget v9, v3, Lcom/appbrain/a/i$j;->a:I

    const/4 v10, 0x0

    aput v9, v8, v10

    iget v9, v3, Lcom/appbrain/a/i$j;->b:I

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-direct {v11, v0, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v11}, Lcom/appbrain/a/i;->d(Landroid/content/Context;Lcom/appbrain/a/i$s;Lcom/appbrain/a/i$p;Lcom/appbrain/a/i$j;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIIZZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

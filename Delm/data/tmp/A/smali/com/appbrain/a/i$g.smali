.class final Lcom/appbrain/a/i$g;
.super Lcom/appbrain/a/i$r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/i$r;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/i$g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/appbrain/a/i$s;)Landroid/view/View;
    .locals 14

    const/16 v0, 0x140

    const/16 v1, 0x32

    move-object/from16 v3, p2

    invoke-virtual {v3, v0, v1}, Lcom/appbrain/a/i$h;->a(II)Lcom/appbrain/a/i$p;

    move-result-object v4

    new-instance v5, Lcom/appbrain/a/i$j;

    invoke-direct {v5}, Lcom/appbrain/a/i$j;-><init>()V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {v4, v0}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v8

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {v4, v0}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v9

    invoke-virtual {v4, v0}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v10

    iget v0, v5, Lcom/appbrain/a/i$j;->g:I

    invoke-static {v0, v4}, Lcom/appbrain/a/i;->i(ILcom/appbrain/a/i$p;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    iget v0, v5, Lcom/appbrain/a/i$j;->d:I

    iget v1, v5, Lcom/appbrain/a/i$j;->e:I

    invoke-static {v1}, Lcom/appbrain/a/i;->k(I)I

    move-result v2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7}, Lcom/appbrain/a/i$p;->c(F)I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v0, v1, v2, v7, v11}, Lcom/appbrain/s/a;->b(IIIIF)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, v5, Lcom/appbrain/a/i$j;->a:I

    const/4 v11, 0x0

    aput v2, v1, v11

    iget v2, v5, Lcom/appbrain/a/i$j;->b:I

    const/4 v11, 0x1

    aput v2, v1, v11

    invoke-direct {v13, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v12, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v13}, Lcom/appbrain/a/i;->d(Landroid/content/Context;Lcom/appbrain/a/i$s;Lcom/appbrain/a/i$p;Lcom/appbrain/a/i$j;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIIZZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

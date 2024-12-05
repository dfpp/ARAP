.class final Lcom/appbrain/a/i$d;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Paint;

.field final synthetic d:Lcom/appbrain/a/i$j;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:I


# direct methods
.method constructor <init>(Lcom/appbrain/a/i$j;IIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/i$d;->d:Lcom/appbrain/a/i$j;

    iput p2, p0, Lcom/appbrain/a/i$d;->e:I

    iput p3, p0, Lcom/appbrain/a/i$d;->f:I

    iput p4, p0, Lcom/appbrain/a/i$d;->g:I

    iput p5, p0, Lcom/appbrain/a/i$d;->h:I

    iput p6, p0, Lcom/appbrain/a/i$d;->i:I

    iput p7, p0, Lcom/appbrain/a/i$d;->j:I

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/i$d;->a:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/i$d;->b:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/i$d;->c:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/appbrain/a/i$d;->d:Lcom/appbrain/a/i$j;

    iget p2, p2, Lcom/appbrain/a/i$j;->d:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/appbrain/a/i$d;->c:Landroid/graphics/Paint;

    iget p2, p0, Lcom/appbrain/a/i$d;->e:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/appbrain/a/i$d;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lcom/appbrain/a/i$d;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/appbrain/a/i$d;->c:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/appbrain/a/i$d;->a:Landroid/graphics/Path;

    iget p2, p0, Lcom/appbrain/a/i$d;->e:I

    neg-int p2, p2

    int-to-float p2, p2

    iget p3, p0, Lcom/appbrain/a/i$d;->f:I

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Lcom/appbrain/a/i$d;->a:Landroid/graphics/Path;

    iget p2, p0, Lcom/appbrain/a/i$d;->g:I

    int-to-float p2, p2

    iget p3, p0, Lcom/appbrain/a/i$d;->h:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/appbrain/a/i$d;->a:Landroid/graphics/Path;

    iget p2, p0, Lcom/appbrain/a/i$d;->i:I

    iget p3, p0, Lcom/appbrain/a/i$d;->e:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    iget p3, p0, Lcom/appbrain/a/i$d;->f:I

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/i$d;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/appbrain/a/i$d;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/appbrain/a/i$d;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/appbrain/a/i$d;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/appbrain/a/i$d;->a:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v1, p0, Lcom/appbrain/a/i$d;->j:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/appbrain/a/i$d;->b:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/graphics/Path;->offset(FFLandroid/graphics/Path;)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

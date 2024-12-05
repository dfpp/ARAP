.class final Lcom/appbrain/a/i$o$a;
.super Lcom/appbrain/s/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/i$o;->a(Landroid/content/Context;Lcom/appbrain/a/i$m;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Path;

.field final synthetic d:Lcom/appbrain/a/i$m;

.field final synthetic e:Lcom/appbrain/a/i$p;


# direct methods
.method constructor <init>(Lcom/appbrain/a/i$o;IILcom/appbrain/a/i$m;Lcom/appbrain/a/i$p;)V
    .locals 0

    iput-object p4, p0, Lcom/appbrain/a/i$o$a;->d:Lcom/appbrain/a/i$m;

    iput-object p5, p0, Lcom/appbrain/a/i$o$a;->e:Lcom/appbrain/a/i$p;

    invoke-direct {p0, p2, p3}, Lcom/appbrain/s/b;-><init>(II)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/appbrain/a/i$o$a;->b:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/appbrain/a/i$o$a;->d:Lcom/appbrain/a/i$m;

    iget-object p2, p2, Lcom/appbrain/a/i$h;->c:Lcom/appbrain/a/i$j;

    iget p2, p2, Lcom/appbrain/a/i$j;->h:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/appbrain/s/b;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/appbrain/a/i$o$a;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/appbrain/a/i$o$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final setBounds(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/i$o$a;->c:Landroid/graphics/Path;

    int-to-float p1, p1

    int-to-float v1, p4

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/appbrain/a/i$o$a;->c:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/appbrain/a/i$o$a;->e:Lcom/appbrain/a/i$p;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v3, v4}, Lcom/appbrain/a/i$p;->b(F)F

    move-result v3

    sub-float v3, p1, v3

    int-to-float v5, p2

    iget-object v6, p0, Lcom/appbrain/a/i$o$a;->e:Lcom/appbrain/a/i$p;

    const/high16 v7, 0x42480000    # 50.0f

    invoke-virtual {v6, v7}, Lcom/appbrain/a/i$p;->b(F)F

    move-result v6

    sub-float/2addr v5, v6

    int-to-float p3, p3

    iget-object v6, p0, Lcom/appbrain/a/i$o$a;->e:Lcom/appbrain/a/i$p;

    invoke-virtual {v6, v4}, Lcom/appbrain/a/i$p;->b(F)F

    move-result v4

    add-float/2addr v4, p3

    sub-int/2addr p4, p2

    mul-int/lit8 p4, p4, 0x2

    div-int/lit8 p4, p4, 0x3

    add-int/2addr p2, p4

    int-to-float p2, p2

    invoke-direct {v2, v3, v5, v4, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p2, 0x43340000    # 180.0f

    const/high16 p4, -0x3ccc0000    # -180.0f

    invoke-virtual {v0, v2, p2, p4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object p2, p0, Lcom/appbrain/a/i$o$a;->c:Landroid/graphics/Path;

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p2, p0, Lcom/appbrain/a/i$o$a;->c:Landroid/graphics/Path;

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

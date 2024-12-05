.class La/g/a/a/h$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/g/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# static fields
.field private static final q:Landroid/graphics/Matrix;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Matrix;

.field d:Landroid/graphics/Paint;

.field e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/PathMeasure;

.field private g:I

.field final h:La/g/a/a/h$d;

.field i:F

.field j:F

.field k:F

.field l:F

.field m:I

.field n:Ljava/lang/String;

.field o:Ljava/lang/Boolean;

.field final p:La/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, La/g/a/a/h$g;->q:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, La/g/a/a/h$g;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, La/g/a/a/h$g;->i:F

    iput v0, p0, La/g/a/a/h$g;->j:F

    iput v0, p0, La/g/a/a/h$g;->k:F

    iput v0, p0, La/g/a/a/h$g;->l:F

    const/16 v0, 0xff

    iput v0, p0, La/g/a/a/h$g;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, La/g/a/a/h$g;->n:Ljava/lang/String;

    iput-object v0, p0, La/g/a/a/h$g;->o:Ljava/lang/Boolean;

    new-instance v0, La/b/a;

    invoke-direct {v0}, La/b/a;-><init>()V

    iput-object v0, p0, La/g/a/a/h$g;->p:La/b/a;

    new-instance v0, La/g/a/a/h$d;

    invoke-direct {v0}, La/g/a/a/h$d;-><init>()V

    iput-object v0, p0, La/g/a/a/h$g;->h:La/g/a/a/h$d;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, La/g/a/a/h$g;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, La/g/a/a/h$g;->b:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(La/g/a/a/h$g;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, La/g/a/a/h$g;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, La/g/a/a/h$g;->i:F

    iput v0, p0, La/g/a/a/h$g;->j:F

    iput v0, p0, La/g/a/a/h$g;->k:F

    iput v0, p0, La/g/a/a/h$g;->l:F

    const/16 v0, 0xff

    iput v0, p0, La/g/a/a/h$g;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, La/g/a/a/h$g;->n:Ljava/lang/String;

    iput-object v0, p0, La/g/a/a/h$g;->o:Ljava/lang/Boolean;

    new-instance v0, La/b/a;

    invoke-direct {v0}, La/b/a;-><init>()V

    iput-object v0, p0, La/g/a/a/h$g;->p:La/b/a;

    new-instance v1, La/g/a/a/h$d;

    iget-object v2, p1, La/g/a/a/h$g;->h:La/g/a/a/h$d;

    invoke-direct {v1, v2, v0}, La/g/a/a/h$d;-><init>(La/g/a/a/h$d;La/b/a;)V

    iput-object v1, p0, La/g/a/a/h$g;->h:La/g/a/a/h$d;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, La/g/a/a/h$g;->a:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, La/g/a/a/h$g;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, La/g/a/a/h$g;->b:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, La/g/a/a/h$g;->b:Landroid/graphics/Path;

    iget v0, p1, La/g/a/a/h$g;->i:F

    iput v0, p0, La/g/a/a/h$g;->i:F

    iget v0, p1, La/g/a/a/h$g;->j:F

    iput v0, p0, La/g/a/a/h$g;->j:F

    iget v0, p1, La/g/a/a/h$g;->k:F

    iput v0, p0, La/g/a/a/h$g;->k:F

    iget v0, p1, La/g/a/a/h$g;->l:F

    iput v0, p0, La/g/a/a/h$g;->l:F

    iget v0, p1, La/g/a/a/h$g;->g:I

    iput v0, p0, La/g/a/a/h$g;->g:I

    iget v0, p1, La/g/a/a/h$g;->m:I

    iput v0, p0, La/g/a/a/h$g;->m:I

    iget-object v0, p1, La/g/a/a/h$g;->n:Ljava/lang/String;

    iput-object v0, p0, La/g/a/a/h$g;->n:Ljava/lang/String;

    iget-object v0, p1, La/g/a/a/h$g;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, La/g/a/a/h$g;->p:La/b/a;

    invoke-virtual {v1, v0, p0}, La/b/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p1, La/g/a/a/h$g;->o:Ljava/lang/Boolean;

    iput-object p1, p0, La/g/a/a/h$g;->o:Ljava/lang/Boolean;

    return-void
.end method

.method private static a(FFFF)F
    .locals 0

    mul-float p0, p0, p3

    mul-float p1, p1, p2

    sub-float/2addr p0, p1

    return p0
.end method

.method private c(La/g/a/a/h$d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 9

    iget-object v0, p1, La/g/a/a/h$d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p1, La/g/a/a/h$d;->a:Landroid/graphics/Matrix;

    iget-object v0, p1, La/g/a/a/h$d;->j:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p1, La/g/a/a/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    iget-object v0, p1, La/g/a/a/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/a/a/h$e;

    instance-of v1, v0, La/g/a/a/h$d;

    if-eqz v1, :cond_0

    move-object v3, v0

    check-cast v3, La/g/a/a/h$d;

    iget-object v4, p1, La/g/a/a/h$d;->a:Landroid/graphics/Matrix;

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, La/g/a/a/h$g;->c(La/g/a/a/h$d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, La/g/a/a/h$f;

    if-eqz v1, :cond_1

    move-object v4, v0

    check-cast v4, La/g/a/a/h$f;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, La/g/a/a/h$g;->d(La/g/a/a/h$d;La/g/a/a/h$f;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private d(La/g/a/a/h$d;La/g/a/a/h$f;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 7

    int-to-float p4, p4

    iget v0, p0, La/g/a/a/h$g;->k:F

    div-float/2addr p4, v0

    int-to-float p5, p5

    iget v0, p0, La/g/a/a/h$g;->l:F

    div-float/2addr p5, v0

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object p1, p1, La/g/a/a/h$d;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, La/g/a/a/h$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, La/g/a/a/h$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, p4, p5}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-direct {p0, p1}, La/g/a/a/h$g;->e(Landroid/graphics/Matrix;)F

    move-result p1

    const/4 p4, 0x0

    cmpl-float p5, p1, p4

    if-nez p5, :cond_0

    return-void

    :cond_0
    iget-object p5, p0, La/g/a/a/h$g;->a:Landroid/graphics/Path;

    invoke-virtual {p2, p5}, La/g/a/a/h$f;->d(Landroid/graphics/Path;)V

    iget-object p5, p0, La/g/a/a/h$g;->a:Landroid/graphics/Path;

    iget-object v1, p0, La/g/a/a/h$g;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p2}, La/g/a/a/h$f;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, La/g/a/a/h$g;->b:Landroid/graphics/Path;

    iget-object p2, p0, La/g/a/a/h$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, p5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object p1, p0, La/g/a/a/h$g;->b:Landroid/graphics/Path;

    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_4

    :cond_1
    check-cast p2, La/g/a/a/h$c;

    iget v1, p2, La/g/a/a/h$c;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    cmpl-float v1, v1, p4

    if-nez v1, :cond_2

    iget v1, p2, La/g/a/a/h$c;->l:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    :cond_2
    iget v1, p2, La/g/a/a/h$c;->k:F

    iget v4, p2, La/g/a/a/h$c;->m:F

    add-float/2addr v1, v4

    rem-float/2addr v1, v2

    iget v5, p2, La/g/a/a/h$c;->l:F

    add-float/2addr v5, v4

    rem-float/2addr v5, v2

    iget-object v2, p0, La/g/a/a/h$g;->f:Landroid/graphics/PathMeasure;

    if-nez v2, :cond_3

    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v2, p0, La/g/a/a/h$g;->f:Landroid/graphics/PathMeasure;

    :cond_3
    iget-object v2, p0, La/g/a/a/h$g;->f:Landroid/graphics/PathMeasure;

    iget-object v4, p0, La/g/a/a/h$g;->a:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v2, p0, La/g/a/a/h$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    mul-float v1, v1, v2

    mul-float v5, v5, v2

    invoke-virtual {p5}, Landroid/graphics/Path;->reset()V

    cmpl-float v4, v1, v5

    if-lez v4, :cond_4

    iget-object v4, p0, La/g/a/a/h$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v4, v1, v2, p5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v1, p0, La/g/a/a/h$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v1, p4, v5, p5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, La/g/a/a/h$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v2, v1, v5, p5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :goto_0
    invoke-virtual {p5, p4, p4}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_5
    iget-object p4, p0, La/g/a/a/h$g;->b:Landroid/graphics/Path;

    iget-object v1, p0, La/g/a/a/h$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {p4, p5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object p4, p2, La/g/a/a/h$c;->g:La/c/c/b/b;

    invoke-virtual {p4}, La/c/c/b/b;->l()Z

    move-result p4

    const/high16 p5, 0x437f0000    # 255.0f

    if-eqz p4, :cond_9

    iget-object p4, p2, La/g/a/a/h$c;->g:La/c/c/b/b;

    iget-object v1, p0, La/g/a/a/h$g;->e:Landroid/graphics/Paint;

    if-nez v1, :cond_6

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, La/g/a/a/h$g;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_6
    iget-object v1, p0, La/g/a/a/h$g;->e:Landroid/graphics/Paint;

    invoke-virtual {p4}, La/c/c/b/b;->h()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p4}, La/c/c/b/b;->f()Landroid/graphics/Shader;

    move-result-object p4

    iget-object v2, p0, La/g/a/a/h$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {p4, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget p4, p2, La/g/a/a/h$c;->j:F

    mul-float p4, p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p4}, La/c/c/b/b;->e()I

    move-result p4

    iget v2, p2, La/g/a/a/h$c;->j:F

    invoke-static {p4, v2}, La/g/a/a/h;->a(IF)I

    move-result p4

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p4, p0, La/g/a/a/h$g;->b:Landroid/graphics/Path;

    iget v2, p2, La/g/a/a/h$c;->i:I

    if-nez v2, :cond_8

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_2

    :cond_8
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_2
    invoke-virtual {p4, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object p4, p0, La/g/a/a/h$g;->b:Landroid/graphics/Path;

    invoke-virtual {p3, p4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_9
    iget-object p4, p2, La/g/a/a/h$c;->e:La/c/c/b/b;

    invoke-virtual {p4}, La/c/c/b/b;->l()Z

    move-result p4

    if-eqz p4, :cond_e

    iget-object p4, p2, La/g/a/a/h$c;->e:La/c/c/b/b;

    iget-object v1, p0, La/g/a/a/h$g;->d:Landroid/graphics/Paint;

    if-nez v1, :cond_a

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, La/g/a/a/h$g;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_a
    iget-object v1, p0, La/g/a/a/h$g;->d:Landroid/graphics/Paint;

    iget-object v2, p2, La/g/a/a/h$c;->o:Landroid/graphics/Paint$Join;

    if-eqz v2, :cond_b

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_b
    iget-object v2, p2, La/g/a/a/h$c;->n:Landroid/graphics/Paint$Cap;

    if-eqz v2, :cond_c

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_c
    iget v2, p2, La/g/a/a/h$c;->p:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p4}, La/c/c/b/b;->h()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p4}, La/c/c/b/b;->f()Landroid/graphics/Shader;

    move-result-object p4

    iget-object v2, p0, La/g/a/a/h$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {p4, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget p4, p2, La/g/a/a/h$c;->h:F

    mul-float p4, p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3

    :cond_d
    invoke-virtual {p4}, La/c/c/b/b;->e()I

    move-result p4

    iget p5, p2, La/g/a/a/h$c;->h:F

    invoke-static {p4, p5}, La/g/a/a/h;->a(IF)I

    move-result p4

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_3
    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    mul-float v0, v0, p1

    iget p1, p2, La/g/a/a/h$c;->f:F

    mul-float p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, La/g/a/a/h$g;->b:Landroid/graphics/Path;

    invoke-virtual {p3, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_e
    :goto_4
    return-void
.end method

.method private e(Landroid/graphics/Matrix;)F
    .locals 9

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    const/4 p1, 0x0

    aget v1, v0, p1

    float-to-double v1, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    float-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x2

    aget v4, v0, v2

    float-to-double v4, v4

    const/4 v6, 0x3

    aget v7, v0, v6

    float-to-double v7, v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    aget p1, v0, p1

    aget v3, v0, v3

    aget v2, v0, v2

    aget v0, v0, v6

    invoke-static {p1, v3, v2, v0}, La/g/a/a/h$g;->a(FFFF)F

    move-result p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float v1, p1, v0

    :cond_0
    return v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .locals 7

    iget-object v1, p0, La/g/a/a/h$g;->h:La/g/a/a/h$d;

    sget-object v2, La/g/a/a/h$g;->q:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, La/g/a/a/h$g;->c(La/g/a/a/h$d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, La/g/a/a/h$g;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, La/g/a/a/h$g;->h:La/g/a/a/h$d;

    invoke-virtual {v0}, La/g/a/a/h$d;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, La/g/a/a/h$g;->o:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, La/g/a/a/h$g;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public g([I)Z
    .locals 1

    iget-object v0, p0, La/g/a/a/h$g;->h:La/g/a/a/h$d;

    invoke-virtual {v0, p1}, La/g/a/a/h$d;->b([I)Z

    move-result p1

    return p1
.end method

.method public getAlpha()F
    .locals 2

    invoke-virtual {p0}, La/g/a/a/h$g;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .locals 1

    iget v0, p0, La/g/a/a/h$g;->m:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, La/g/a/a/h$g;->setRootAlpha(I)V

    return-void
.end method

.method public setRootAlpha(I)V
    .locals 0

    iput p1, p0, La/g/a/a/h$g;->m:I

    return-void
.end method

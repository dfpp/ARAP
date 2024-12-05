.class public Lcom/appbrain/a/b;
.super Lcom/appbrain/a/j1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/b$g;,
        Lcom/appbrain/a/b$f;,
        Lcom/appbrain/a/b$e;
    }
.end annotation


# static fields
.field static final p:Ljava/lang/String;

.field static final q:Ljava/lang/String;

.field private static final r:[Ljava/lang/Class;

.field private static final s:Ljava/lang/String;

.field private static final t:Ljava/lang/String;

.field private static final u:Ljava/lang/String;

.field private static final v:Ljava/lang/String;

.field private static final w:Ljava/lang/String;

.field private static final x:Ljava/lang/String;


# instance fields
.field private h:Z

.field private i:Z

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/appbrain/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".io"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appbrain/a/b;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".wm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appbrain/a/b;->q:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/appbrain/a/n1;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/appbrain/a/o1;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/appbrain/a/p1;

    aput-object v3, v1, v2

    sput-object v1, Lcom/appbrain/a/b;->r:[Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/b;->s:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appbrain/a/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ImpressionCounted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/b;->t:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appbrain/a/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/b;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appbrain/a/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Light"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/b;->v:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appbrain/a/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Starburst"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/b;->w:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appbrain/a/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/b;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/appbrain/a/j1$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/j1;-><init>(Lcom/appbrain/a/j1$a;)V

    return-void
.end method

.method private A()Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-boolean v0, p0, Lcom/appbrain/a/b;->h:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const v0, -0x464748

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-boolean v2, p0, Lcom/appbrain/a/b;->h:Z

    if-eqz v2, :cond_1

    const v2, -0xa3a4a5

    goto :goto_1

    :cond_1
    const v2, -0x777778

    :goto_1
    iget-boolean v3, p0, Lcom/appbrain/a/b;->h:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v1, -0x1000000

    :goto_2
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x10100a7

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-direct {p0, v2, v1}, Lcom/appbrain/a/b;->v(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v6, [I

    invoke-direct {p0, v0, v1}, Lcom/appbrain/a/b;->v(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method private B()Lcom/appbrain/a/b$f;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/appbrain/a/b;->r:[Ljava/lang/Class;

    iget v1, p0, Lcom/appbrain/a/b;->j:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/a/b$f;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private v(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-static {p2}, Lcom/appbrain/o/p0;->c(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p2, Lcom/appbrain/a/b$d;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p2, p0, v1, v0}, Lcom/appbrain/a/b$d;-><init>(Lcom/appbrain/a/b;Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x41d00000    # 26.0f

    invoke-static {p1}, Lcom/appbrain/o/p0;->c(F)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-static {p1}, Lcom/appbrain/o/p0;->c(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    return-object p2
.end method

.method private static w(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method static synthetic x(Lcom/appbrain/a/b;Lcom/appbrain/a/h$b;Lcom/appbrain/a/b$e;Z)V
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->q()V

    return-void

    :cond_0
    iget v0, p0, Lcom/appbrain/a/b;->o:I

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Lcom/appbrain/a/h$b;->g()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/appbrain/a/h$b;->d()I

    move-result v0

    iput v0, p0, Lcom/appbrain/a/b;->o:I

    :cond_2
    iget v0, p0, Lcom/appbrain/a/b;->o:I

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->q()V

    return-void

    :cond_3
    invoke-virtual {p1, v0}, Lcom/appbrain/a/h$b;->a(I)Lcom/appbrain/a/d;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appbrain/a/h$b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/appbrain/a/b;->k:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/appbrain/a/b;->n:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/appbrain/a/b;->n:Z

    invoke-static {p1}, Lcom/appbrain/a/r;->c(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/appbrain/a/b$c;

    invoke-direct {v1, p0, v0, p1}, Lcom/appbrain/a/b$c;-><init>(Lcom/appbrain/a/b;Lcom/appbrain/a/d;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->a:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p2, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p3, :cond_6

    iget-object p1, v0, Lcom/appbrain/a/d;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p1, v0, Lcom/appbrain/a/d;->b:Ljava/lang/String;

    iget-object p3, p2, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p3, p2, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    iget-boolean p0, p0, Lcom/appbrain/a/b;->h:Z

    if-eqz p0, :cond_5

    const/high16 p0, 0x22000000

    goto :goto_0

    :cond_5
    const/high16 p0, -0x78000000

    :goto_0
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object p0, p2, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    invoke-virtual {p0}, Lcom/appbrain/a/b$g;->b()V

    goto :goto_1

    :cond_6
    iget-object p1, v0, Lcom/appbrain/a/d;->b:Ljava/lang/String;

    :cond_7
    iget-object p0, p2, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1
    iget-object p0, p2, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p2, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p2, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p3, :cond_9

    if-gtz v3, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_3

    :cond_9
    :goto_2
    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/appbrain/o/v;->c(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p3, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    div-int/lit8 p0, p0, 0x3

    :goto_3
    invoke-static {}, Lcom/appbrain/o/e;->a()Lcom/appbrain/o/e;

    move-result-object p3

    iget-object v3, p2, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    sget-object v4, Lcom/appbrain/o/n$a;->c:Lcom/appbrain/o/n$a;

    invoke-static {p1, p0, v4}, Lcom/appbrain/o/n;->a(Ljava/lang/String;ILcom/appbrain/o/n$a;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, v3, p0}, Lcom/appbrain/o/e;->g(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object p0, p2, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    iget-object p1, v0, Lcom/appbrain/a/d;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p2, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p2, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p2, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    iget-object p1, v0, Lcom/appbrain/a/d;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p2, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p2, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p2, Lcom/appbrain/a/b$e;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p2, Lcom/appbrain/a/b$e;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p2, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private y()Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/appbrain/a/j1;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v6, v0, Lcom/appbrain/a/b;->h:Z

    const/4 v7, -0x1

    if-eqz v6, :cond_1

    const/high16 v6, -0x1000000

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/appbrain/a/b;->B()Lcom/appbrain/a/b$f;

    move-result-object v8

    new-instance v9, Lcom/appbrain/a/b$e;

    invoke-direct {v9, v0}, Lcom/appbrain/a/b$e;-><init>(Lcom/appbrain/a/b;)V

    new-instance v10, Lcom/appbrain/a/b$a;

    invoke-direct {v10, v0}, Lcom/appbrain/a/b$a;-><init>(Lcom/appbrain/a/b;)V

    new-instance v11, Landroid/widget/ProgressBar;

    invoke-direct {v11, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v11, v9, Lcom/appbrain/a/b$e;->a:Landroid/widget/ProgressBar;

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v11, v9, Lcom/appbrain/a/b$e;->b:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v11

    iget-object v13, v9, Lcom/appbrain/a/b$e;->b:Landroid/widget/TextView;

    const v14, -0x1dd0d1

    const/high16 v15, 0x40800000    # 4.0f

    invoke-static {v15}, Lcom/appbrain/o/p0;->c(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v14, v5}, Lcom/appbrain/s/a;->a(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v11, v13, v5}, Lcom/appbrain/o/v;->i(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->b:Landroid/widget/TextView;

    const/16 v11, 0xf

    invoke-static {v11, v3}, Lcom/appbrain/a/q;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->b:Landroid/widget/TextView;

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->b:Landroid/widget/TextView;

    const/high16 v13, 0x41000000    # 8.0f

    invoke-static {v13}, Lcom/appbrain/o/p0;->c(F)I

    move-result v14

    invoke-static {v15}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-static {v13}, Lcom/appbrain/o/p0;->c(F)I

    move-result v13

    invoke-static {v15}, Lcom/appbrain/o/p0;->c(F)I

    move-result v11

    invoke-virtual {v5, v14, v7, v13, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v9, Lcom/appbrain/a/b$e;->c:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Lcom/appbrain/a/b;->A()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v9, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->d:Landroid/widget/TextView;

    const/16 v7, 0x15

    invoke-static {v7, v3}, Lcom/appbrain/a/q;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v9, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    new-array v7, v4, [Ljava/lang/Object;

    const/16 v11, 0x16

    invoke-static {v11, v3}, Lcom/appbrain/a/q;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v7, v13

    const-string v11, "%s:"

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v7, "sans-serif-light"

    const/16 v11, 0x10

    if-lt v5, v11, :cond_2

    iget-object v5, v9, Lcom/appbrain/a/b$e;->e:Landroid/widget/TextView;

    invoke-static {v7, v13}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    new-instance v5, Lcom/appbrain/a/b$g;

    invoke-direct {v5, v1}, Lcom/appbrain/a/b$g;-><init>(Landroid/content/Context;)V

    iput-object v5, v9, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-interface {v8}, Lcom/appbrain/a/b$f;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v9, Lcom/appbrain/a/b$e;->h:Lcom/appbrain/a/b$g;

    invoke-virtual {v5}, Lcom/appbrain/a/b$g;->a()V

    :cond_3
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v9, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v5, v13, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->f:Landroid/widget/TextView;

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v9, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v9, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextSize(F)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v11, :cond_4

    iget-object v5, v9, Lcom/appbrain/a/b$e;->g:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-static {v7, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v11, -0x1

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v5, v11, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v11, 0x17

    invoke-static {v11, v3}, Lcom/appbrain/a/q;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v11}, Lcom/appbrain/o/p0;->c(F)I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v13

    const v14, -0x7f50c1

    invoke-static {v15}, Lcom/appbrain/o/p0;->c(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v14, v12}, Lcom/appbrain/s/a;->a(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v13, v5, v12}, Lcom/appbrain/o/v;->i(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-static {v13, v12}, Lcom/appbrain/a/i;->c(ILcom/appbrain/a/i$p;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v14

    const/high16 v13, 0x41e00000    # 28.0f

    invoke-static {v13}, Lcom/appbrain/o/p0;->c(F)I

    move-result v15

    invoke-static {v13}, Lcom/appbrain/o/p0;->c(F)I

    move-result v13

    const/4 v4, 0x0

    invoke-virtual {v14, v4, v4, v15, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5, v14, v12, v12, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v11}, Lcom/appbrain/o/p0;->c(F)I

    move-result v4

    const/high16 v12, 0x41200000    # 10.0f

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v13

    invoke-static {v11}, Lcom/appbrain/o/p0;->c(F)I

    move-result v14

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v15

    invoke-virtual {v5, v4, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v4, v7, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v7, 0x13

    invoke-static {v7, v3}, Lcom/appbrain/a/q;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v7

    const v10, -0x7f7f80

    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v13}, Lcom/appbrain/o/p0;->c(F)I

    move-result v14

    int-to-float v13, v14

    invoke-static {v10, v13}, Lcom/appbrain/s/a;->a(IF)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v4, v10}, Lcom/appbrain/o/v;->i(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v11}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v10

    invoke-static {v11}, Lcom/appbrain/o/p0;->c(F)I

    move-result v11

    invoke-static {v12}, Lcom/appbrain/o/p0;->c(F)I

    move-result v12

    invoke-virtual {v4, v7, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v9, Lcom/appbrain/a/b$e;->i:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v7, v9, Lcom/appbrain/a/b$e;->i:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, -0x1

    invoke-direct {v7, v10, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v13, v9, Lcom/appbrain/a/b$e;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lcom/appbrain/o/p0;->c(F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v7, v9, Lcom/appbrain/a/b$e;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v9, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v9, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const/16 v6, 0x70

    invoke-virtual {v5, v6}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, v9, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, v9, Lcom/appbrain/a/b$e;->j:Landroid/widget/TextView;

    const/16 v5, 0x14

    invoke-static {v5, v3}, Lcom/appbrain/a/q;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_5

    invoke-interface {v8, v1, v9}, Lcom/appbrain/a/b$f;->b(Landroid/content/Context;Lcom/appbrain/a/b$e;)Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-interface {v8, v1, v9}, Lcom/appbrain/a/b$f;->c(Landroid/content/Context;Lcom/appbrain/a/b$e;)Landroid/view/ViewGroup;

    move-result-object v1

    :goto_2
    iget-boolean v2, v0, Lcom/appbrain/a/b;->h:Z

    if-eqz v2, :cond_6

    const/4 v7, -0x1

    goto :goto_3

    :cond_6
    const v7, -0xcccccd

    :goto_3
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_7

    invoke-static {v1}, Lcom/appbrain/a/b;->w(Landroid/view/ViewGroup;)V

    :cond_7
    invoke-static {}, Lcom/appbrain/a/h;->a()Lcom/appbrain/a/h;

    move-result-object v2

    sget-object v3, Lcom/appbrain/t/t;->p:Lcom/appbrain/t/t;

    iget-object v4, v0, Lcom/appbrain/a/b;->l:Ljava/lang/Integer;

    iget-object v5, v0, Lcom/appbrain/a/b;->m:Ljava/lang/String;

    new-instance v6, Lcom/appbrain/a/b$b;

    invoke-direct {v6, v0, v9, v8}, Lcom/appbrain/a/b$b;-><init>(Lcom/appbrain/a/b;Lcom/appbrain/a/b$e;Lcom/appbrain/a/b$f;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/appbrain/a/h;->f(Lcom/appbrain/t/t;Ljava/lang/Integer;Ljava/lang/String;Lcom/appbrain/o/o0;)V

    invoke-virtual/range {p0 .. p0}, Lcom/appbrain/a/j1;->t()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v1}, Lcom/appbrain/a/j1;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/appbrain/a/b;->z()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/appbrain/o/v;->i(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_8
    return-object v1
.end method

.method private z()Landroid/graphics/drawable/Drawable;
    .locals 11

    iget-boolean v0, p0, Lcom/appbrain/a/b;->i:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x56000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/o/v;->c(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x5

    add-int/lit16 v1, v1, 0x100

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x100

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, -0x3400

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v3, v3, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    invoke-direct {v8, v2, v4, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v2, -0x20a3e

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v2, 0x168

    if-ge v10, v2, :cond_1

    int-to-float v4, v10

    const/high16 v5, 0x40c00000    # 6.0f

    const/4 v6, 0x1

    move-object v2, v1

    move-object v3, v8

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0xc

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->o()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method protected final b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    sget-object v0, Lcom/appbrain/a/b;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/appbrain/a/w;

    const/4 v1, 0x1

    if-nez p2, :cond_4

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/appbrain/a/b;->n:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/appbrain/a/b;->o:I

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/appbrain/a/w;->c()Lcom/appbrain/c$b;

    move-result-object v2

    :goto_0
    sget-object v3, Lcom/appbrain/c$b;->c:Lcom/appbrain/c$b;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/appbrain/c$b;->d:Lcom/appbrain/c$b;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/appbrain/o/m;->b()Z

    move-result v2

    :goto_1
    iput-boolean v2, p0, Lcom/appbrain/a/b;->h:Z

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/appbrain/o/m;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p2, 0x1

    :cond_3
    iput-boolean p2, p0, Lcom/appbrain/a/b;->i:Z

    sget-object p2, Lcom/appbrain/a/b;->r:[Ljava/lang/Class;

    array-length p2, p2

    invoke-static {p2}, Lcom/appbrain/o/m;->a(I)I

    move-result p2

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/appbrain/a/b;->t:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/appbrain/a/b;->n:Z

    sget-object v2, Lcom/appbrain/a/b;->u:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/appbrain/a/b;->o:I

    sget-object v2, Lcom/appbrain/a/b;->v:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/appbrain/a/b;->h:Z

    sget-object v2, Lcom/appbrain/a/b;->w:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/appbrain/a/b;->i:Z

    sget-object v2, Lcom/appbrain/a/b;->x:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    :goto_2
    iput p2, p0, Lcom/appbrain/a/b;->j:I

    invoke-virtual {v0}, Lcom/appbrain/a/w;->e()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/appbrain/a/b;->m:Ljava/lang/String;

    new-instance p2, Lcom/appbrain/a/r$a;

    invoke-direct {p2}, Lcom/appbrain/a/r$a;-><init>()V

    const-string v2, "single_app"

    invoke-virtual {p2, v2}, Lcom/appbrain/a/r$a;->b(Ljava/lang/String;)Lcom/appbrain/a/r$a;

    iget-boolean v2, p0, Lcom/appbrain/a/b;->h:Z

    iget v3, p0, Lcom/appbrain/a/b;->j:I

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-boolean v3, p0, Lcom/appbrain/a/b;->i:Z

    shl-int/lit8 v3, v3, 0xc

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->t()Z

    move-result v3

    xor-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/appbrain/a/r$a;->a(I)Lcom/appbrain/a/r$a;

    invoke-virtual {v0}, Lcom/appbrain/a/w;->d()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/appbrain/a/r$a;->d(Z)Lcom/appbrain/a/r$a;

    sget-object v1, Lcom/appbrain/a/b;->q:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/appbrain/a/r$a;->g(Z)Lcom/appbrain/a/r$a;

    invoke-virtual {v0}, Lcom/appbrain/a/w;->h()Lcom/appbrain/b;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/appbrain/a/w;->h()Lcom/appbrain/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appbrain/b;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/a/b;->l:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/appbrain/a/r$a;->h(I)Lcom/appbrain/a/r$a;

    invoke-virtual {v0}, Lcom/appbrain/a/w;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/a/m1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appbrain/a/r$a;->f(Ljava/lang/String;)Lcom/appbrain/a/r$a;

    :cond_5
    invoke-virtual {p2}, Lcom/appbrain/a/r$a;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/a/b;->k:Ljava/lang/String;

    invoke-direct {p0}, Lcom/appbrain/a/b;->y()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "app_popup"

    return-object v0
.end method

.method protected final e(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/appbrain/a/b;->u:Ljava/lang/String;

    iget v1, p0, Lcom/appbrain/a/b;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/appbrain/a/b;->v:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/appbrain/a/b;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lcom/appbrain/a/b;->w:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/appbrain/a/b;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Lcom/appbrain/a/b;->x:Ljava/lang/String;

    iget v1, p0, Lcom/appbrain/a/b;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected final h()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/b;->y()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

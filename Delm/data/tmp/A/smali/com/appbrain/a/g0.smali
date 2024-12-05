.class public final Lcom/appbrain/a/g0;
.super Lcom/appbrain/a/j1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/g0$g;
    }
.end annotation


# static fields
.field private static final t:Lcom/appbrain/u/d;

.field private static final u:Ljava/util/Set;


# instance fields
.field private final h:Lcom/appbrain/a/j0;

.field private i:Lcom/appbrain/a/c;

.field private j:Landroid/webkit/WebView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Ljava/lang/String;

.field private m:Lcom/appbrain/t/t;

.field private n:J

.field private o:Z

.field private p:Ljava/util/List;

.field private q:Landroid/os/Bundle;

.field private r:Lcom/appbrain/a/w;

.field private s:Lcom/appbrain/o/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/appbrain/u/d;

    new-instance v1, Lcom/appbrain/u/b;

    invoke-direct {v1}, Lcom/appbrain/u/b;-><init>()V

    invoke-direct {v0, v1}, Lcom/appbrain/u/d;-><init>(Lcom/appbrain/u/d$a;)V

    sput-object v0, Lcom/appbrain/a/g0;->t:Lcom/appbrain/u/d;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/appbrain/t/t;

    sget-object v2, Lcom/appbrain/t/t;->i:Lcom/appbrain/t/t;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/t/t;->d:Lcom/appbrain/t/t;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/t/t;->m:Lcom/appbrain/t/t;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/t/t;->n:Lcom/appbrain/t/t;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/g0;->u:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/appbrain/a/j1$a;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/appbrain/a/j1;-><init>(Lcom/appbrain/a/j1$a;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appbrain/a/g0;->n:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/appbrain/a/g0;->o:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/appbrain/a/g0;->p:Ljava/util/List;

    new-instance v0, Lcom/appbrain/o/h;

    new-instance v1, Lcom/appbrain/a/g0$a;

    invoke-direct {v1, p0}, Lcom/appbrain/a/g0$a;-><init>(Lcom/appbrain/a/g0;)V

    invoke-direct {v0, v1}, Lcom/appbrain/o/h;-><init>(Lcom/appbrain/o/o;)V

    iput-object v0, p0, Lcom/appbrain/a/g0;->s:Lcom/appbrain/o/h;

    invoke-static {}, Ljava/lang/Math;->random()D

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/l1;->j()Lcom/appbrain/m;

    move-result-object v0

    const-string v1, "log_offerwall_chance"

    const-string v2, "0.0"

    invoke-interface {v0, v1, v2}, Lcom/appbrain/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    invoke-static {}, Lcom/appbrain/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/appbrain/a/v0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0}, Lcom/appbrain/a/v0;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/appbrain/a/g0;->h:Lcom/appbrain/a/j0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/g0;->p:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/appbrain/a/v0;

    invoke-direct {v0, p1}, Lcom/appbrain/a/v0;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/appbrain/a/g0;->h:Lcom/appbrain/a/j0;

    :goto_0
    invoke-direct {p0}, Lcom/appbrain/a/g0;->I()V

    return-void
.end method

.method static synthetic A(Lcom/appbrain/a/g0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/g0;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic B(Lcom/appbrain/a/g0;)Lcom/appbrain/a/j0;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/g0;->h:Lcom/appbrain/a/j0;

    return-object p0
.end method

.method static synthetic C(Lcom/appbrain/a/g0;)J
    .locals 2

    iget-wide v0, p0, Lcom/appbrain/a/g0;->n:J

    return-wide v0
.end method

.method static synthetic D(Lcom/appbrain/a/g0;)Lcom/appbrain/o/h;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/g0;->s:Lcom/appbrain/o/h;

    return-object p0
.end method

.method static synthetic E(Lcom/appbrain/a/g0;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic F(Lcom/appbrain/a/g0;)V
    .locals 2

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/g0;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/appbrain/a/g0;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic G(Lcom/appbrain/a/g0;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/g0;->k:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic H(Lcom/appbrain/a/g0;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/g0;->p:Ljava/util/List;

    return-object p0
.end method

.method private I()V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/a/g0;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/appbrain/a/g0;)Lcom/appbrain/t/t;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/g0;->m:Lcom/appbrain/t/t;

    return-object p0
.end method

.method static w(Lcom/appbrain/v/b$a;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/appbrain/a/g0;->t:Lcom/appbrain/u/d;

    invoke-virtual {v0, p0}, Lcom/appbrain/u/d;->a(Lcom/appbrain/v/b$a;)Lcom/appbrain/v/b$a;

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object p0

    check-cast p0, Lcom/appbrain/v/b;

    invoke-virtual {p0}, Lcom/appbrain/q/a;->h()[B

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "data="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private x(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/appbrain/a/g0;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/appbrain/a/g0$e;

    invoke-direct {v0, p0}, Lcom/appbrain/a/g0$e;-><init>(Lcom/appbrain/a/g0;)V

    iget-object v1, p0, Lcom/appbrain/a/g0;->s:Lcom/appbrain/o/h;

    invoke-virtual {v1}, Lcom/appbrain/o/h;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appbrain/a/g0;->o:Z

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance p1, Lcom/appbrain/a/g0$f;

    invoke-direct {p1, p0, v0}, Lcom/appbrain/a/g0$f;-><init>(Lcom/appbrain/a/g0;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/appbrain/o/k;->a([Ljava/lang/Object;)Lcom/appbrain/o/k;

    :cond_2
    return-void
.end method

.method static synthetic y(Lcom/appbrain/a/g0;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/g0;->q:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic z(Lcom/appbrain/a/g0;)Lcom/appbrain/a/w;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/g0;->r:Lcom/appbrain/a/w;

    return-object p0
.end method


# virtual methods
.method protected final b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    invoke-direct {p0}, Lcom/appbrain/a/g0;->I()V

    iput-object p1, p0, Lcom/appbrain/a/g0;->q:Landroid/os/Bundle;

    const-string p2, "intlop"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/appbrain/a/w;

    iput-object p2, p0, Lcom/appbrain/a/g0;->r:Lcom/appbrain/a/w;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "Can\'t show offerwall without options"

    invoke-static {p1}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object p2, Lcom/appbrain/t/t;->c:Lcom/appbrain/t/t;

    invoke-virtual {p2}, Lcom/appbrain/t/t;->c()I

    move-result p2

    const-string v1, "src"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/appbrain/t/t;->d(I)Lcom/appbrain/t/t;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/a/g0;->m:Lcom/appbrain/t/t;

    sget-object p2, Lcom/appbrain/t/t;->l:Lcom/appbrain/t/t;

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/appbrain/a/k;->f:Lcom/appbrain/o/p;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/appbrain/a/k;->e:Lcom/appbrain/o/p;

    :goto_0
    invoke-virtual {p1}, Lcom/appbrain/o/p;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/a/g0;->l:Ljava/lang/String;

    new-instance p1, Lcom/appbrain/a/g0$b;

    invoke-direct {p1, p0}, Lcom/appbrain/a/g0$b;-><init>(Lcom/appbrain/a/g0;)V

    invoke-static {p1}, Lcom/appbrain/o/k;->f(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/appbrain/a/g0;->I()V

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->o()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/o/u;->a(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/appbrain/a/g0;->I()V

    new-instance p1, Lcom/appbrain/a/c;

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->p()Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lcom/appbrain/a/g0$c;

    invoke-direct {v0, p0}, Lcom/appbrain/a/g0$c;-><init>(Lcom/appbrain/a/g0;)V

    iget-object v1, p0, Lcom/appbrain/a/g0;->r:Lcom/appbrain/a/w;

    invoke-virtual {v1}, Lcom/appbrain/a/w;->g()Lcom/appbrain/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p1, p2, v2, v0, v1}, Lcom/appbrain/a/c;-><init>(Landroid/app/Activity;ZLcom/appbrain/a/c$h;Lcom/appbrain/b;)V

    iput-object p1, p0, Lcom/appbrain/a/g0;->i:Lcom/appbrain/a/c;

    iget-object p2, p0, Lcom/appbrain/a/g0;->m:Lcom/appbrain/t/t;

    sget-object v0, Lcom/appbrain/t/t;->l:Lcom/appbrain/t/t;

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Lcom/appbrain/a/c;->setNoTracking()V

    :cond_3
    invoke-direct {p0}, Lcom/appbrain/a/g0;->I()V

    iget-object p1, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/appbrain/a/h0;->e(Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/appbrain/a/g0;->i:Lcom/appbrain/a/c;

    const-string v0, "adApi"

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    new-instance p2, Lcom/appbrain/a/g0$g;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/appbrain/a/g0$g;-><init>(Lcom/appbrain/a/g0;B)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    new-instance p2, Lcom/appbrain/a/g0$d;

    invoke-direct {p2, p0}, Lcom/appbrain/a/g0$d;-><init>(Lcom/appbrain/a/g0;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object p1, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-direct {p0}, Lcom/appbrain/a/g0;->I()V

    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->o()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/appbrain/a/g0;->k:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/appbrain/a/g0;->I()V

    invoke-direct {p0, v0}, Lcom/appbrain/a/g0;->x(Z)V

    invoke-direct {p0}, Lcom/appbrain/a/g0;->I()V

    iget-object p1, p0, Lcom/appbrain/a/g0;->k:Landroid/widget/LinearLayout;

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2}, Lcom/appbrain/o/p0;->c(F)I

    move-result p2

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v3, -0x78000000

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v3, p2

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->o()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    const v6, -0x333334

    if-lt v4, v5, :cond_4

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/appbrain/a/j1;->o()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x19

    invoke-static {}, Lcom/appbrain/o/i0;->e()Lcom/appbrain/o/i0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appbrain/o/i0;->p()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/appbrain/a/q;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v0, p2, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/appbrain/o/v;->i(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 p2, -0x2

    invoke-virtual {p1, v3, p2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-virtual {p1, v4, p2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    invoke-direct {p0}, Lcom/appbrain/a/g0;->I()V

    iget-object p1, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/appbrain/a/g0;->k:Landroid/widget/LinearLayout;

    invoke-static {p1, p2}, Lcom/appbrain/a/m1;->e(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v2}, Lcom/appbrain/a/g0;->x(Z)V

    invoke-direct {p0}, Lcom/appbrain/a/g0;->I()V

    return-object p1
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "offerwall"

    return-object v0
.end method

.method protected final i()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final j()V
    .locals 2

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/appbrain/o/v;->m(Landroid/webkit/WebView;)V

    return-void
.end method

.method protected final k()V
    .locals 2

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/appbrain/o/v;->j(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/appbrain/a/g0;->i:Lcom/appbrain/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appbrain/a/c;->a()V

    :cond_0
    return-void
.end method

.method protected final l()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/g0;->j:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method protected final m()Z
    .locals 2

    sget-object v0, Lcom/appbrain/a/g0;->u:Ljava/util/Set;

    iget-object v1, p0, Lcom/appbrain/a/g0;->m:Lcom/appbrain/t/t;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

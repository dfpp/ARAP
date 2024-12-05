.class public final Lcom/appbrain/a/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/a/f1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/c0$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/appbrain/a/f1$a;

.field private final b:Lcom/appbrain/a/e;

.field private final c:Lcom/appbrain/a/c0$b;

.field private d:Lcom/appbrain/n/b;

.field private e:I

.field private f:I

.field private final g:Lcom/appbrain/n/b$h;


# direct methods
.method public constructor <init>(Lcom/appbrain/a/f1$a;Lcom/appbrain/a/e;Lcom/appbrain/a/c0$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appbrain/a/c0$a;

    invoke-direct {v0, p0}, Lcom/appbrain/a/c0$a;-><init>(Lcom/appbrain/a/c0;)V

    iput-object v0, p0, Lcom/appbrain/a/c0;->g:Lcom/appbrain/n/b$h;

    iput-object p1, p0, Lcom/appbrain/a/c0;->a:Lcom/appbrain/a/f1$a;

    iput-object p2, p0, Lcom/appbrain/a/c0;->b:Lcom/appbrain/a/e;

    iput-object p3, p0, Lcom/appbrain/a/c0;->c:Lcom/appbrain/a/c0$b;

    return-void
.end method

.method static synthetic e(Lcom/appbrain/a/c0;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/c0;->l()V

    return-void
.end method

.method static synthetic f(Lcom/appbrain/a/c0;)Lcom/appbrain/a/e;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/c0;->b:Lcom/appbrain/a/e;

    return-object p0
.end method

.method static synthetic g(Lcom/appbrain/a/c0;)Lcom/appbrain/a/f1$a;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/c0;->a:Lcom/appbrain/a/f1$a;

    return-object p0
.end method

.method static synthetic i(Lcom/appbrain/a/c0;)Z
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/c0;->k()Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/appbrain/a/c0;)Lcom/appbrain/a/c0$b;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/c0;->c:Lcom/appbrain/a/c0$b;

    return-object p0
.end method

.method private k()Z
    .locals 3

    iget-object v0, p0, Lcom/appbrain/a/c0;->a:Lcom/appbrain/a/f1$a;

    invoke-interface {v0}, Lcom/appbrain/a/f1$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/appbrain/a/c0;->l()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/c0;->d:Lcom/appbrain/n/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/a/c0;->a:Lcom/appbrain/a/f1$a;

    invoke-interface {v0}, Lcom/appbrain/a/f1$a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/a/c0;->a:Lcom/appbrain/a/f1$a;

    invoke-interface {v0}, Lcom/appbrain/a/f1$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/c0;->b:Lcom/appbrain/a/e;

    invoke-virtual {v1}, Lcom/appbrain/a/e;->l()Lcom/appbrain/b;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/a/c0;->g:Lcom/appbrain/n/b$h;

    invoke-static {v0, v1, v2}, Lcom/appbrain/n/b;->b(Landroid/content/Context;Lcom/appbrain/b;Lcom/appbrain/n/b$h;)Lcom/appbrain/n/b;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/c0;->d:Lcom/appbrain/n/b;

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/c0;->d:Lcom/appbrain/n/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appbrain/n/b;->l()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appbrain/a/c0;->d:Lcom/appbrain/n/b;

    iget-object v1, p0, Lcom/appbrain/a/c0;->a:Lcom/appbrain/a/f1$a;

    invoke-interface {v1, v0, v0}, Lcom/appbrain/a/f1$a;->j(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/c0;->k()Z

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/c0;->k()Z

    iget-object v0, p0, Lcom/appbrain/a/c0;->d:Lcom/appbrain/n/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appbrain/n/b;->j()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/c0;->d:Lcom/appbrain/n/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appbrain/n/b;->h()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-direct {p0}, Lcom/appbrain/a/c0;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/a/c0;->d:Lcom/appbrain/n/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/c0;->b:Lcom/appbrain/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appbrain/a/e;->d(Z)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/appbrain/n/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/a/c0;->b:Lcom/appbrain/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appbrain/a/e;->d(Z)V

    :cond_1
    return-void
.end method

.method public final h(II)V
    .locals 4

    iget-object v0, p0, Lcom/appbrain/a/c0;->a:Lcom/appbrain/a/f1$a;

    invoke-interface {v0, p1, p2}, Lcom/appbrain/a/f1$a;->h(II)V

    iget-object v0, p0, Lcom/appbrain/a/c0;->a:Lcom/appbrain/a/f1$a;

    invoke-interface {v0}, Lcom/appbrain/a/f1$a;->e()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/appbrain/a/c0;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/appbrain/a/c0;->a:Lcom/appbrain/a/f1$a;

    invoke-interface {v3}, Lcom/appbrain/a/f1$a;->g()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/appbrain/a/c0;->f:I

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/appbrain/a/c0;->e:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_3
    if-eqz v1, :cond_4

    iget p2, p0, Lcom/appbrain/a/c0;->f:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_4
    iget-object v0, p0, Lcom/appbrain/a/c0;->a:Lcom/appbrain/a/f1$a;

    invoke-interface {v0, p1, p2}, Lcom/appbrain/a/f1$a;->h(II)V

    :cond_5
    iget-object p1, p0, Lcom/appbrain/a/c0;->a:Lcom/appbrain/a/f1$a;

    invoke-interface {p1}, Lcom/appbrain/a/f1$a;->e()I

    move-result p1

    iput p1, p0, Lcom/appbrain/a/c0;->e:I

    iget-object p1, p0, Lcom/appbrain/a/c0;->a:Lcom/appbrain/a/f1$a;

    invoke-interface {p1}, Lcom/appbrain/a/f1$a;->g()I

    move-result p1

    iput p1, p0, Lcom/appbrain/a/c0;->f:I

    return-void
.end method

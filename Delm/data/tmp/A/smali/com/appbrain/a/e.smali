.class public final Lcom/appbrain/a/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/e$a;,
        Lcom/appbrain/a/e$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/appbrain/i;

.field private final b:Lcom/appbrain/a/e$b;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Lcom/appbrain/b;

.field private final i:Lcom/appbrain/AppBrainBanner$p;

.field private final j:Lcom/appbrain/AppBrainBanner$p;

.field private final k:Z

.field private final l:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/appbrain/a/e$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/appbrain/a/e$a;->a(Lcom/appbrain/a/e$a;)Lcom/appbrain/i;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/e;->a:Lcom/appbrain/i;

    invoke-static {p1}, Lcom/appbrain/a/e$a;->k(Lcom/appbrain/a/e$a;)Lcom/appbrain/a/e$b;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/e;->b:Lcom/appbrain/a/e$b;

    invoke-static {p1}, Lcom/appbrain/a/e$a;->m(Lcom/appbrain/a/e$a;)I

    move-result v0

    iput v0, p0, Lcom/appbrain/a/e;->c:I

    invoke-static {p1}, Lcom/appbrain/a/e$a;->o(Lcom/appbrain/a/e$a;)I

    move-result v0

    iput v0, p0, Lcom/appbrain/a/e;->d:I

    invoke-static {p1}, Lcom/appbrain/a/e$a;->q(Lcom/appbrain/a/e$a;)I

    move-result v0

    iput v0, p0, Lcom/appbrain/a/e;->e:I

    invoke-static {p1}, Lcom/appbrain/a/e$a;->s(Lcom/appbrain/a/e$a;)I

    move-result v0

    iput v0, p0, Lcom/appbrain/a/e;->f:I

    invoke-static {p1}, Lcom/appbrain/a/e$a;->t(Lcom/appbrain/a/e$a;)I

    move-result v0

    iput v0, p0, Lcom/appbrain/a/e;->g:I

    invoke-static {p1}, Lcom/appbrain/a/e$a;->u(Lcom/appbrain/a/e$a;)Lcom/appbrain/b;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/e;->h:Lcom/appbrain/b;

    invoke-static {p1}, Lcom/appbrain/a/e$a;->v(Lcom/appbrain/a/e$a;)Lcom/appbrain/AppBrainBanner$p;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/e;->i:Lcom/appbrain/AppBrainBanner$p;

    invoke-static {p1}, Lcom/appbrain/a/e$a;->w(Lcom/appbrain/a/e$a;)Lcom/appbrain/AppBrainBanner$p;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/e;->j:Lcom/appbrain/AppBrainBanner$p;

    invoke-static {p1}, Lcom/appbrain/a/e$a;->x(Lcom/appbrain/a/e$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appbrain/a/e;->k:Z

    invoke-static {p1}, Lcom/appbrain/a/e$a;->y(Lcom/appbrain/a/e$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/a/e;->l:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appbrain/a/e$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/e;-><init>(Lcom/appbrain/a/e$a;)V

    return-void
.end method

.method static synthetic a(II)I
    .locals 0

    if-ltz p0, :cond_1

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Landroid/util/AttributeSet;ZLjava/lang/String;I)I
    .locals 2

    const-string v0, "http://schemas.android.com/apk/lib/com.appbrain"

    const/4 v1, -0x1

    invoke-interface {p0, v0, p2, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    const/4 p2, 0x0

    if-ne p0, v1, :cond_1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    invoke-static {p3}, Lcom/appbrain/o/m;->a(I)I

    move-result p0

    return p0

    :cond_1
    if-ltz p0, :cond_3

    if-lt p0, p3, :cond_2

    goto :goto_0

    :cond_2
    return p0

    :cond_3
    :goto_0
    return p2
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/e;->a:Lcom/appbrain/i;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/appbrain/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/e;->a:Lcom/appbrain/i;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/appbrain/i;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/e;->b:Lcom/appbrain/a/e$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/appbrain/a/e$b;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/e;->b:Lcom/appbrain/a/e$b;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/appbrain/a/e;->c:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/appbrain/a/e;->d:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/appbrain/a/e;->e:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/appbrain/a/e;->f:I

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/appbrain/a/e;->g:I

    return v0
.end method

.method public final l()Lcom/appbrain/b;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/e;->h:Lcom/appbrain/b;

    return-object v0
.end method

.method public final m()Lcom/appbrain/AppBrainBanner$p;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/e;->i:Lcom/appbrain/AppBrainBanner$p;

    return-object v0
.end method

.method public final n()Lcom/appbrain/AppBrainBanner$p;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/e;->j:Lcom/appbrain/AppBrainBanner$p;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/a/e;->k:Z

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/e;->l:Ljava/lang/String;

    return-object v0
.end method

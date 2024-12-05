.class public final Lcom/appbrain/a/p0;
.super Lcom/appbrain/a/f;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:I

.field private final d:Lcom/appbrain/a/i$r;

.field private final e:Lcom/appbrain/a/e;

.field private final f:Lcom/appbrain/a/d;

.field private final g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;IILcom/appbrain/a/i$r;Lcom/appbrain/a/e;Lcom/appbrain/a/d;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/f;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/p0;->a:Landroid/content/Context;

    iput p2, p0, Lcom/appbrain/a/p0;->b:I

    iput p3, p0, Lcom/appbrain/a/p0;->c:I

    iput-object p4, p0, Lcom/appbrain/a/p0;->d:Lcom/appbrain/a/i$r;

    iput-object p5, p0, Lcom/appbrain/a/p0;->e:Lcom/appbrain/a/e;

    iput-object p6, p0, Lcom/appbrain/a/p0;->f:Lcom/appbrain/a/d;

    iput-boolean p7, p0, Lcom/appbrain/a/p0;->g:Z

    return-void
.end method

.method static synthetic c(Lcom/appbrain/a/p0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/p0;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Landroid/content/Context;Lcom/appbrain/a/e;Lcom/appbrain/a/h$b;)Lcom/appbrain/a/f;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/appbrain/a/h$b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1, p2}, Lcom/appbrain/a/p;->c(Landroid/content/Context;Lcom/appbrain/a/e;Lcom/appbrain/a/h$b;)Lcom/appbrain/a/p;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p2}, Lcom/appbrain/a/h$b;->e()Lcom/appbrain/a/d;

    move-result-object v6

    if-nez v6, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/appbrain/a/e;->f()Lcom/appbrain/a/e$b;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    const/16 v1, 0xa

    move-object v4, p2

    const/16 v2, 0xa

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/appbrain/a/e;->k()I

    move-result v1

    iget-object v2, v6, Lcom/appbrain/a/d;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-ltz v1, :cond_4

    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    if-nez v2, :cond_5

    invoke-static {v1}, Lcom/appbrain/a/i;->h(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-static {v2}, Lcom/appbrain/a/i;->a(Z)I

    move-result v1

    :cond_5
    invoke-static {v1}, Lcom/appbrain/a/i;->j(I)Lcom/appbrain/a/i$r;

    move-result-object v2

    move-object v4, v2

    move v2, v1

    :goto_0
    invoke-virtual {v4}, Lcom/appbrain/a/i$r;->b()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/appbrain/a/e;->i()I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    new-instance v8, Lcom/appbrain/a/p0;

    if-eqz p2, :cond_7

    const/4 v7, 0x1

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    :goto_2
    move-object v0, v8

    move-object v1, p0

    move v3, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/appbrain/a/p0;-><init>(Landroid/content/Context;IILcom/appbrain/a/i$r;Lcom/appbrain/a/e;Lcom/appbrain/a/d;Z)V

    return-object v8
.end method

.method public static e(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 7

    new-instance v6, Lcom/appbrain/a/h0$b;

    move-object v0, v6

    move v1, p3

    move-object v2, p1

    move-object v3, p6

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/appbrain/a/h0$b;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, p2, v6}, Lcom/appbrain/a/h0;->d(Landroid/app/Activity;Ljava/lang/String;Lcom/appbrain/a/h0$b;)V

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/appbrain/a/n0;->b()Lcom/appbrain/a/n0;

    move-result-object p0

    invoke-virtual {p0, p1, p6, p4}, Lcom/appbrain/a/n0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/appbrain/a/p0;)Lcom/appbrain/a/d;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/p0;->f:Lcom/appbrain/a/d;

    return-object p0
.end method

.method static synthetic g(Lcom/appbrain/a/p0;)Lcom/appbrain/a/e;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/p0;->e:Lcom/appbrain/a/e;

    return-object p0
.end method


# virtual methods
.method public final a(II)Lcom/appbrain/a/f$b;
    .locals 10

    iget-boolean v0, p0, Lcom/appbrain/a/p0;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appbrain/a/f$a;->b:Lcom/appbrain/a/f$a;

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/appbrain/a/f;->b(II)Lcom/appbrain/a/f$a;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/appbrain/a/p0$c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/appbrain/a/p0;->b:I

    iget-object v1, p0, Lcom/appbrain/a/p0;->d:Lcom/appbrain/a/i$r;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 v0, 0x7

    sget-object v1, Lcom/appbrain/a/i;->e:Lcom/appbrain/a/i$r;

    :goto_1
    sget-object v2, Lcom/appbrain/a/i;->a:[Lcom/appbrain/a/i$j;

    iget v3, p0, Lcom/appbrain/a/p0;->c:I

    aget-object v7, v2, v3

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, 0x1000

    add-int/2addr v0, v3

    new-instance v2, Lcom/appbrain/a/r$a;

    invoke-direct {v2}, Lcom/appbrain/a/r$a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/appbrain/a/r$a;->e(I)Lcom/appbrain/a/r$a;

    iget-object v0, p0, Lcom/appbrain/a/p0;->e:Lcom/appbrain/a/e;

    invoke-virtual {v0}, Lcom/appbrain/a/e;->l()Lcom/appbrain/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appbrain/a/p0;->e:Lcom/appbrain/a/e;

    invoke-virtual {v0}, Lcom/appbrain/a/e;->l()Lcom/appbrain/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/b;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/appbrain/a/r$a;->h(I)Lcom/appbrain/a/r$a;

    iget-object v0, p0, Lcom/appbrain/a/p0;->e:Lcom/appbrain/a/e;

    invoke-virtual {v0}, Lcom/appbrain/a/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/a/m1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/appbrain/a/r$a;->f(Ljava/lang/String;)Lcom/appbrain/a/r$a;

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appbrain/a/p0;->f:Lcom/appbrain/a/d;

    iget-object v3, v3, Lcom/appbrain/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/appbrain/a/r$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/appbrain/a/p0$b;

    invoke-direct {v2, p0, v0}, Lcom/appbrain/a/p0$b;-><init>(Lcom/appbrain/a/p0;Ljava/lang/String;)V

    new-instance v5, Lcom/appbrain/a/i$e;

    iget-object v3, p0, Lcom/appbrain/a/p0;->f:Lcom/appbrain/a/d;

    iget-object v4, v3, Lcom/appbrain/a/d;->c:Ljava/lang/String;

    iget-object v6, v3, Lcom/appbrain/a/d;->d:Ljava/lang/String;

    iget-object v3, v3, Lcom/appbrain/a/d;->b:Ljava/lang/String;

    invoke-direct {v5, v4, v6, v3, v2}, Lcom/appbrain/a/i$e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/appbrain/a/p0;->f:Lcom/appbrain/a/d;

    iget-object v2, v2, Lcom/appbrain/a/d;->g:Ljava/lang/String;

    sget-object v3, Lcom/appbrain/o/n$a;->e:Lcom/appbrain/o/n$a;

    invoke-static {v2, p2, v3}, Lcom/appbrain/o/n;->a(Ljava/lang/String;ILcom/appbrain/o/n$a;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appbrain/a/k;->b:Lcom/appbrain/o/p;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v6, v2

    new-instance v2, Lcom/appbrain/a/i$s;

    move-object v4, v2

    move v8, p1

    move v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/appbrain/a/i$s;-><init>(Lcom/appbrain/a/i$e;Ljava/lang/String;Lcom/appbrain/a/i$j;II)V

    iget-object p1, p0, Lcom/appbrain/a/p0;->a:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/appbrain/a/i$r;->a(Landroid/content/Context;Lcom/appbrain/a/i$s;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/appbrain/a/f$b;

    invoke-direct {p2, p1, v0}, Lcom/appbrain/a/f$b;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object p2
.end method

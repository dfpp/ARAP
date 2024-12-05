.class public final Lcom/appbrain/a/i0;
.super Lcom/appbrain/a/f;
.source ""


# static fields
.field static final c:[I

.field static final d:[I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/appbrain/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appbrain/a/i0;->c:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/appbrain/a/i0;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x17
        0x4
        0x18
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/appbrain/a/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/f;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/i0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/appbrain/a/i0;->b:Lcom/appbrain/a/e;

    return-void
.end method

.method static synthetic c(Lcom/appbrain/a/i0;)Lcom/appbrain/a/e;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/i0;->b:Lcom/appbrain/a/e;

    return-object p0
.end method

.method public static d(Landroid/content/Context;Lcom/appbrain/a/e;)Lcom/appbrain/a/i0;
    .locals 1

    new-instance v0, Lcom/appbrain/a/i0;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/a/i0;-><init>(Landroid/content/Context;Lcom/appbrain/a/e;)V

    return-object v0
.end method

.method static synthetic e(Lcom/appbrain/a/i0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/i0;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a(II)Lcom/appbrain/a/f$b;
    .locals 11

    invoke-static {p1, p2}, Lcom/appbrain/a/f;->b(II)Lcom/appbrain/a/f$a;

    move-result-object v0

    sget-object v1, Lcom/appbrain/a/i0$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/i0;->b:Lcom/appbrain/a/e;

    invoke-virtual {v0}, Lcom/appbrain/a/e;->j()I

    move-result v0

    sget-object v1, Lcom/appbrain/a/i;->b:[Lcom/appbrain/a/i$l;

    aget-object v1, v1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, 0x7

    sget-object v1, Lcom/appbrain/a/i;->c:Lcom/appbrain/a/i$l;

    :goto_0
    iget-object v2, p0, Lcom/appbrain/a/i0;->b:Lcom/appbrain/a/e;

    invoke-virtual {v2}, Lcom/appbrain/a/e;->l()Lcom/appbrain/b;

    move-result-object v2

    iget-object v3, p0, Lcom/appbrain/a/i0;->b:Lcom/appbrain/a/e;

    invoke-virtual {v3}, Lcom/appbrain/a/e;->i()I

    move-result v3

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/appbrain/a/i0;->b:Lcom/appbrain/a/e;

    invoke-virtual {v0}, Lcom/appbrain/a/e;->g()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/appbrain/a/i0;->b:Lcom/appbrain/a/e;

    invoke-virtual {v0}, Lcom/appbrain/a/e;->h()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    add-int/2addr v3, v0

    new-instance v10, Lcom/appbrain/a/i0$a;

    invoke-direct {v10, p0, v2, v3}, Lcom/appbrain/a/i0$a;-><init>(Lcom/appbrain/a/i0;Lcom/appbrain/b;I)V

    sget-object v0, Lcom/appbrain/a/i;->a:[Lcom/appbrain/a/i$j;

    iget-object v4, p0, Lcom/appbrain/a/i0;->b:Lcom/appbrain/a/e;

    invoke-virtual {v4}, Lcom/appbrain/a/e;->i()I

    move-result v4

    aget-object v7, v0, v4

    iget-object v0, p0, Lcom/appbrain/a/i0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/appbrain/a/i0;->c:[I

    iget-object v5, p0, Lcom/appbrain/a/i0;->b:Lcom/appbrain/a/e;

    invoke-virtual {v5}, Lcom/appbrain/a/e;->g()I

    move-result v5

    aget v4, v4, v5

    invoke-static {v4, v0}, Lcom/appbrain/a/q;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/appbrain/a/i0;->d:[I

    iget-object v6, p0, Lcom/appbrain/a/i0;->b:Lcom/appbrain/a/e;

    invoke-virtual {v6}, Lcom/appbrain/a/e;->h()I

    move-result v6

    aget v4, v4, v6

    invoke-static {v4, v0}, Lcom/appbrain/a/q;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/appbrain/a/i$m;

    move-object v4, v0

    move v8, p1

    move v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/appbrain/a/i$m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/appbrain/a/i$j;IILandroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/appbrain/a/i0;->a:Landroid/content/Context;

    invoke-interface {v1, p1, v0}, Lcom/appbrain/a/i$l;->a(Landroid/content/Context;Lcom/appbrain/a/i$m;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/appbrain/a/r$a;

    invoke-direct {p2}, Lcom/appbrain/a/r$a;-><init>()V

    invoke-virtual {p2, v3}, Lcom/appbrain/a/r$a;->e(I)Lcom/appbrain/a/r$a;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/appbrain/b;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/appbrain/a/r$a;->h(I)Lcom/appbrain/a/r$a;

    iget-object v0, p0, Lcom/appbrain/a/i0;->b:Lcom/appbrain/a/e;

    invoke-virtual {v0}, Lcom/appbrain/a/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/a/m1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/appbrain/a/r$a;->f(Ljava/lang/String;)Lcom/appbrain/a/r$a;

    :cond_2
    new-instance v0, Lcom/appbrain/a/f$b;

    invoke-virtual {p2}, Lcom/appbrain/a/r$a;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/appbrain/a/f$b;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-object v0
.end method

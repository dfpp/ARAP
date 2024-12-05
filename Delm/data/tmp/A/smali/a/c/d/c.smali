.class public La/c/d/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:La/c/d/h;

.field private static final b:La/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/d<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, La/c/d/g;

    invoke-direct {v0}, La/c/d/g;-><init>()V

    :goto_0
    sput-object v0, La/c/d/c;->a:La/c/d/h;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    new-instance v0, La/c/d/f;

    invoke-direct {v0}, La/c/d/f;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    invoke-static {}, La/c/d/e;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, La/c/d/e;

    invoke-direct {v0}, La/c/d/e;-><init>()V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    new-instance v0, La/c/d/d;

    invoke-direct {v0}, La/c/d/d;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, La/c/d/h;

    invoke-direct {v0}, La/c/d/h;-><init>()V

    goto :goto_0

    :goto_1
    new-instance v0, La/b/d;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, La/b/d;-><init>(I)V

    sput-object v0, La/c/d/c;->b:La/b/d;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;[La/c/f/b$f;I)Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, La/c/d/c;->a:La/c/d/h;

    invoke-virtual {v0, p0, p1, p2, p3}, La/c/d/h;->b(Landroid/content/Context;Landroid/os/CancellationSignal;[La/c/f/b$f;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;La/c/c/b/c$a;Landroid/content/res/Resources;IILa/c/c/b/f$a;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 7

    instance-of v1, p1, La/c/c/b/c$d;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, La/c/c/b/c$d;

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p7, :cond_0

    invoke-virtual {v0}, La/c/c/b/c$d;->a()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    :goto_0
    const/4 v4, 0x1

    :cond_1
    if-eqz p7, :cond_2

    invoke-virtual {v0}, La/c/c/b/c$d;->c()I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    const/4 v5, -0x1

    :goto_1
    invoke-virtual {v0}, La/c/c/b/c$d;->b()La/c/f/a;

    move-result-object v1

    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move v6, p4

    invoke-static/range {v0 .. v6}, La/c/f/b;->g(Landroid/content/Context;La/c/f/a;La/c/c/b/f$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v1, La/c/d/c;->a:La/c/d/h;

    move-object v0, p1

    check-cast v0, La/c/c/b/c$b;

    invoke-virtual {v1, p0, v0, p2, p4}, La/c/d/h;->a(Landroid/content/Context;La/c/c/b/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p5, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {p5, v0, p6}, La/c/c/b/f$a;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    :cond_4
    const/4 v1, -0x3

    invoke-virtual {p5, v1, p6}, La/c/c/b/f$a;->a(ILandroid/os/Handler;)V

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    sget-object v1, La/c/d/c;->b:La/b/d;

    invoke-static {p2, p3, p4}, La/c/d/c;->d(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, La/b/d;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public static c(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    sget-object v0, La/c/d/c;->a:La/c/d/h;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, La/c/d/h;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p4}, La/c/d/c;->d(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    sget-object p2, La/c/d/c;->b:La/b/d;

    invoke-virtual {p2, p1, p0}, La/b/d;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private static d(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, La/c/d/c;->b:La/b/d;

    invoke-static {p0, p1, p2}, La/c/d/c;->d(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, La/b/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method

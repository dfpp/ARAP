.class La/c/d/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/c/d/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/c/d/h;->g([La/c/f/b$f;I)La/c/f/b$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c/d/h$c<",
        "La/c/f/b$f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(La/c/d/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, La/c/f/b$f;

    invoke-virtual {p0, p1}, La/c/d/h$a;->c(La/c/f/b$f;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, La/c/f/b$f;

    invoke-virtual {p0, p1}, La/c/d/h$a;->d(La/c/f/b$f;)Z

    move-result p1

    return p1
.end method

.method public c(La/c/f/b$f;)I
    .locals 0

    invoke-virtual {p1}, La/c/f/b$f;->d()I

    move-result p1

    return p1
.end method

.method public d(La/c/f/b$f;)Z
    .locals 0

    invoke-virtual {p1}, La/c/f/b$f;->e()Z

    move-result p1

    return p1
.end method

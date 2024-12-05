.class final La/c/f/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/c/f/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/c/f/b;->g(Landroid/content/Context;La/c/f/a;La/c/c/b/f$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c/f/c$d<",
        "La/c/f/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/c/c/b/f$a;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(La/c/c/b/f$a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, La/c/f/b$b;->a:La/c/c/b/f$a;

    iput-object p2, p0, La/c/f/b$b;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, La/c/f/b$g;

    invoke-virtual {p0, p1}, La/c/f/b$b;->b(La/c/f/b$g;)V

    return-void
.end method

.method public b(La/c/f/b$g;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, La/c/f/b$b;->a:La/c/c/b/f$a;

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, La/c/f/b$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, La/c/c/b/f$a;->a(ILandroid/os/Handler;)V

    goto :goto_1

    :cond_0
    iget v0, p1, La/c/f/b$g;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, La/c/f/b$b;->a:La/c/c/b/f$a;

    iget-object p1, p1, La/c/f/b$g;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, La/c/f/b$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, La/c/c/b/f$a;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, La/c/f/b$b;->a:La/c/c/b/f$a;

    goto :goto_0

    :goto_1
    return-void
.end method

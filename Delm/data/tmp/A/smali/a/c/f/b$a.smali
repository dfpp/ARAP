.class final La/c/f/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "La/c/f/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:La/c/f/a;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;La/c/f/a;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/c/f/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, La/c/f/b$a;->b:La/c/f/a;

    iput p3, p0, La/c/f/b$a;->c:I

    iput-object p4, p0, La/c/f/b$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La/c/f/b$g;
    .locals 4

    iget-object v0, p0, La/c/f/b$a;->a:Landroid/content/Context;

    iget-object v1, p0, La/c/f/b$a;->b:La/c/f/a;

    iget v2, p0, La/c/f/b$a;->c:I

    invoke-static {v0, v1, v2}, La/c/f/b;->f(Landroid/content/Context;La/c/f/a;I)La/c/f/b$g;

    move-result-object v0

    iget-object v1, v0, La/c/f/b$g;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    sget-object v2, La/c/f/b;->a:La/b/d;

    iget-object v3, p0, La/c/f/b$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, La/b/d;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La/c/f/b$a;->a()La/c/f/b$g;

    move-result-object v0

    return-object v0
.end method

.class Landroidx/appcompat/view/menu/j;
.super Landroidx/appcompat/view/menu/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/j$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;La/c/e/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/i;-><init>(Landroid/content/Context;La/c/e/a/b;)V

    return-void
.end method


# virtual methods
.method h(Landroid/view/ActionProvider;)Landroidx/appcompat/view/menu/i$a;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/j$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/view/menu/j$a;-><init>(Landroidx/appcompat/view/menu/j;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method

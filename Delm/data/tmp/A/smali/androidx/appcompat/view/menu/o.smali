.class public final Landroidx/appcompat/view/menu/o;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;La/c/e/a/b;)Landroid/view/MenuItem;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/j;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/j;-><init>(Landroid/content/Context;La/c/e/a/b;)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/i;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/i;-><init>(Landroid/content/Context;La/c/e/a/b;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;La/c/e/a/c;)Landroid/view/SubMenu;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/t;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/t;-><init>(Landroid/content/Context;La/c/e/a/c;)V

    return-object v0
.end method

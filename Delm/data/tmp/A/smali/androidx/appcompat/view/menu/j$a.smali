.class Landroidx/appcompat/view/menu/j$a;
.super Landroidx/appcompat/view/menu/i$a;
.source ""

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field d:La/c/i/b$b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/j;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/i$a;-><init>(Landroidx/appcompat/view/menu/i;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public d(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/i$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public j(La/c/i/b$b;)V
    .locals 1

    iput-object p1, p0, Landroidx/appcompat/view/menu/j$a;->d:La/c/i/b$b;

    iget-object v0, p0, Landroidx/appcompat/view/menu/i$a;->b:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/j$a;->d:La/c/i/b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, La/c/i/b$b;->onActionProviderVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

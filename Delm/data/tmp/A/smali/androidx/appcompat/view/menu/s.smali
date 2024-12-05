.class public Landroidx/appcompat/view/menu/s;
.super Landroidx/appcompat/view/menu/g;
.source ""

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private A:Landroidx/appcompat/view/menu/h;

.field private z:Landroidx/appcompat/view/menu/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/h;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/s;->z:Landroidx/appcompat/view/menu/g;

    iput-object p3, p0, Landroidx/appcompat/view/menu/s;->A:Landroidx/appcompat/view/menu/h;

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->B()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->C()Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->D()Z

    move-result v0

    return v0
.end method

.method public L(Landroidx/appcompat/view/menu/g$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->L(Landroidx/appcompat/view/menu/g$a;)V

    return-void
.end method

.method public W()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->z:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method public e(Landroidx/appcompat/view/menu/h;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->e(Landroidx/appcompat/view/menu/h;)Z

    move-result p1

    return p1
.end method

.method g(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/g;->g(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/g;->g(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->A:Landroidx/appcompat/view/menu/h;

    return-object v0
.end method

.method public j(Landroidx/appcompat/view/menu/h;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->j(Landroidx/appcompat/view/menu/h;)Z

    move-result p1

    return p1
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/g;->N(I)Landroidx/appcompat/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/g;->O(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/g;->Q(I)Landroidx/appcompat/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/g;->R(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/g;->S(Landroid/view/View;)Landroidx/appcompat/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->A:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->A:Landroidx/appcompat/view/menu/h;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/h;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->setQwertyMode(Z)V

    return-void
.end method

.method public z()Landroidx/appcompat/view/menu/g;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->z()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    return-object v0
.end method

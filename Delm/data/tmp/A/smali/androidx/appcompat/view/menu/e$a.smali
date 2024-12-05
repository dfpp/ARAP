.class Landroidx/appcompat/view/menu/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/view/menu/e;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/e;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/e$a;->b:Landroidx/appcompat/view/menu/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/e$a;->b:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/e$a;->b:Landroidx/appcompat/view/menu/e;

    iget-object v0, v0, Landroidx/appcompat/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/e$a;->b:Landroidx/appcompat/view/menu/e;

    iget-object v0, v0, Landroidx/appcompat/view/menu/e;->j:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/e$d;

    iget-object v0, v0, Landroidx/appcompat/view/menu/e$d;->a:Landroidx/appcompat/widget/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->p()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/e$a;->b:Landroidx/appcompat/view/menu/e;

    iget-object v0, v0, Landroidx/appcompat/view/menu/e;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/e$a;->b:Landroidx/appcompat/view/menu/e;

    iget-object v0, v0, Landroidx/appcompat/view/menu/e;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/e$d;

    iget-object v1, v1, Landroidx/appcompat/view/menu/e$d;->a:Landroidx/appcompat/widget/y;

    invoke-virtual {v1}, Landroidx/appcompat/widget/w;->e()V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/e$a;->b:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->dismiss()V

    :cond_2
    return-void
.end method

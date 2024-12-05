.class Landroidx/appcompat/widget/w$c;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/w;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/w;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/w$c;->a:Landroidx/appcompat/widget/w;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/w$c;->a:Landroidx/appcompat/widget/w;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/w$c;->a:Landroidx/appcompat/widget/w;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->e()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/w$c;->a:Landroidx/appcompat/widget/w;

    invoke-virtual {v0}, Landroidx/appcompat/widget/w;->dismiss()V

    return-void
.end method

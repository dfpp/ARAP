.class final Lcom/appbrain/a/i$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/appbrain/w/a;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/appbrain/w/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/i$c;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/appbrain/a/i$c;->c:Lcom/appbrain/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/appbrain/a/i$c;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/appbrain/a/i$c;->c:Lcom/appbrain/w/a;

    iget-object v0, p0, Lcom/appbrain/a/i$c;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/appbrain/w/a;->a(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/appbrain/a/i$c;->c:Lcom/appbrain/w/a;

    iget-object v0, p0, Lcom/appbrain/a/i$c;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/appbrain/w/a;->c(Landroid/view/View;)V

    return-void
.end method

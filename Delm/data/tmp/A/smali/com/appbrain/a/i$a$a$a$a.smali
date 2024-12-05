.class final Lcom/appbrain/a/i$a$a$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/i$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/a/i$a$a$a;


# direct methods
.method constructor <init>(Lcom/appbrain/a/i$a$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/i$a$a$a$a;->a:Lcom/appbrain/a/i$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/appbrain/a/i$a$a$a$a;->a:Lcom/appbrain/a/i$a$a$a;

    iget-object p1, p1, Lcom/appbrain/a/i$a$a$a;->b:Lcom/appbrain/a/i$a$a;

    iget-object v0, p1, Lcom/appbrain/a/i$a$a;->c:Lcom/appbrain/a/i$a;

    iget-object v0, v0, Lcom/appbrain/a/i$a;->b:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/appbrain/a/i$a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/appbrain/a/i$a$a$a$a;->a:Lcom/appbrain/a/i$a$a$a;

    iget-object p1, p1, Lcom/appbrain/a/i$a$a$a;->b:Lcom/appbrain/a/i$a$a;

    iget-object p1, p1, Lcom/appbrain/a/i$a$a;->c:Lcom/appbrain/a/i$a;

    iget-object v0, p1, Lcom/appbrain/a/i$a;->d:Landroid/widget/RelativeLayout;

    iget-object p1, p1, Lcom/appbrain/a/i$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

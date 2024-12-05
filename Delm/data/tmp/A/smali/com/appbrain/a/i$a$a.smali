.class final Lcom/appbrain/a/i$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/i$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/appbrain/a/i$a;


# direct methods
.method constructor <init>(Lcom/appbrain/a/i$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/i$a$a;->c:Lcom/appbrain/a/i$a;

    iput-object p2, p0, Lcom/appbrain/a/i$a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/appbrain/a/i$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object p1, p0, Lcom/appbrain/a/i$a$a;->c:Lcom/appbrain/a/i$a;

    iget-object p1, p1, Lcom/appbrain/a/i$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appbrain/a/i$a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/appbrain/a/i$a$a;->c:Lcom/appbrain/a/i$a;

    iget-object p1, p1, Lcom/appbrain/a/i$a;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/appbrain/a/i$a$a$a;

    invoke-direct {v0, p0}, Lcom/appbrain/a/i$a$a$a;-><init>(Lcom/appbrain/a/i$a$a;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

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

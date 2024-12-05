.class final Lcom/appbrain/a/i$a$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/i$a$a;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/i$a$a;


# direct methods
.method constructor <init>(Lcom/appbrain/a/i$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/i$a$a$a;->b:Lcom/appbrain/a/i$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/appbrain/a/i$a$a$a;->b:Lcom/appbrain/a/i$a$a;

    iget-object v0, v0, Lcom/appbrain/a/i$a$a;->c:Lcom/appbrain/a/i$a;

    iget-object v0, v0, Lcom/appbrain/a/i$a;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/appbrain/a/i$a$a$a$a;

    invoke-direct {v1, p0}, Lcom/appbrain/a/i$a$a$a$a;-><init>(Lcom/appbrain/a/i$a$a$a;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v2}, Landroid/view/animation/AlphaAnimation;->startNow()V

    invoke-virtual {v2, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

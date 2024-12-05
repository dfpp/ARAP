.class final Lcom/appbrain/a/u$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/u;->F()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/appbrain/a/u;


# direct methods
.method constructor <init>(Lcom/appbrain/a/u;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/u$b;->c:Lcom/appbrain/a/u;

    iput-object p2, p0, Lcom/appbrain/a/u$b;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/appbrain/a/u$b;->b:Landroid/widget/TextView;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appbrain/a/u$b;->c:Lcom/appbrain/a/u;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/appbrain/a/u;->C(Lcom/appbrain/a/u;II)V

    :cond_0
    return-void
.end method

.class public Lcom/appbrain/o/x;
.super Lcom/appbrain/o/w;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xd
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/o/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    :goto_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_1
    return-object v0
.end method

.class public final Lcom/appbrain/a/e1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/e1$d;,
        Lcom/appbrain/a/e1$e;,
        Lcom/appbrain/a/e1$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Set;

.field private static c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appbrain/a/e1;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/appbrain/a/e1;->b:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    sput-object p0, Lcom/appbrain/a/e1;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic b()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/appbrain/a/e1;->b:Ljava/util/Set;

    return-object v0
.end method

.method static c(Landroid/app/Activity;Lcom/appbrain/t/u;Lcom/appbrain/a/e1$c;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/appbrain/a/e1$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/appbrain/a/e1$a;-><init>(Landroid/app/Activity;Lcom/appbrain/t/u;Lcom/appbrain/a/e1$c;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method static synthetic d(Lcom/appbrain/t/u;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/appbrain/a/e1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/a/e1$c;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/appbrain/a/e1;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/appbrain/t/u;->T()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p0, v0}, Lcom/appbrain/a/e1$c;->b(Lcom/appbrain/t/u;Z)V

    const/4 p0, 0x0

    sput-object p0, Lcom/appbrain/a/e1;->c:Ljava/lang/Integer;

    :cond_1
    return-void
.end method

.method static synthetic e()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/appbrain/a/e1;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Landroid/app/Activity;Lcom/appbrain/t/u;Lcom/appbrain/a/e1$c;)V
    .locals 3

    sget-object v0, Lcom/appbrain/a/e1;->a:Ljava/util/Map;

    invoke-static {p2}, Lcom/appbrain/a/e1$c;->a(Lcom/appbrain/a/e1$c;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/appbrain/a/e1;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/a/e1$e;

    invoke-virtual {v1}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v1, p0, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appbrain.internal.AppAlertWebViewManager"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/appbrain/a/e1$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/appbrain/a/e1$e;-><init>(Landroid/app/Activity;Lcom/appbrain/t/u;B)V

    sget-object v2, Lcom/appbrain/a/e1;->b:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/appbrain/a/e1$b;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/appbrain/a/e1$b;-><init>(Landroid/app/Activity;Lcom/appbrain/t/u;Lcom/appbrain/a/e1$c;Lcom/appbrain/a/e1$e;)V

    invoke-static {v0, v2}, Lcom/appbrain/a/e1$e;->b(Lcom/appbrain/a/e1$e;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/appbrain/a/e1$e;->a(Lcom/appbrain/a/e1$e;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-static {v0}, Lcom/appbrain/a/e1$e;->a(Lcom/appbrain/a/e1$e;)Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v1, v1, p2, p1}, Landroid/webkit/WebView;->layout(IIII)V

    :cond_1
    invoke-static {v0}, Lcom/appbrain/a/e1$e;->e(Lcom/appbrain/a/e1$e;)V

    :cond_2
    return-void
.end method

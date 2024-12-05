.class public final Lcom/appbrain/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/a$b;
    }
.end annotation


# static fields
.field private static b:Lcom/appbrain/a/a;


# instance fields
.field private a:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/a;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/appbrain/a/a$b;)Lcom/appbrain/a/a$b;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "AppBrain"

    const/4 v2, 0x5

    const/16 v3, 0xe

    if-ge v0, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t register lifecycle listener on Android "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Mediated ads may not work optimally."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "Activity not found from Context, couldn\'t register lifecycle listener. Mediated ads may not work optimally."

    invoke-static {v2, v1, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    sget-object v0, Lcom/appbrain/a/a;->b:Lcom/appbrain/a/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/appbrain/a/a;

    invoke-direct {v0}, Lcom/appbrain/a/a;-><init>()V

    sput-object v0, Lcom/appbrain/a/a;->b:Lcom/appbrain/a/a;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appbrain/a/a;->e(Landroid/app/Application;)V

    :cond_2
    sget-object v0, Lcom/appbrain/a/a;->b:Lcom/appbrain/a/a;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/a/a;->g(Landroid/app/Activity;Lcom/appbrain/a/a$b;)V

    return-object p1
.end method

.method public static b(Landroid/view/View;Lcom/appbrain/a/a$b;)Lcom/appbrain/a/a$b;
    .locals 2

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/o/j;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez v0, :cond_1

    instance-of v1, p0, Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0, p1}, Lcom/appbrain/a/a;->a(Landroid/app/Activity;Lcom/appbrain/a/a$b;)Lcom/appbrain/a/a$b;

    return-object p1
.end method

.method static synthetic c(Lcom/appbrain/a/a;Landroid/app/Activity;)Ljava/lang/Iterable;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method static synthetic d(Lcom/appbrain/a/a;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/a;->a:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method private e(Landroid/app/Application;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    new-instance v0, Lcom/appbrain/a/a$a;

    invoke-direct {v0, p0}, Lcom/appbrain/a/a$a;-><init>(Lcom/appbrain/a/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static f(Lcom/appbrain/a/a$b;)V
    .locals 2

    sget-object v0, Lcom/appbrain/a/a;->b:Lcom/appbrain/a/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/appbrain/a/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g(Landroid/app/Activity;Lcom/appbrain/a/a$b;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/appbrain/a/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

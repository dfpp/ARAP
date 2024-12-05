.class final Lcom/appbrain/o/u$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/u$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-static {}, Lcom/appbrain/o/u;->b()Ljava/lang/String;

    :try_start_1
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    invoke-static {}, Lcom/appbrain/o/u;->b()Ljava/lang/String;

    return-object v0

    :catch_1
    invoke-static {}, Lcom/appbrain/o/u;->b()Ljava/lang/String;

    return-object v0
.end method

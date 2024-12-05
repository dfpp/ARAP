.class final Lcom/appbrain/a/g0$g;
.super Landroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/appbrain/a/g0;


# direct methods
.method private constructor <init>(Lcom/appbrain/a/g0;)V
    .locals 1

    iput-object p1, p0, Lcom/appbrain/a/g0$g;->b:Lcom/appbrain/a/g0;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    const-string p1, "ophs"

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/appbrain/a/l1;->b(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/appbrain/a/g0$g;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/appbrain/a/g0;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/g0$g;-><init>(Lcom/appbrain/a/g0;)V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget v0, p0, Lcom/appbrain/a/g0$g;->a:I

    if-le p2, v0, :cond_0

    new-instance v0, Lcom/appbrain/a/g0$g$a;

    invoke-direct {v0, p0, p2}, Lcom/appbrain/a/g0$g$a;-><init>(Lcom/appbrain/a/g0$g;I)V

    invoke-static {v0}, Lcom/appbrain/o/j;->i(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

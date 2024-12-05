.class public Lcom/appbrain/o/u;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/o/u$c;,
        Lcom/appbrain/o/u$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "u"

.field private static b:Lcom/appbrain/o/u$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/o/u$a;

    invoke-direct {v0}, Lcom/appbrain/o/u$a;-><init>()V

    sput-object v0, Lcom/appbrain/o/u;->b:Lcom/appbrain/o/u$c;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 1

    sget-object v0, Lcom/appbrain/o/u;->b:Lcom/appbrain/o/u$c;

    invoke-interface {v0, p0}, Lcom/appbrain/o/u$c;->a(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appbrain/o/u;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {p1}, Lcom/appbrain/o/u;->d(Landroid/webkit/WebView;)V

    new-instance v0, Lcom/appbrain/o/u$b;

    invoke-direct {v0, p0, p2}, Lcom/appbrain/o/u$b;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    const-string p0, "appbrain"

    invoke-virtual {p1, v0, p0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/webkit/WebView;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_1
    return-void
.end method

.method public static e(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<html><body style=\"color: %23444; background-color: %23fff\"><h2>There was a network error.</h2><p>Please check your internet connection and <a href=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"> click here to try again</a>.</p><p><button onclick=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\">Cancel</button></p></body></html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "text/html"

    const-string v0, "utf-8"

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

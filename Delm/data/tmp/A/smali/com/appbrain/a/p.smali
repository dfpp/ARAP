.class public final Lcom/appbrain/a/p;
.super Lcom/appbrain/a/f;
.source ""


# instance fields
.field private final a:Lcom/appbrain/a/f$b;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/f;-><init>()V

    new-instance v0, Lcom/appbrain/a/p$a;

    invoke-direct {v0, p0, p1, p2, p1}, Lcom/appbrain/a/p$a;-><init>(Lcom/appbrain/a/p;Landroid/view/View;Ljava/lang/String;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/appbrain/a/p;->a:Lcom/appbrain/a/f$b;

    return-void
.end method

.method static c(Landroid/content/Context;Lcom/appbrain/a/e;Lcom/appbrain/a/h$b;)Lcom/appbrain/a/p;
    .locals 5

    invoke-static {p0}, Lcom/appbrain/o/u;->a(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/appbrain/o/u;->d(Landroid/webkit/WebView;)V

    invoke-virtual {p2}, Lcom/appbrain/a/h$b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/appbrain/a/c;

    invoke-static {p0}, Lcom/appbrain/o/j;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/appbrain/a/p$b;

    invoke-direct {v4, p1, p0}, Lcom/appbrain/a/p$b;-><init>(Lcom/appbrain/a/e;Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/appbrain/a/e;->l()Lcom/appbrain/b;

    move-result-object p0

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/appbrain/a/c;-><init>(Landroid/app/Activity;ZLcom/appbrain/a/c$h;Lcom/appbrain/b;)V

    const-string p0, "appbrain"

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/appbrain/a/r$a;

    invoke-direct {p0}, Lcom/appbrain/a/r$a;-><init>()V

    invoke-virtual {p1}, Lcom/appbrain/a/e;->l()Lcom/appbrain/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/appbrain/a/e;->l()Lcom/appbrain/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/b;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/appbrain/a/r$a;->h(I)Lcom/appbrain/a/r$a;

    invoke-virtual {p1}, Lcom/appbrain/a/e;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/a/m1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appbrain/a/r$a;->f(Ljava/lang/String;)Lcom/appbrain/a/r$a;

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/appbrain/a/h$b;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/appbrain/a/r$a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&html=1"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/appbrain/a/p;

    invoke-direct {p1, v0, p0}, Lcom/appbrain/a/p;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final a(II)Lcom/appbrain/a/f$b;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/appbrain/a/p;->a:Lcom/appbrain/a/f$b;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

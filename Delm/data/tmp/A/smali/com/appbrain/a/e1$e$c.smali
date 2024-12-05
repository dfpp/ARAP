.class final Lcom/appbrain/a/e1$e$c;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/e1$e;-><init>(Landroid/app/Activity;Lcom/appbrain/t/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/appbrain/a/e1$e;


# direct methods
.method constructor <init>(Lcom/appbrain/a/e1$e;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/e1$e$c;->b:Lcom/appbrain/a/e1$e;

    iput-object p2, p0, Lcom/appbrain/a/e1$e$c;->a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/appbrain/a/e1$e$c;->b:Lcom/appbrain/a/e1$e;

    invoke-static {p1}, Lcom/appbrain/a/e1$e;->h(Lcom/appbrain/a/e1$e;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/appbrain/a/e1$e$c;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/appbrain/o/j;->g(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/appbrain/a/e1$e$c;->b:Lcom/appbrain/a/e1$e;

    invoke-static {p1}, Lcom/appbrain/a/e1$e;->i(Lcom/appbrain/a/e1$e;)Z

    iget-object p1, p0, Lcom/appbrain/a/e1$e$c;->b:Lcom/appbrain/a/e1$e;

    invoke-static {p1}, Lcom/appbrain/a/e1$e;->j(Lcom/appbrain/a/e1$e;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/appbrain/a/e1$e$c;->b:Lcom/appbrain/a/e1$e;

    invoke-static {p1}, Lcom/appbrain/a/e1$e;->j(Lcom/appbrain/a/e1$e;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lcom/appbrain/a/e1;->b()Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/appbrain/a/e1$e$c;->b:Lcom/appbrain/a/e1$e;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/appbrain/a/e1$e$c;->b:Lcom/appbrain/a/e1$e;

    invoke-static {p1}, Lcom/appbrain/a/e1$e;->g(Lcom/appbrain/a/e1$e;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/appbrain/a/e1$e$c;->b:Lcom/appbrain/a/e1$e;

    invoke-static {p1, p2}, Lcom/appbrain/a/e1$e;->d(Lcom/appbrain/a/e1$e;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

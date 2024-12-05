.class final Lcom/appbrain/a/g0$d;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/g0;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/a/g0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/g0$d;->a:Lcom/appbrain/a/g0;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/appbrain/a/g0$d;->a:Lcom/appbrain/a/g0;

    invoke-virtual {p2}, Lcom/appbrain/a/j1;->s()Z

    move-result p2

    invoke-static {}, Lcom/appbrain/a/m1;->r()Z

    move-result p3

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/appbrain/a/g0$d;->a:Lcom/appbrain/a/g0;

    invoke-virtual {p1}, Lcom/appbrain/a/j1;->o()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "You are not connected to the internet"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/appbrain/a/g0$d;->a:Lcom/appbrain/a/g0;

    invoke-virtual {p1}, Lcom/appbrain/a/j1;->q()V

    return-void

    :cond_0
    const-string p2, "adApi.close()"

    invoke-static {p1, p4, p2}, Lcom/appbrain/o/u;->e(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    iget-object p1, p0, Lcom/appbrain/a/g0$d;->a:Lcom/appbrain/a/g0;

    invoke-virtual {p1}, Lcom/appbrain/a/j1;->s()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/appbrain/a/g0$d;->a:Lcom/appbrain/a/g0;

    invoke-static {p1}, Lcom/appbrain/a/g0;->A(Lcom/appbrain/a/g0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "data:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/appbrain/a/g0$d;->a:Lcom/appbrain/a/g0;

    invoke-virtual {p2}, Lcom/appbrain/a/j1;->p()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appbrain/a/h0;->f(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/appbrain/a/g0$d;->a:Lcom/appbrain/a/g0;

    invoke-virtual {p2}, Lcom/appbrain/a/j1;->p()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appbrain/a/h0;->j(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

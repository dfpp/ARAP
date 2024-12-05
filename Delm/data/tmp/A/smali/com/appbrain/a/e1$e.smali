.class final Lcom/appbrain/a/e1$e;
.super Landroid/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final b:Lcom/appbrain/t/u;

.field private final c:Landroid/webkit/WebView;

.field private d:Ljava/lang/Runnable;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/appbrain/t/u;)V
    .locals 1

    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/appbrain/a/e1$e;->b:Lcom/appbrain/t/u;

    invoke-static {p0}, Lcom/appbrain/a/m1;->n(Landroid/app/Dialog;)V

    new-instance p2, Lcom/appbrain/a/e1$e$a;

    invoke-direct {p2, p0}, Lcom/appbrain/a/e1$e$a;-><init>(Lcom/appbrain/a/e1$e;)V

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {p1}, Lcom/appbrain/o/u;->a(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object p2

    iput-object p2, p0, Lcom/appbrain/a/e1$e;->c:Landroid/webkit/WebView;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/appbrain/a/e1$e;->c:Landroid/webkit/WebView;

    new-instance v0, Lcom/appbrain/a/e1$e$b;

    invoke-direct {v0, p0}, Lcom/appbrain/a/e1$e$b;-><init>(Lcom/appbrain/a/e1$e;)V

    invoke-static {p1, p2, v0}, Lcom/appbrain/o/u;->c(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/appbrain/a/e1$e;->c:Landroid/webkit/WebView;

    new-instance v0, Lcom/appbrain/a/e1$e$c;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/a/e1$e$c;-><init>(Lcom/appbrain/a/e1$e;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/appbrain/a/e1$e;->c:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/appbrain/t/u;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appbrain/a/e1$e;-><init>(Landroid/app/Activity;Lcom/appbrain/t/u;)V

    return-void
.end method

.method static synthetic a(Lcom/appbrain/a/e1$e;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/e1$e;->c:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic b(Lcom/appbrain/a/e1$e;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/e1$e;->d:Ljava/lang/Runnable;

    return-object p1
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/a/e1$e;->f:Z

    invoke-static {}, Lcom/appbrain/a/e1;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/appbrain/a/e1$e;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/appbrain/a/e1$e;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "close://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/appbrain/a/e1$e;->e:Z

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/appbrain/a/e1$e;->b:Lcom/appbrain/t/u;

    invoke-virtual {v0}, Lcom/appbrain/t/u;->T()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/a/e1;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p0

    sget-object v0, Lcom/appbrain/t/u$a;->e:Lcom/appbrain/t/u$a;

    invoke-static {p0, p1, v0}, Lcom/appbrain/a/d1;->c(Landroid/app/Activity;Ljava/lang/String;Lcom/appbrain/t/u$a;)V

    return v2
.end method

.method static synthetic e(Lcom/appbrain/a/e1$e;)V
    .locals 15

    iget-object v0, p0, Lcom/appbrain/a/e1$e;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/appbrain/a/e1$e;->b:Lcom/appbrain/t/u;

    invoke-virtual {v0}, Lcom/appbrain/t/u;->Z()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/appbrain/a/e1$e;->b:Lcom/appbrain/t/u;

    invoke-virtual {v0}, Lcom/appbrain/t/u;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/appbrain/o/i0;->e()Lcom/appbrain/o/i0;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v9, v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_e

    aget-object v10, v1, v8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v11, "="

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    aget-object v13, v10, v6

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v13, v10

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    aget-object v10, v10, v14

    goto :goto_1

    :cond_1
    move-object v10, v7

    :goto_1
    if-eqz v10, :cond_d

    const-string v13, "appbrain-app-package"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v2}, Lcom/appbrain/o/i0;->h()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    :cond_2
    const-string v13, "appbrain-app-version"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v2}, Lcom/appbrain/o/i0;->m()I

    move-result v10

    :goto_2
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_3
    const-string v13, "appbrain-os-version"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_2

    :cond_4
    const-string v13, "appbrain-os-language"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v2}, Lcom/appbrain/o/i0;->p()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_5
    const-string v13, "appbrain-screen-density"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-nez v9, :cond_6

    invoke-static {}, Lcom/appbrain/a/l0;->a()Lcom/appbrain/a/l0;

    move-result-object v9

    :cond_6
    invoke-virtual {v9}, Lcom/appbrain/a/l0;->e()I

    move-result v10

    goto :goto_2

    :cond_7
    const-string v13, "appbrain-screen-size"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    if-nez v9, :cond_8

    invoke-static {}, Lcom/appbrain/a/l0;->a()Lcom/appbrain/a/l0;

    move-result-object v9

    :cond_8
    invoke-virtual {v9}, Lcom/appbrain/a/l0;->b()I

    move-result v10

    goto :goto_2

    :cond_9
    const-string v13, "appbrain-screen-orientation"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-eq v10, v14, :cond_b

    if-eq v10, v12, :cond_a

    const-string v10, "undefined"

    goto :goto_3

    :cond_a
    const-string v10, "landscape"

    goto :goto_3

    :cond_b
    const-string v10, "portrait"

    :cond_c
    :goto_3
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_f
    iget-object p0, p0, Lcom/appbrain/a/e1$e;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/appbrain/a/e1$e;->b:Lcom/appbrain/t/u;

    invoke-virtual {v0}, Lcom/appbrain/t/u;->V()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/appbrain/a/e1$e;->c:Landroid/webkit/WebView;

    iget-object p0, p0, Lcom/appbrain/a/e1$e;->b:Lcom/appbrain/t/u;

    invoke-virtual {p0}, Lcom/appbrain/t/u;->W()Ljava/lang/String;

    move-result-object p0

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-direct {p0}, Lcom/appbrain/a/e1$e;->c()V

    return-void
.end method

.method static synthetic f(Lcom/appbrain/a/e1$e;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/a/e1$e;->g:Z

    return v0
.end method

.method static synthetic g(Lcom/appbrain/a/e1$e;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/e1$e;->c()V

    return-void
.end method

.method static synthetic h(Lcom/appbrain/a/e1$e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appbrain/a/e1$e;->f:Z

    return p0
.end method

.method static synthetic i(Lcom/appbrain/a/e1$e;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/a/e1$e;->e:Z

    return v0
.end method

.method static synthetic j(Lcom/appbrain/a/e1$e;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/a/e1$e;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic k(Lcom/appbrain/a/e1$e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appbrain/a/e1$e;->g:Z

    return p0
.end method

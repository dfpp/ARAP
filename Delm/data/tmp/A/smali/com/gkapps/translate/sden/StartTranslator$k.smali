.class Lcom/gkapps/translate/sden/StartTranslator$k;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gkapps/translate/sden/StartTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/gkapps/translate/sden/StartTranslator;


# direct methods
.method private constructor <init>(Lcom/gkapps/translate/sden/StartTranslator;)V
    .locals 1

    iput-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$k;->a:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator$k;->a:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gkapps/translate/sden/StartTranslator;Lcom/gkapps/translate/sden/StartTranslator$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/gkapps/translate/sden/StartTranslator$k;-><init>(Lcom/gkapps/translate/sden/StartTranslator;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$k;->a:Lcom/gkapps/translate/sden/StartTranslator;

    iget-object p1, p1, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$k;->a:Lcom/gkapps/translate/sden/StartTranslator;

    iget-object p1, p1, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$k;->a:Lcom/gkapps/translate/sden/StartTranslator;

    iget v1, p1, Lcom/gkapps/translate/sden/StartTranslator;->f:I

    if-nez v1, :cond_0

    iget-object p1, p1, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x23

    if-gt p1, v1, :cond_0

    const-string p1, "TRANSLATELOG"

    const-string v1, "MYTRANSLATE INSERT START"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$k;->a:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/gkapps/translate/sden/StartTranslator;->k:J

    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$k;->a:Lcom/gkapps/translate/sden/StartTranslator;

    iget-wide v1, p1, Lcom/gkapps/translate/sden/StartTranslator;->k:J

    iget-wide v3, p1, Lcom/gkapps/translate/sden/StartTranslator;->j:J

    sub-long/2addr v1, v3

    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "http://skripte-suchmaschine.de/android/sindhi_new_aktion_sd.php"

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "aktion"

    iget-object v7, p0, Lcom/gkapps/translate/sden/StartTranslator$k;->a:Lcom/gkapps/translate/sden/StartTranslator;

    iget-object v7, v7, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "translate"

    iget-object v7, p0, Lcom/gkapps/translate/sden/StartTranslator$k;->a:Lcom/gkapps/translate/sden/StartTranslator;

    iget-object v7, v7, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "dauer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "typ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator$k;->a:Lcom/gkapps/translate/sden/StartTranslator;

    iget v0, v0, Lcom/gkapps/translate/sden/StartTranslator;->f:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, v4, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected varargs c([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gkapps/translate/sden/StartTranslator$k;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gkapps/translate/sden/StartTranslator$k;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gkapps/translate/sden/StartTranslator$k;->c([Ljava/lang/Void;)V

    return-void
.end method

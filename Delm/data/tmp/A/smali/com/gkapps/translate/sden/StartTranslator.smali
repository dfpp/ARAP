.class public Lcom/gkapps/translate/sden/StartTranslator;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gkapps/translate/sden/StartTranslator$j;,
        Lcom/gkapps/translate/sden/StartTranslator$l;,
        Lcom/gkapps/translate/sden/StartTranslator$m;,
        Lcom/gkapps/translate/sden/StartTranslator$k;
    }
.end annotation


# static fields
.field static s:J


# instance fields
.field b:Ljava/lang/Boolean;

.field c:Ljava/lang/String;

.field d:Ljava/lang/Boolean;

.field e:Ljava/lang/String;

.field f:I

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/lang/String;

.field j:J

.field k:J

.field l:I

.field m:I

.field private n:Lcom/appbrain/j;

.field o:Landroid/speech/tts/TextToSpeech;

.field p:Landroid/speech/tts/TextToSpeech;

.field q:Z

.field private r:Landroid/view/Menu;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->b:Ljava/lang/Boolean;

    const-string v1, ""

    iput-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->d:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->f:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/gkapps/translate/sden/StartTranslator;->g:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/gkapps/translate/sden/StartTranslator;->h:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->j:J

    iput-wide v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->k:J

    iput v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->m:I

    iput-boolean v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->q:Z

    return-void
.end method

.method private a()V
    .locals 5

    const-string v0, "SPEECH"

    iget-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->p:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    const v1, 0x7f070055

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gkapps/translate/sden/StartTranslator;->p:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    iget-object v2, p0, Lcom/gkapps/translate/sden/StartTranslator;->p:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    const-string v1, "English NO ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/appbrain/g;->a()Lcom/appbrain/f;

    move-result-object v1

    const-string v2, "speech_en"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/appbrain/f;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "English ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 8

    const-string v0, "sd"

    const-string v1, "SPEECH"

    iget-object v2, p0, Lcom/gkapps/translate/sden/StartTranslator;->o:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_4

    const v2, 0x7f070055

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/gkapps/translate/sden/StartTranslator;->o:Landroid/speech/tts/TextToSpeech;

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->o:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->o:Landroid/speech/tts/TextToSpeech;

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v5, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    const-string v0, "Sindhi NO ERROR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "speech_sd_"

    if-eqz v4, :cond_3

    :try_start_1
    invoke-static {}, Lcom/appbrain/g;->a()Lcom/appbrain/f;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v6}, Lcom/appbrain/f;->a(Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/appbrain/g;->a()Lcom/appbrain/f;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "Sindhi ERROR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/gkapps/translate/sden/StartTranslator;)V
    .locals 0

    invoke-direct {p0}, Lcom/gkapps/translate/sden/StartTranslator;->f()V

    return-void
.end method

.method static synthetic d(Lcom/gkapps/translate/sden/StartTranslator;)V
    .locals 0

    invoke-direct {p0}, Lcom/gkapps/translate/sden/StartTranslator;->b()V

    return-void
.end method

.method static synthetic e(Lcom/gkapps/translate/sden/StartTranslator;)V
    .locals 0

    invoke-direct {p0}, Lcom/gkapps/translate/sden/StartTranslator;->a()V

    return-void
.end method

.method private f()V
    .locals 3

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/gkapps/translate/sden/StartTranslator$c;

    invoke-direct {v2, p0}, Lcom/gkapps/translate/sden/StartTranslator$c;-><init>(Lcom/gkapps/translate/sden/StartTranslator;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->o:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/gkapps/translate/sden/StartTranslator$d;

    invoke-direct {v2, p0}, Lcom/gkapps/translate/sden/StartTranslator$d;-><init>(Lcom/gkapps/translate/sden/StartTranslator;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->p:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method private g()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gkapps/translate/sden/StartTranslator$b;

    invoke-direct {v1, p0}, Lcom/gkapps/translate/sden/StartTranslator$b;-><init>(Lcom/gkapps/translate/sden/StartTranslator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "RESPONSE3: "

    const-string v1, "RESPONSE RESULT: "

    const-string v2, "UTF-8"

    const-string v3, "TRANSLATELOG"

    const-string v4, ""

    :try_start_0
    const-string v5, "https://backenster.com/b1/api/v3/translate/"

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "authorization"

    const-string v7, "a_UNJu7uB3XDOeXSwxY5QcdGktyi2yg4MujktTNsA74jcG1qIwIoA6J2B6wtqiBXSpWcKJ5hA2iakn3tZn"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "from="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&to="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&text="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&platform=api"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, p2, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v6, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "REQUEST INPUT: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "REQUEST: [{\n\t\"Text\": \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"\n}]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "RESPONSE: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    const-string p0, "RESPONSE: NEXT"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "result\":\""

    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v4, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const-string p2, "\"}"

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string p0, "\\n"

    const-string p1, "\n"

    invoke-virtual {v4, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v4
.end method


# virtual methods
.method public h()V
    .locals 7

    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/gkapps/translate/sden/StartTranslator;->f:I

    const-string v2, "TRANSLATE"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->g:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    const-string v3, "TRANSLATELOG"

    const-string v4, "MYTRANSLATE START"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x23

    if-gt v4, v5, :cond_0

    iget-object v4, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/gkapps/translate/sden/StartTranslator;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MYTRANSLATE RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "sd_IN"

    const-string v3, "en_GB"

    invoke-static {v0, v1, v3}, Lcom/gkapps/translate/sden/StartTranslator;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\\n"

    const-string v3, "\n"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    const-string v1, "&#39;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    const-string v3, "&quot;"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->d:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    iput-object v4, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->d:Ljava/lang/Boolean;

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v0, 0x5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Trans: "

    const-string v1, "Cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->d:Ljava/lang/Boolean;

    :cond_6
    const/4 v0, 0x4

    :goto_1
    iput v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->f:I

    :cond_7
    :goto_2
    return-void
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "UTF-8"

    const-string v1, ""

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "http://skripte-suchmaschine.de/android/sindhi_my_translate_sd.php"

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "aktion"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p1, v4, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :catch_0
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MY: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TRANSLATE"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "&#39;"

    const-string v0, "\'"

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "&quot;"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "UTF-8"

    const-string v1, ""

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "http://skripte-suchmaschine.de/android/sindhi_my_translate.php"

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "aktion"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p1, v4, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :catch_0
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MY: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TRANSLATE"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "&#39;"

    const-string v0, "\'"

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "&quot;"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.PROMPT"

    const-string v2, "Record"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Speech not supported"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public l()V
    .locals 3

    iget-boolean v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->r:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f06005f

    invoke-static {p0, v1}, La/c/c/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->q:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->r:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f06005e

    invoke-static {p0, v2}, La/c/c/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iput-boolean v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->q:Z

    :goto_0
    return-void
.end method

.method public m()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->n:Lcom/appbrain/j;

    invoke-virtual {v0, p0}, Lcom/appbrain/j;->o(Landroid/content/Context;)Z

    invoke-static {}, Lcom/appbrain/j;->f()Lcom/appbrain/j;

    move-result-object v0

    sget-object v1, Lcom/appbrain/b;->l:Lcom/appbrain/b;

    invoke-virtual {v0, v1}, Lcom/appbrain/j;->j(Lcom/appbrain/b;)Lcom/appbrain/j;

    invoke-virtual {v0, p0}, Lcom/appbrain/j;->i(Landroid/content/Context;)Lcom/appbrain/j;

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->n:Lcom/appbrain/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public n()V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->b:Ljava/lang/Boolean;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gkapps/translate/sden/StartTranslator$g;

    invoke-direct {v2, p0}, Lcom/gkapps/translate/sden/StartTranslator$g;-><init>(Lcom/gkapps/translate/sden/StartTranslator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f060061

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public o()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "You need an internet connection!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/gkapps/translate/sden/StartTranslator$h;

    invoke-direct {v1, p0}, Lcom/gkapps/translate/sden/StartTranslator$h;-><init>(Lcom/gkapps/translate/sden/StartTranslator;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f060061

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const p2, 0x7f070045

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->c:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/gkapps/translate/sden/StartTranslator;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/gkapps/translate/sden/StartTranslator;->g()V

    :try_start_0
    invoke-static {}, Lcom/appbrain/j;->f()Lcom/appbrain/j;

    move-result-object p1

    sget-object v0, Lcom/appbrain/b;->l:Lcom/appbrain/b;

    invoke-virtual {p1, v0}, Lcom/appbrain/j;->j(Lcom/appbrain/b;)Lcom/appbrain/j;

    invoke-virtual {p1, p0}, Lcom/appbrain/j;->i(Landroid/content/Context;)Lcom/appbrain/j;

    iput-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator;->n:Lcom/appbrain/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AD TIME DIFF"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/gkapps/translate/sden/StartTranslator;->s:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TRANSAPP"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/gkapps/translate/sden/StartTranslator;->s:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/gkapps/translate/sden/StartTranslator;->s:J

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/gkapps/translate/sden/StartTranslator;->t()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-virtual {p0}, Lcom/gkapps/translate/sden/StartTranslator;->r()V

    const-string p1, "notification"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/gkapps/translate/sden/StartTranslator;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator;->r:Landroid/view/Menu;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/gkapps/translate/sden/StartTranslator;->k()V

    return v1

    :pswitch_2
    invoke-virtual {p0}, Lcom/gkapps/translate/sden/StartTranslator;->l()V

    return v1

    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x7f070016
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public p()V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->b:Ljava/lang/Boolean;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Rate this App!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/gkapps/translate/sden/StartTranslator$i;

    invoke-direct {v1, p0}, Lcom/gkapps/translate/sden/StartTranslator$i;-><init>(Lcom/gkapps/translate/sden/StartTranslator;)V

    const-string v2, "YES"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/gkapps/translate/sden/StartTranslator$a;

    invoke-direct {v1, p0}, Lcom/gkapps/translate/sden/StartTranslator$a;-><init>(Lcom/gkapps/translate/sden/StartTranslator;)V

    const-string v2, "NO"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f060061

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public q()V
    .locals 7

    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/gkapps/translate/sden/StartTranslator;->f:I

    const-string v2, "TRANSLATE"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->h:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    const-string v3, "TRANSLATELOG"

    const-string v4, "MYTRANSLATE START"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x23

    if-gt v4, v5, :cond_0

    iget-object v4, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/gkapps/translate/sden/StartTranslator;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MYTRANSLATE RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "en_GB"

    const-string v3, "sd_IN"

    invoke-static {v0, v1, v3}, Lcom/gkapps/translate/sden/StartTranslator;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\\\n"

    const-string v3, "\n"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    const-string v1, "&#39;"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    const-string v3, "&quot;"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->h:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->d:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    iput-object v4, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->d:Ljava/lang/Boolean;

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v0, 0x5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Trans: "

    const-string v1, "Cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->h:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->d:Ljava/lang/Boolean;

    :cond_6
    const/4 v0, 0x4

    :goto_1
    iput v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->f:I

    :cond_7
    :goto_2
    return-void
.end method

.method public r()V
    .locals 3

    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/gkapps/translate/sden/StartTranslator$e;

    invoke-direct {v2, p0}, Lcom/gkapps/translate/sden/StartTranslator$e;-><init>(Lcom/gkapps/translate/sden/StartTranslator;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/gkapps/translate/sden/StartTranslator$f;

    invoke-direct {v2, p0}, Lcom/gkapps/translate/sden/StartTranslator$f;-><init>(Lcom/gkapps/translate/sden/StartTranslator;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    return-void
.end method

.method public t()V
    .locals 6

    const-string v0, "sindhitrans_count"

    const-string v1, "1"

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gkapps/translate/sden/StartTranslator;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->c:Ljava/lang/String;

    const-string v3, ""

    if-eq v1, v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-le v1, v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gkapps/translate/sden/StartTranslator;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator;->c:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.class Lcom/gkapps/translate/sden/StartTranslator$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gkapps/translate/sden/StartTranslator;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gkapps/translate/sden/StartTranslator;


# direct methods
.method constructor <init>(Lcom/gkapps/translate/sden/StartTranslator;)V
    .locals 0

    iput-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$c;->a:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 7

    const-string v0, "error"

    if-nez p1, :cond_5

    :try_start_0
    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$c;->a:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "sd"

    if-ge v3, v2, :cond_1

    :try_start_1
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator$c;->a:Lcom/gkapps/translate/sden/StartTranslator;

    iget-object v1, v1, Lcom/gkapps/translate/sden/StartTranslator;->o:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    const/4 v1, -0x2

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$c;->a:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-static {p1}, Lcom/gkapps/translate/sden/StartTranslator;->d(Lcom/gkapps/translate/sden/StartTranslator;)V

    goto :goto_3

    :cond_4
    :goto_1
    const-string p1, "This Language is not supported"

    :goto_2
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const-string p1, "Initilization Failed!"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :goto_3
    return-void
.end method

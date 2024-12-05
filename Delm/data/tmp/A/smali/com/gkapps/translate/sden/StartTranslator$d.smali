.class Lcom/gkapps/translate/sden/StartTranslator$d;
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

    iput-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$d;->a:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    const-string v0, "error"

    if-nez p1, :cond_2

    :try_start_0
    new-instance p1, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gkapps/translate/sden/StartTranslator$d;->a:Lcom/gkapps/translate/sden/StartTranslator;

    iget-object v1, v1, Lcom/gkapps/translate/sden/StartTranslator;->p:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$d;->a:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-static {p1}, Lcom/gkapps/translate/sden/StartTranslator;->e(Lcom/gkapps/translate/sden/StartTranslator;)V

    goto :goto_2

    :cond_1
    :goto_0
    const-string p1, "This Language is not supported"

    :goto_1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string p1, "Initilization Failed!"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_2
    return-void
.end method

.class Lcom/gkapps/translate/sden/StartTranslator$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gkapps/translate/sden/StartTranslator;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/gkapps/translate/sden/StartTranslator;


# direct methods
.method constructor <init>(Lcom/gkapps/translate/sden/StartTranslator;)V
    .locals 0

    iput-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$e;->b:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$e;->b:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/gkapps/translate/sden/StartTranslator;->j:J

    :try_start_0
    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$e;->b:Lcom/gkapps/translate/sden/StartTranslator;

    iget p1, p1, Lcom/gkapps/translate/sden/StartTranslator;->m:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$e;->b:Lcom/gkapps/translate/sden/StartTranslator;

    iget p1, p1, Lcom/gkapps/translate/sden/StartTranslator;->m:I

    rem-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$e;->b:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-virtual {p1}, Lcom/gkapps/translate/sden/StartTranslator;->n()V

    new-instance p1, Lcom/gkapps/translate/sden/StartTranslator$j;

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator$e;->b:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-direct {p1, v0, v2}, Lcom/gkapps/translate/sden/StartTranslator$j;-><init>(Lcom/gkapps/translate/sden/StartTranslator;Lcom/gkapps/translate/sden/StartTranslator$b;)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/gkapps/translate/sden/StartTranslator$j;

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator$e;->b:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-direct {p1, v0, v2}, Lcom/gkapps/translate/sden/StartTranslator$j;-><init>(Lcom/gkapps/translate/sden/StartTranslator;Lcom/gkapps/translate/sden/StartTranslator$b;)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.class Lcom/gkapps/translate/sden/StartTranslator$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gkapps/translate/sden/StartTranslator;->p()V
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

    iput-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$i;->b:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "market://details?id=com.gkapps.translate.sden"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/gkapps/translate/sden/StartTranslator$i;->b:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$i;->b:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-virtual {p1}, Lcom/gkapps/translate/sden/StartTranslator;->o()V

    :goto_0
    return-void
.end method

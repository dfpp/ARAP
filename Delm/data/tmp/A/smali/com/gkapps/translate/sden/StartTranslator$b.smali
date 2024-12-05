.class Lcom/gkapps/translate/sden/StartTranslator$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gkapps/translate/sden/StartTranslator;->g()V
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

    iput-object p1, p0, Lcom/gkapps/translate/sden/StartTranslator$b;->b:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/gkapps/translate/sden/StartTranslator$b;->b:Lcom/gkapps/translate/sden/StartTranslator;

    invoke-static {v0}, Lcom/gkapps/translate/sden/StartTranslator;->c(Lcom/gkapps/translate/sden/StartTranslator;)V

    return-void
.end method

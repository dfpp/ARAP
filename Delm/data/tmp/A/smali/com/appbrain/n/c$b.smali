.class final Lcom/appbrain/n/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/n/c;->m()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/n/c;


# direct methods
.method constructor <init>(Lcom/appbrain/n/c;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/n/c$b;->b:Lcom/appbrain/n/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/n/c$b;->b:Lcom/appbrain/n/c;

    invoke-static {v0}, Lcom/appbrain/n/c;->b(Lcom/appbrain/n/c;)Lcom/appbrain/n/c$c;

    move-result-object v0

    sget-object v1, Lcom/appbrain/n/c$c;->e:Lcom/appbrain/n/c$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timeout showing mediated interstitial from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appbrain/n/c$b;->b:Lcom/appbrain/n/c;

    invoke-static {v2}, Lcom/appbrain/n/c;->k(Lcom/appbrain/n/c;)Lcom/appbrain/p/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/p/e;->M()Lcom/appbrain/p/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppBrain"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appbrain/n/c$b;->b:Lcom/appbrain/n/c;

    invoke-static {v0}, Lcom/appbrain/n/c;->n(Lcom/appbrain/n/c;)Lcom/appbrain/n/c$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/n/c$d;->c()V

    :cond_0
    return-void
.end method

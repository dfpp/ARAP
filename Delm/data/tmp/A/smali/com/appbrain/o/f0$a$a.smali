.class final Lcom/appbrain/o/f0$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/f0$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/o/f0$a;


# direct methods
.method constructor <init>(Lcom/appbrain/o/f0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/f0$a$a;->b:Lcom/appbrain/o/f0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/f0$a$a;->b:Lcom/appbrain/o/f0$a;

    iget-object v0, v0, Lcom/appbrain/o/f0$a;->b:Lcom/appbrain/o/f0;

    invoke-static {v0}, Lcom/appbrain/o/f0;->n(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$c;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/o/f0$c;->b(Lcom/appbrain/o/f0$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

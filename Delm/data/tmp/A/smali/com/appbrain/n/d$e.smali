.class final Lcom/appbrain/n/d$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/n/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/n/d;


# direct methods
.method constructor <init>(Lcom/appbrain/n/d;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/n/d$e;->b:Lcom/appbrain/n/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/n/d$e;->b:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->e(Lcom/appbrain/n/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/n/d$e;->b:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->o(Lcom/appbrain/n/d;)Lcom/appbrain/n/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/n/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/n/d$e;->b:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->q(Lcom/appbrain/n/d;)V

    :cond_0
    return-void
.end method

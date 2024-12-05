.class final Lcom/appbrain/n/b$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/n/b;


# direct methods
.method constructor <init>(Lcom/appbrain/n/b;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/n/b$e;->b:Lcom/appbrain/n/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/n/b$e;->b:Lcom/appbrain/n/b;

    invoke-static {v0}, Lcom/appbrain/n/b;->f(Lcom/appbrain/n/b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appbrain/n/b;->n()Ljava/lang/String;

    iget-object v0, p0, Lcom/appbrain/n/b$e;->b:Lcom/appbrain/n/b;

    invoke-static {v0}, Lcom/appbrain/n/b;->i(Lcom/appbrain/n/b;)Lcom/appbrain/n/b$h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/n/b$h;->a()V

    :cond_0
    return-void
.end method

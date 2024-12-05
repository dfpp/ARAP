.class final Lcom/appbrain/n/d$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/n/d;->g()V
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

    iput-object p1, p0, Lcom/appbrain/n/d$d;->b:Lcom/appbrain/n/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/n/d$d;->b:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->e(Lcom/appbrain/n/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appbrain/n/d$d;->b:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->n(Lcom/appbrain/n/d;)Z

    invoke-static {}, Lcom/appbrain/n/d;->i()Ljava/lang/String;

    iget-object v0, p0, Lcom/appbrain/n/d$d;->b:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->o(Lcom/appbrain/n/d;)Lcom/appbrain/n/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/n/e;->g()V

    iget-object v0, p0, Lcom/appbrain/n/d$d;->b:Lcom/appbrain/n/d;

    invoke-static {v0}, Lcom/appbrain/n/d;->p(Lcom/appbrain/n/d;)Lcom/appbrain/a/a$b;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/a/a;->f(Lcom/appbrain/a/a$b;)V

    return-void
.end method

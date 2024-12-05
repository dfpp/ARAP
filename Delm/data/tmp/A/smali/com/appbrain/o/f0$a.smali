.class final Lcom/appbrain/o/f0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/f0;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/o/f0;


# direct methods
.method constructor <init>(Lcom/appbrain/o/f0;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/f0$a;->b:Lcom/appbrain/o/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/f0$a;->b:Lcom/appbrain/o/f0;

    invoke-static {v0}, Lcom/appbrain/o/f0;->f(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$b;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/o/f0$b;->b(Lcom/appbrain/o/f0$b;)V

    iget-object v0, p0, Lcom/appbrain/o/f0$a;->b:Lcom/appbrain/o/f0;

    invoke-static {v0}, Lcom/appbrain/o/f0;->f(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$b;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/o/f0$b;->c(Lcom/appbrain/o/f0$b;)Lcom/appbrain/o/k0;

    move-result-object v0

    invoke-static {}, Lcom/appbrain/o/g0;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appbrain/o/s0;->c(Lcom/appbrain/o/k0;Ljava/lang/String;)V

    sget-object v0, Lcom/appbrain/o/s0$a;->j:Lcom/appbrain/o/s0$a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/appbrain/o/s0;->a(Lcom/appbrain/o/s0$a;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/appbrain/o/v;->e()Lcom/appbrain/o/v;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/o/v;->d(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/appbrain/o/j;->a:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/appbrain/o/f0$a;->b:Lcom/appbrain/o/f0;

    invoke-static {v0}, Lcom/appbrain/o/f0;->i(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$b;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/o/f0$b;->b(Lcom/appbrain/o/f0$b;)V

    iget-object v0, p0, Lcom/appbrain/o/f0$a;->b:Lcom/appbrain/o/f0;

    invoke-static {v0}, Lcom/appbrain/o/f0;->l(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$b;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/o/f0$b;->b(Lcom/appbrain/o/f0$b;)V

    iget-object v0, p0, Lcom/appbrain/o/f0$a;->b:Lcom/appbrain/o/f0;

    sget-object v1, Lcom/appbrain/o/f0$d;->d:Lcom/appbrain/o/f0$d;

    invoke-static {v0, v1}, Lcom/appbrain/o/f0;->b(Lcom/appbrain/o/f0;Lcom/appbrain/o/f0$d;)Lcom/appbrain/o/f0$d;

    new-instance v0, Lcom/appbrain/o/f0$a$a;

    invoke-direct {v0, p0}, Lcom/appbrain/o/f0$a$a;-><init>(Lcom/appbrain/o/f0$a;)V

    invoke-static {v0}, Lcom/appbrain/o/j;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/appbrain/o/f0$a;->b:Lcom/appbrain/o/f0;

    invoke-static {v0}, Lcom/appbrain/o/f0;->p(Lcom/appbrain/o/f0;)Lcom/appbrain/o/f0$c;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/o/f0$c;->b(Lcom/appbrain/o/f0$c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method

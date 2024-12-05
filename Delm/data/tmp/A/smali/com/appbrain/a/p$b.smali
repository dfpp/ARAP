.class final Lcom/appbrain/a/p$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/a/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/appbrain/a/e;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appbrain/a/e;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/p$b;->b:Lcom/appbrain/a/e;

    iput-object p2, p0, Lcom/appbrain/a/p$b;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()V
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/a/p$b;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/a/p$b;->a:Z

    iget-object v0, p0, Lcom/appbrain/a/p$b;->b:Lcom/appbrain/a/e;

    invoke-virtual {v0}, Lcom/appbrain/a/e;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/p$b;->d()V

    return-void
.end method

.method public final b()V
    .locals 1

    const-string v0, "HTML banner tried to call close()"

    invoke-static {v0}, Lcom/appbrain/o/i;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 3

    new-instance v0, Lcom/appbrain/c;

    invoke-direct {v0}, Lcom/appbrain/c;-><init>()V

    iget-object v1, p0, Lcom/appbrain/a/p$b;->b:Lcom/appbrain/a/e;

    invoke-virtual {v1}, Lcom/appbrain/a/e;->l()Lcom/appbrain/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/c;->g(Lcom/appbrain/b;)V

    iget-object v1, p0, Lcom/appbrain/a/p$b;->b:Lcom/appbrain/a/e;

    invoke-virtual {v1}, Lcom/appbrain/a/e;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/c;->h(Ljava/lang/String;)Lcom/appbrain/c;

    new-instance v1, Lcom/appbrain/a/m1$b;

    new-instance v2, Lcom/appbrain/a/w;

    invoke-direct {v2, v0}, Lcom/appbrain/a/w;-><init>(Lcom/appbrain/c;)V

    sget-object v0, Lcom/appbrain/t/t;->g:Lcom/appbrain/t/t;

    invoke-direct {v1, v2, v0}, Lcom/appbrain/a/m1$b;-><init>(Lcom/appbrain/a/w;Lcom/appbrain/t/t;)V

    iget-object v0, p0, Lcom/appbrain/a/p$b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/appbrain/o/j;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/appbrain/a/m1;->i(Landroid/app/Activity;Lcom/appbrain/a/m1$b;)V

    invoke-direct {p0}, Lcom/appbrain/a/p$b;->d()V

    return-void
.end method

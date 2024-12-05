.class final Lcom/appbrain/a/h1$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/h1;->e(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/appbrain/a/h1;


# direct methods
.method constructor <init>(Lcom/appbrain/a/h1;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/h1$d;->d:Lcom/appbrain/a/h1;

    iput-boolean p2, p0, Lcom/appbrain/a/h1$d;->b:Z

    iput-object p3, p0, Lcom/appbrain/a/h1$d;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/a/h1$d;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/a/l1;->l()V

    iget-object v0, p0, Lcom/appbrain/a/h1$d;->d:Lcom/appbrain/a/h1;

    invoke-static {v0}, Lcom/appbrain/a/h1;->i(Lcom/appbrain/a/h1;)V

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/h1$d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/appbrain/o/j;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/appbrain/a/b1;->c(Landroid/app/Activity;)V

    return-void
.end method

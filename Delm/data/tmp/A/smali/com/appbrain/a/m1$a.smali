.class final Lcom/appbrain/a/m1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/m1;->h(Landroid/app/Activity;Landroid/os/Bundle;Lcom/appbrain/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/m1$a;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/appbrain/a/m1$a;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/m1$a;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appbrain/o/j;->g(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/m1$a;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appbrain/a/m1$a;->c:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/appbrain/a/g1;->e(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/m1$a;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appbrain/a/m1$a;->c:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/appbrain/AppBrainActivity;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

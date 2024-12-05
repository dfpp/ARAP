.class final Lcom/appbrain/a/c1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/c1;->b(Landroid/app/Activity;Lcom/appbrain/t/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/appbrain/t/u;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/appbrain/t/u;Z)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/c1$a;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/appbrain/a/c1$a;->c:Lcom/appbrain/t/u;

    iput-boolean p3, p0, Lcom/appbrain/a/c1$a;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/a/c1$a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/c1$a;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appbrain/a/c1$a;->c:Lcom/appbrain/t/u;

    iget-boolean v2, p0, Lcom/appbrain/a/c1$a;->d:Z

    invoke-static {v0, v1, v2}, Lcom/appbrain/a/c1;->c(Landroid/app/Activity;Lcom/appbrain/t/u;Z)V

    :cond_0
    return-void
.end method

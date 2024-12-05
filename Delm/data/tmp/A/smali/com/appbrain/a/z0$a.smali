.class final Lcom/appbrain/a/z0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/appbrain/t/u;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/appbrain/t/u;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/z0$a;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/appbrain/a/z0$a;->c:Lcom/appbrain/t/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/z0$a;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appbrain/o/j;->g(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/z0$a;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appbrain/a/z0$a;->c:Lcom/appbrain/t/u;

    invoke-static {v0, v1}, Lcom/appbrain/a/z0;->b(Landroid/app/Activity;Lcom/appbrain/t/u;)V

    return-void
.end method

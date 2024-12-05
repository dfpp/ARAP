.class final Lcom/appbrain/a/a0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/a/a0$c;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 3

    invoke-static {p1}, Lcom/appbrain/a/m1;->q(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/appbrain/a/a0;->a:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v1

    new-instance v2, Lcom/appbrain/a/a0$b;

    invoke-direct {v2, p0, p1}, Lcom/appbrain/a/a0$b;-><init>(Lcom/appbrain/a/a0;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/appbrain/o/f0;->h(Ljava/lang/Runnable;)V

    :cond_0
    iput-boolean v0, p0, Lcom/appbrain/a/a0;->a:Z

    return-void
.end method

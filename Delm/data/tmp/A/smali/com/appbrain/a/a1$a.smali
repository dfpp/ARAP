.class final Lcom/appbrain/a/a1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/a1;->a(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/t/u;


# direct methods
.method constructor <init>(Lcom/appbrain/t/u;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/a1$a;->b:Lcom/appbrain/t/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/a/a1$a;->b:Lcom/appbrain/t/u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appbrain/a/b1;->d(Lcom/appbrain/t/u;Z)V

    iget-object v0, p0, Lcom/appbrain/a/a1$a;->b:Lcom/appbrain/t/u;

    invoke-virtual {v0}, Lcom/appbrain/t/u;->a0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/a1$a;->b:Lcom/appbrain/t/u;

    invoke-virtual {v1}, Lcom/appbrain/t/u;->b0()Lcom/appbrain/t/u$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/appbrain/a/d1;->c(Landroid/app/Activity;Ljava/lang/String;Lcom/appbrain/t/u$a;)V

    return-void
.end method

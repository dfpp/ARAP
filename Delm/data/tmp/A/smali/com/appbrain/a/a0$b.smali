.class final Lcom/appbrain/a/a0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/a0;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/appbrain/a/a0;Landroid/app/Activity;)V
    .locals 0

    iput-object p2, p0, Lcom/appbrain/a/a0$b;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/appbrain/a/n;->a()Lcom/appbrain/a/n;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/a0$b;->b:Landroid/app/Activity;

    sget-object v2, Lcom/appbrain/t/q$c;->d:Lcom/appbrain/t/q$c;

    new-instance v3, Lcom/appbrain/a/a0$c;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v4}, Lcom/appbrain/a/a0$c;-><init>(Landroid/app/Activity;ZB)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/appbrain/a/n;->b(Landroid/content/Context;Lcom/appbrain/t/q$c;Lcom/appbrain/a/n$b;)V

    return-void
.end method

.class final Lcom/appbrain/AppBrainService$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/AppBrainService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appbrain/AppBrainService;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/appbrain/AppBrainService$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/AppBrainService$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appbrain/a/h1;->d(Landroid/content/Context;)V

    return-void
.end method

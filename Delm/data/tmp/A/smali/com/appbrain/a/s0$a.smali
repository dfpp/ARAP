.class final Lcom/appbrain/a/s0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/s0;->c(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/appbrain/a/s0;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p3, p0, Lcom/appbrain/a/s0$a;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/s0$a;->b:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/appbrain/a/s0;->d(Landroid/os/Bundle;)V

    return-void
.end method

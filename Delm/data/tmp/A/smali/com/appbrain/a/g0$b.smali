.class final Lcom/appbrain/a/g0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/g0;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/g0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/g0$b;->b:Lcom/appbrain/a/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/g0$b;->b:Lcom/appbrain/a/g0;

    invoke-static {v0}, Lcom/appbrain/a/g0;->D(Lcom/appbrain/a/g0;)Lcom/appbrain/o/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/h;->a()Ljava/lang/Object;

    return-void
.end method
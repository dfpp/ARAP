.class final Lcom/appbrain/a/e1$e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/e1$e;-><init>(Landroid/app/Activity;Lcom/appbrain/t/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/e1$e;


# direct methods
.method constructor <init>(Lcom/appbrain/a/e1$e;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/e1$e$b;->b:Lcom/appbrain/a/e1$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/e1$e$b;->b:Lcom/appbrain/a/e1$e;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

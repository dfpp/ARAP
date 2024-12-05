.class final Lcom/appbrain/a/u$h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/u$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/z;


# direct methods
.method constructor <init>(Lcom/appbrain/a/u$h;Lcom/appbrain/a/z;)V
    .locals 0

    iput-object p2, p0, Lcom/appbrain/a/u$h$b;->b:Lcom/appbrain/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/u$h$b;->b:Lcom/appbrain/a/z;

    invoke-virtual {v0}, Lcom/appbrain/a/z;->a()V

    return-void
.end method

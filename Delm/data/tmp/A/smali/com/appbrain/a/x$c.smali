.class final Lcom/appbrain/a/x$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/x;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/x;


# direct methods
.method constructor <init>(Lcom/appbrain/a/x;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/x$c;->b:Lcom/appbrain/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/x$c;->b:Lcom/appbrain/a/x;

    invoke-static {v0}, Lcom/appbrain/a/x;->i(Lcom/appbrain/a/x;)Lcom/appbrain/k;

    move-result-object v0

    sget-object v1, Lcom/appbrain/k$a;->b:Lcom/appbrain/k$a;

    invoke-interface {v0, v1}, Lcom/appbrain/k;->d(Lcom/appbrain/k$a;)V

    return-void
.end method

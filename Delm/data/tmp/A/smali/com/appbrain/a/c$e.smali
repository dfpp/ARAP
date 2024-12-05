.class final Lcom/appbrain/a/c$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/c;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/c;


# direct methods
.method constructor <init>(Lcom/appbrain/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/c$e;->b:Lcom/appbrain/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/c$e;->b:Lcom/appbrain/a/c;

    invoke-static {v0}, Lcom/appbrain/a/c;->a(Lcom/appbrain/a/c;)Lcom/appbrain/t/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/t/w$a;->G()Lcom/appbrain/t/w$a;

    iget-object v0, p0, Lcom/appbrain/a/c$e;->b:Lcom/appbrain/a/c;

    invoke-static {v0}, Lcom/appbrain/a/c;->c(Lcom/appbrain/a/c;)Lcom/appbrain/a/c$h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/a/c$h;->b()V

    return-void
.end method

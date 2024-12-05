.class final Lcom/appbrain/a/t0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/t0;->g(Lcom/appbrain/o/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/o/o0;

.field final synthetic c:Lcom/appbrain/a/t0$c;


# direct methods
.method constructor <init>(Lcom/appbrain/a/t0;Lcom/appbrain/o/o0;Lcom/appbrain/a/t0$c;)V
    .locals 0

    iput-object p2, p0, Lcom/appbrain/a/t0$a;->b:Lcom/appbrain/o/o0;

    iput-object p3, p0, Lcom/appbrain/a/t0$a;->c:Lcom/appbrain/a/t0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/appbrain/o/h0;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/t0$a;->b:Lcom/appbrain/o/o0;

    iget-object v2, p0, Lcom/appbrain/a/t0$a;->c:Lcom/appbrain/a/t0$c;

    invoke-static {v2, v0}, Lcom/appbrain/a/t0;->k(Lcom/appbrain/a/t0$c;Ljava/util/List;)Lcom/appbrain/a/t0$c;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/appbrain/o/o0;->a(Ljava/lang/Object;)V

    return-void
.end method

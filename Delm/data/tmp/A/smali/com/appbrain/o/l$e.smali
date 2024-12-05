.class final Lcom/appbrain/o/l$e;
.super Lcom/appbrain/o/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/l;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Ljava/lang/Runnable;

.field final synthetic j:Lcom/appbrain/o/l;


# direct methods
.method constructor <init>(Lcom/appbrain/o/l;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/o/l$e;->j:Lcom/appbrain/o/l;

    iput-object p2, p0, Lcom/appbrain/o/l$e;->i:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/appbrain/o/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/o/l$e;->i:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic e(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/appbrain/o/l$e;->j:Lcom/appbrain/o/l;

    invoke-static {p1}, Lcom/appbrain/o/l;->h(Lcom/appbrain/o/l;)Lcom/appbrain/o/k;

    iget-object p1, p0, Lcom/appbrain/o/l$e;->j:Lcom/appbrain/o/l;

    invoke-static {p1}, Lcom/appbrain/o/l;->b(Lcom/appbrain/o/l;)V

    return-void
.end method

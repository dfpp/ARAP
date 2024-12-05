.class final Lcom/appbrain/a/g0$f;
.super Lcom/appbrain/o/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/g0;->x(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Ljava/lang/Runnable;

.field final synthetic j:Lcom/appbrain/a/g0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/g0;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/g0$f;->j:Lcom/appbrain/a/g0;

    iput-object p2, p0, Lcom/appbrain/a/g0$f;->i:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/appbrain/o/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/g0$f;->j:Lcom/appbrain/a/g0;

    invoke-static {v0}, Lcom/appbrain/a/g0;->D(Lcom/appbrain/a/g0;)Lcom/appbrain/o/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/h;->a()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic e(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/appbrain/a/g0$f;->i:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

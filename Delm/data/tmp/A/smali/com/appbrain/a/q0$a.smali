.class final Lcom/appbrain/a/q0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/q0;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:J

.field final synthetic d:Lcom/appbrain/a/q0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/q0;)V
    .locals 2

    iput-object p1, p0, Lcom/appbrain/a/q0$a;->d:Lcom/appbrain/a/q0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appbrain/a/q0$a;->b:Z

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/appbrain/a/q0$a;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/appbrain/a/q0;->p()Lcom/appbrain/t/h$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/appbrain/a/q0$a;->b:Z

    invoke-virtual {v0, v1}, Lcom/appbrain/t/h$a;->y(Z)Lcom/appbrain/t/h$a;

    invoke-virtual {v0}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v0

    check-cast v0, Lcom/appbrain/t/h;

    invoke-static {v0}, Lcom/appbrain/a/q0;->h(Lcom/appbrain/t/h;)V

    iget-object v0, p0, Lcom/appbrain/a/q0$a;->d:Lcom/appbrain/a/q0;

    iget-wide v1, p0, Lcom/appbrain/a/q0$a;->c:J

    invoke-static {v0, v1, v2}, Lcom/appbrain/a/q0;->e(Lcom/appbrain/a/q0;J)V

    return-void
.end method

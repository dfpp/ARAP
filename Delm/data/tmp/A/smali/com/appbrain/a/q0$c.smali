.class final Lcom/appbrain/a/q0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/q0;->i(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Lcom/appbrain/a/q0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/q0;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/q0$c;->e:Lcom/appbrain/a/q0;

    iput-object p2, p0, Lcom/appbrain/a/q0$c;->b:Ljava/lang/String;

    iput p3, p0, Lcom/appbrain/a/q0$c;->c:I

    const-wide/16 p1, 0x2710

    iput-wide p1, p0, Lcom/appbrain/a/q0$c;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/appbrain/t/b;->L()Lcom/appbrain/t/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/q0$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/appbrain/t/b$a;->w(Ljava/lang/String;)Lcom/appbrain/t/b$a;

    iget v1, p0, Lcom/appbrain/a/q0$c;->c:I

    invoke-virtual {v0, v1}, Lcom/appbrain/t/b$a;->v(I)Lcom/appbrain/t/b$a;

    invoke-static {}, Lcom/appbrain/a/q0;->p()Lcom/appbrain/t/h$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appbrain/t/h$a;->v(Lcom/appbrain/t/b$a;)Lcom/appbrain/t/h$a;

    invoke-virtual {v1}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object v0

    check-cast v0, Lcom/appbrain/t/h;

    invoke-static {v0}, Lcom/appbrain/a/q0;->h(Lcom/appbrain/t/h;)V

    iget-object v0, p0, Lcom/appbrain/a/q0$c;->e:Lcom/appbrain/a/q0;

    iget-wide v1, p0, Lcom/appbrain/a/q0$c;->d:J

    invoke-static {v0, v1, v2}, Lcom/appbrain/a/q0;->e(Lcom/appbrain/a/q0;J)V

    return-void
.end method

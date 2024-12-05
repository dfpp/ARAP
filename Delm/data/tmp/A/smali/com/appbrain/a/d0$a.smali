.class final Lcom/appbrain/a/d0$a;
.super Lcom/appbrain/a/j0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/d0;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/appbrain/a/d0;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/appbrain/q/x$a;Lcom/appbrain/t/j;)V
    .locals 1

    instance-of v0, p1, Lcom/appbrain/p/g$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/appbrain/p/g$a;

    invoke-static {}, Lcom/appbrain/p/i;->L()Lcom/appbrain/p/i$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/appbrain/p/i$a;->v(Lcom/appbrain/t/j;)Lcom/appbrain/p/i$a;

    invoke-virtual {p1, v0}, Lcom/appbrain/p/g$a;->v(Lcom/appbrain/p/i$a;)Lcom/appbrain/p/g$a;

    return-void

    :cond_0
    instance-of v0, p1, Lcom/appbrain/p/j$a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/appbrain/p/j$a;

    invoke-static {}, Lcom/appbrain/p/i;->L()Lcom/appbrain/p/i$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/appbrain/p/i$a;->v(Lcom/appbrain/t/j;)Lcom/appbrain/p/i$a;

    invoke-virtual {p1, v0}, Lcom/appbrain/p/j$a;->w(Lcom/appbrain/p/i$a;)Lcom/appbrain/p/j$a;

    :cond_1
    return-void
.end method

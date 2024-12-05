.class public final Lcom/appbrain/a/v0;
.super Lcom/appbrain/a/j0;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/a/j0;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/a/j0;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/appbrain/q/x$a;Lcom/appbrain/t/j;)V
    .locals 1

    instance-of v0, p1, Lcom/appbrain/t/w$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/appbrain/t/w$a;

    invoke-virtual {p1, p2}, Lcom/appbrain/t/w$a;->x(Lcom/appbrain/t/j;)Lcom/appbrain/t/w$a;

    return-void

    :cond_0
    instance-of v0, p1, Lcom/appbrain/t/v$a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/appbrain/t/v$a;

    invoke-virtual {p1, p2}, Lcom/appbrain/t/v$a;->x(Lcom/appbrain/t/j;)Lcom/appbrain/t/v$a;

    return-void

    :cond_1
    instance-of v0, p1, Lcom/appbrain/t/s$a;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/appbrain/t/s$a;

    invoke-virtual {p1, p2}, Lcom/appbrain/t/s$a;->w(Lcom/appbrain/t/j;)Lcom/appbrain/t/s$a;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown builder type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

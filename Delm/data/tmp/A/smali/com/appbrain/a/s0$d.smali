.class final Lcom/appbrain/a/s0$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/a/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(Lcom/appbrain/a/s0;J)V
    .locals 0

    iput-wide p2, p0, Lcom/appbrain/a/s0$d;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appbrain/t/q;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/appbrain/t/q;->b0()Lcom/appbrain/t/q$f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appbrain/t/q$f;->L()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/appbrain/a/s0$d;->a:J

    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long p1, v2, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class final Lcom/appbrain/a/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/m;


# direct methods
.method constructor <init>(Lcom/appbrain/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/m$a;->b:Lcom/appbrain/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/appbrain/o/f0;->c()Lcom/appbrain/o/f0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/o/f0;->m()Lcom/appbrain/o/k0;

    move-result-object v0

    const-string v1, "pdn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appbrain/o/k0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/appbrain/a/m$a;->b:Lcom/appbrain/a/m;

    invoke-static {v1}, Lcom/appbrain/a/m;->c(Lcom/appbrain/a/m;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/appbrain/a/m$a;->b:Lcom/appbrain/a/m;

    invoke-static {v3}, Lcom/appbrain/a/m;->e(Lcom/appbrain/a/m;)J

    move-result-wide v3

    const-wide/32 v5, 0x75300

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/appbrain/a/m$a;->b:Lcom/appbrain/a/m;

    invoke-static {v1, v0}, Lcom/appbrain/a/m;->d(Lcom/appbrain/a/m;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/appbrain/a/m$a;->b:Lcom/appbrain/a/m;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/appbrain/a/m;->a(Lcom/appbrain/a/m;J)J

    new-instance v1, Lcom/appbrain/a/m$a$a;

    invoke-direct {v1, p0, v0}, Lcom/appbrain/a/m$a$a;-><init>(Lcom/appbrain/a/m$a;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/appbrain/o/k;->f(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.class final Lcom/appbrain/a/s$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lb/a/a/a/a;

.field final synthetic c:Lcom/appbrain/a/s;


# direct methods
.method constructor <init>(Lcom/appbrain/a/s;Landroid/content/Context;Lb/a/a/a/a;J)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/s$b;->c:Lcom/appbrain/a/s;

    iput-object p2, p0, Lcom/appbrain/a/s$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/appbrain/a/s$b;->b:Lb/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "developer error"

    invoke-static {p1}, Lcom/appbrain/o/i;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/appbrain/a/s$b;->c:Lcom/appbrain/a/s;

    iget-object v0, p0, Lcom/appbrain/a/s$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/appbrain/a/s$b;->b:Lb/a/a/a/a;

    invoke-static {p1, v0, v1}, Lcom/appbrain/a/s;->e(Lcom/appbrain/a/s;Landroid/content/Context;Lb/a/a/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "handle_referrer_resp"

    invoke-static {v0, p1}, Lcom/appbrain/o/i;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lcom/appbrain/a/s$b;->b:Lb/a/a/a/a;

    invoke-virtual {p1}, Lb/a/a/a/a;->a()V

    iget-object p1, p0, Lcom/appbrain/a/s$b;->c:Lcom/appbrain/a/s;

    invoke-static {p1}, Lcom/appbrain/a/s;->h(Lcom/appbrain/a/s;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

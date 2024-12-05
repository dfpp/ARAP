.class final Lcom/appbrain/a/c$g;
.super Lcom/appbrain/o/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Lcom/appbrain/t/w;


# direct methods
.method constructor <init>(Lcom/appbrain/a/c;Lcom/appbrain/t/w;)V
    .locals 0

    iput-object p2, p0, Lcom/appbrain/a/c$g;->i:Lcom/appbrain/t/w;

    invoke-direct {p0}, Lcom/appbrain/o/k;-><init>()V

    return-void
.end method

.method private varargs k()Lcom/appbrain/t/e;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/appbrain/a/w0;->c()Lcom/appbrain/a/w0;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/c$g;->i:Lcom/appbrain/t/w;

    invoke-virtual {v0, v1}, Lcom/appbrain/a/w0;->e(Lcom/appbrain/t/w;)Lcom/appbrain/t/e;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/c$g;->k()Lcom/appbrain/t/e;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic e(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/appbrain/t/e;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appbrain/t/e;->M()Lcom/appbrain/t/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appbrain/a/l1;->f(Lcom/appbrain/t/f;)V

    :cond_0
    return-void
.end method

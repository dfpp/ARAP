.class Lcom/appbrain/n/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/List;

.field private b:Lcom/appbrain/n/c;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appbrain/n/e;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a()Lcom/appbrain/n/c;
    .locals 3

    iget-boolean v0, p0, Lcom/appbrain/n/e;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/appbrain/n/e;->b:Lcom/appbrain/n/c;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/appbrain/n/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/n/c;

    iget-object v2, p0, Lcom/appbrain/n/e;->b:Lcom/appbrain/n/c;

    if-eq v1, v2, :cond_2

    invoke-virtual {v1}, Lcom/appbrain/n/c;->o()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/n/e;->c:Z

    iget-object v0, p0, Lcom/appbrain/n/e;->b:Lcom/appbrain/n/c;

    return-object v0
.end method

.method final b(Lcom/appbrain/n/c;)V
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/n/e;->c:Z

    if-eqz v0, :cond_0

    const-string p1, "Interstitial already shown"

    invoke-static {p1}, Lcom/appbrain/o/i;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appbrain/n/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final c()Z
    .locals 4

    iget-boolean v0, p0, Lcom/appbrain/n/e;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/appbrain/n/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appbrain/n/c;

    invoke-virtual {v2}, Lcom/appbrain/n/c;->a()Lcom/appbrain/n/c$c;

    move-result-object v2

    sget-object v3, Lcom/appbrain/n/c$c;->b:Lcom/appbrain/n/c$c;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/appbrain/n/c$c;->d:Lcom/appbrain/n/c$c;

    if-ne v2, v3, :cond_1

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method final d()Z
    .locals 3

    iget-object v0, p0, Lcom/appbrain/n/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/n/c;

    invoke-virtual {v1}, Lcom/appbrain/n/c;->a()Lcom/appbrain/n/c$c;

    move-result-object v1

    sget-object v2, Lcom/appbrain/n/c$c;->c:Lcom/appbrain/n/c$c;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final e()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/n/e;->b:Lcom/appbrain/n/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final f()V
    .locals 5

    iget-boolean v0, p0, Lcom/appbrain/n/e;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "Interstitial already shown"

    invoke-static {v0}, Lcom/appbrain/o/i;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/appbrain/n/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appbrain/n/c;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/appbrain/n/c;->o()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/appbrain/n/c;->a()Lcom/appbrain/n/c$c;

    move-result-object v3

    sget-object v4, Lcom/appbrain/n/c$c;->d:Lcom/appbrain/n/c$c;

    if-ne v3, v4, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/appbrain/n/e;->b:Lcom/appbrain/n/c;

    return-void
.end method

.method final g()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/n/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/n/c;

    invoke-virtual {v1}, Lcom/appbrain/n/c;->o()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appbrain/n/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appbrain/n/e;->b:Lcom/appbrain/n/c;

    return-void
.end method

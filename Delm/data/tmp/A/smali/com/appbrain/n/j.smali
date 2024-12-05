.class public Lcom/appbrain/n/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/n/j$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appbrain/n/j;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/appbrain/p/e;
    .locals 7

    iget-object v0, p0, Lcom/appbrain/n/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appbrain/n/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appbrain/n/j$a;

    invoke-static {v3}, Lcom/appbrain/n/j$a;->a(Lcom/appbrain/n/j$a;)F

    move-result v3

    add-float/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v0, v3

    iget-object v2, p0, Lcom/appbrain/n/j;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appbrain/n/j$a;

    invoke-static {v3}, Lcom/appbrain/n/j$a;->a(Lcom/appbrain/n/j$a;)F

    move-result v4

    sub-float/2addr v0, v4

    cmpg-float v4, v0, v1

    if-gez v4, :cond_2

    iget-object v0, p0, Lcom/appbrain/n/j;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/appbrain/n/j$a;->b(Lcom/appbrain/n/j$a;)Lcom/appbrain/p/e;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/appbrain/n/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/n/j$a;

    invoke-static {v0}, Lcom/appbrain/n/j$a;->b(Lcom/appbrain/n/j$a;)Lcom/appbrain/p/e;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/appbrain/p/h;)V
    .locals 6

    iget-object v0, p0, Lcom/appbrain/n/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/appbrain/p/h;->L()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/appbrain/n/j;->a:Ljava/util/List;

    new-instance v3, Lcom/appbrain/n/j$a;

    invoke-virtual {p1, v1}, Lcom/appbrain/p/h;->M(I)Lcom/appbrain/p/e;

    move-result-object v4

    invoke-virtual {p1, v1}, Lcom/appbrain/p/h;->O(I)F

    move-result v5

    invoke-direct {v3, v4, v5, v0}, Lcom/appbrain/n/j$a;-><init>(Lcom/appbrain/p/e;FB)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/appbrain/n/j;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    return-void
.end method

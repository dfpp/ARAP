.class final Lcom/appbrain/q/c0$e;
.super Ljava/util/AbstractSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/q/c0;


# direct methods
.method private constructor <init>(Lcom/appbrain/q/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/q/c0$e;->b:Lcom/appbrain/q/c0;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appbrain/q/c0;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/q/c0$e;-><init>(Lcom/appbrain/q/c0;)V

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/appbrain/q/c0$e;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/q/c0$e;->b:Lcom/appbrain/q/c0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/appbrain/q/c0;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/c0$e;->b:Lcom/appbrain/q/c0;

    invoke-virtual {v0}, Lcom/appbrain/q/c0;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/appbrain/q/c0$e;->b:Lcom/appbrain/q/c0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appbrain/q/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lcom/appbrain/q/c0$d;

    iget-object v1, p0, Lcom/appbrain/q/c0$e;->b:Lcom/appbrain/q/c0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/q/c0$d;-><init>(Lcom/appbrain/q/c0;B)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/appbrain/q/c0$e;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/q/c0$e;->b:Lcom/appbrain/q/c0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appbrain/q/c0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/c0$e;->b:Lcom/appbrain/q/c0;

    invoke-virtual {v0}, Lcom/appbrain/q/c0;->size()I

    move-result v0

    return v0
.end method

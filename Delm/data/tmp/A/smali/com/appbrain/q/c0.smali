.class Lcom/appbrain/q/c0;
.super Ljava/util/AbstractMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/q/c0$b;,
        Lcom/appbrain/q/c0$d;,
        Lcom/appbrain/q/c0$e;,
        Lcom/appbrain/q/c0$c;
    }
.end annotation


# instance fields
.field private final b:I

.field private c:Ljava/util/List;

.field private d:Ljava/util/Map;

.field private e:Z

.field private volatile f:Lcom/appbrain/q/c0$e;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p1, p0, Lcom/appbrain/q/c0;->b:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/q/c0;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/Comparable;)I
    .locals 4

    iget-object v0, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/q/c0$c;

    invoke-virtual {v1}, Lcom/appbrain/q/c0$c;->c()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    neg-int p1, v0

    return p1

    :cond_0
    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_4

    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appbrain/q/c0$c;

    invoke-virtual {v3}, Lcom/appbrain/q/c0$c;->c()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method

.method static b(I)Lcom/appbrain/q/c0;
    .locals 1

    new-instance v0, Lcom/appbrain/q/c0$a;

    invoke-direct {v0, p0}, Lcom/appbrain/q/c0$a;-><init>(I)V

    return-object v0
.end method

.method static synthetic c(Lcom/appbrain/q/c0;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/q/c0;->k(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/appbrain/q/c0;)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/q/c0;->n()V

    return-void
.end method

.method static synthetic g(Lcom/appbrain/q/c0;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    return-object p0
.end method

.method private k(I)Ljava/lang/Object;
    .locals 4

    invoke-direct {p0}, Lcom/appbrain/q/c0;->n()V

    iget-object v0, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/q/c0$c;

    invoke-virtual {p1}, Lcom/appbrain/q/c0$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/appbrain/q/c0;->o()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    new-instance v2, Lcom/appbrain/q/c0$c;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lcom/appbrain/q/c0$c;-><init>(Lcom/appbrain/q/c0;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-object p1
.end method

.method static synthetic l(Lcom/appbrain/q/c0;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    return-object p0
.end method

.method private n()V
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/q/c0;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private o()Ljava/util/SortedMap;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/c0;->n()V

    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/c0;->n()V

    iget-object v0, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lcom/appbrain/q/c0;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

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

.method public final d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-direct {p0}, Lcom/appbrain/q/c0;->n()V

    invoke-direct {p0, p1}, Lcom/appbrain/q/c0;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/q/c0$c;

    invoke-virtual {p1, p2}, Lcom/appbrain/q/c0$c;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/appbrain/q/c0;->n()V

    iget-object v1, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/appbrain/q/c0;->b:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    iget v1, p0, Lcom/appbrain/q/c0;->b:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/appbrain/q/c0;->o()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v1, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/appbrain/q/c0;->b:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/q/c0$c;

    invoke-direct {p0}, Lcom/appbrain/q/c0;->o()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/appbrain/q/c0$c;->c()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v1}, Lcom/appbrain/q/c0$c;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    new-instance v2, Lcom/appbrain/q/c0$c;

    invoke-direct {v2, p0, p1, p2}, Lcom/appbrain/q/c0$c;-><init>(Lcom/appbrain/q/c0;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/q/c0;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/q/c0;->e:Z

    :cond_1
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/q/c0;->f:Lcom/appbrain/q/c0$e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appbrain/q/c0$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appbrain/q/c0$e;-><init>(Lcom/appbrain/q/c0;B)V

    iput-object v0, p0, Lcom/appbrain/q/c0;->f:Lcom/appbrain/q/c0$e;

    :cond_0
    iget-object v0, p0, Lcom/appbrain/q/c0;->f:Lcom/appbrain/q/c0$e;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/appbrain/q/c0;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/appbrain/q/c0;

    invoke-virtual {p0}, Lcom/appbrain/q/c0;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/appbrain/q/c0;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/appbrain/q/c0;->j()I

    move-result v2

    invoke-virtual {p1}, Lcom/appbrain/q/c0;->j()I

    move-result v4

    if-eq v2, v4, :cond_3

    invoke-virtual {p0}, Lcom/appbrain/q/c0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appbrain/q/c0;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-virtual {p0, v4}, Lcom/appbrain/q/c0;->h(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/appbrain/q/c0;->h(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    return v3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eq v2, v1, :cond_6

    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    iget-object p1, p1, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lcom/appbrain/q/c0;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/q/c0$c;

    invoke-virtual {p1}, Lcom/appbrain/q/c0$c;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(I)Ljava/util/Map$Entry;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/appbrain/q/c0;->j()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appbrain/q/c0$c;

    invoke-virtual {v3}, Lcom/appbrain/q/c0$c;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    return v2
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/q/c0;->e:Z

    return v0
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final m()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/appbrain/q/c0$b;->a()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/appbrain/q/c0;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/q/c0;->n()V

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lcom/appbrain/q/c0;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/appbrain/q/c0;->k(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/appbrain/q/c0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/appbrain/q/c0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

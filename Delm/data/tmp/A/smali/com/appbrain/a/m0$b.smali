.class final Lcom/appbrain/a/m0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/appbrain/q/a0;

.field private d:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/appbrain/q/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/m0$b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/appbrain/a/m0$b;->c:Lcom/appbrain/q/a0;

    return-void
.end method

.method private a()V
    .locals 8

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/a/m0;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const-string v5, " "

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-ne v5, v6, :cond_0

    aget-object v5, v4, v2

    iget-object v6, p0, Lcom/appbrain/a/m0$b;->c:Lcom/appbrain/q/a0;

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v6, v7}, Lcom/appbrain/a/m0;->a(Lcom/appbrain/q/a0;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appbrain/q/x;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    if-eqz v6, :cond_0

    iget-object v5, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    aget-object v4, v4, v2

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/appbrain/a/m0;->d(Ljava/lang/StringBuilder;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appbrain/q/x;

    invoke-static {v2}, Lcom/appbrain/a/m0;->b(Lcom/appbrain/q/x;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/appbrain/a/m0$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appbrain/a/m0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->a()V

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->b()V

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->a()V

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->a()V

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->a()V

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->a()V

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/q/x;

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->a()V

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->a()V

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/appbrain/q/x;

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->a()V

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/q/x;

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->b()V

    return-object p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->a()V

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->b()V

    return-void
.end method

.method public final synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->a()V

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/q/x;

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->b()V

    return-object p1
.end method

.method public final size()I
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->a()V

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$b;->a()V

    iget-object v0, p0, Lcom/appbrain/a/m0$b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

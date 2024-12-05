.class final Lcom/appbrain/a/m0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/appbrain/q/a0;

.field private final d:I

.field private e:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/appbrain/q/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/a/m0$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/appbrain/a/m0$a;->c:Lcom/appbrain/q/a0;

    const/16 p1, 0x20

    iput p1, p0, Lcom/appbrain/a/m0$a;->d:I

    return-void
.end method

.method private b()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appbrain/q/x;

    invoke-static {v0}, Lcom/appbrain/a/m0;->d(Ljava/lang/StringBuilder;)V

    invoke-static {v2}, Lcom/appbrain/a/m0;->b(Lcom/appbrain/q/x;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/appbrain/a/m0$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/appbrain/a/m0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 5

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/appbrain/a/m0;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/appbrain/a/m0$a;->c:Lcom/appbrain/q/a0;

    invoke-static {v4, v3}, Lcom/appbrain/a/m0;->a(Lcom/appbrain/q/a0;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appbrain/q/x;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "init"

    invoke-direct {p0, v0}, Lcom/appbrain/a/m0$a;->i(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/appbrain/a/m0$a;->d:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Collection size was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/appbrain/a/m0$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/o/i;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/appbrain/q/x;

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string p1, "add_index"

    invoke-direct {p0, p1}, Lcom/appbrain/a/m0$a;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->b()V

    return-void
.end method

.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/appbrain/q/x;

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "add"

    invoke-direct {p0, v0}, Lcom/appbrain/a/m0$a;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->b()V

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "addAll"

    invoke-direct {p0, p1}, Lcom/appbrain/a/m0$a;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "addAll"

    invoke-direct {p0, p1}, Lcom/appbrain/a/m0$a;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final clear()V
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->b()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/q/x;

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/q/x;

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->b()V

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/appbrain/q/x;

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appbrain/q/x;

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->b()V

    return-object p1
.end method

.method public final size()I
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appbrain/a/m0$a;->e()V

    iget-object v0, p0, Lcom/appbrain/a/m0$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

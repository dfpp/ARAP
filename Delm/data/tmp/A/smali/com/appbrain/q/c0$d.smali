.class final Lcom/appbrain/q/c0$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private b:I

.field private c:Z

.field private d:Ljava/util/Iterator;

.field final synthetic e:Lcom/appbrain/q/c0;


# direct methods
.method private constructor <init>(Lcom/appbrain/q/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/q/c0$d;->e:Lcom/appbrain/q/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/appbrain/q/c0$d;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/appbrain/q/c0;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appbrain/q/c0$d;-><init>(Lcom/appbrain/q/c0;)V

    return-void
.end method

.method private a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/c0$d;->d:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/q/c0$d;->e:Lcom/appbrain/q/c0;

    invoke-static {v0}, Lcom/appbrain/q/c0;->l(Lcom/appbrain/q/c0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/q/c0$d;->d:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lcom/appbrain/q/c0$d;->d:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    iget v0, p0, Lcom/appbrain/q/c0$d;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/appbrain/q/c0$d;->e:Lcom/appbrain/q/c0;

    invoke-static {v2}, Lcom/appbrain/q/c0;->g(Lcom/appbrain/q/c0;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-direct {p0}, Lcom/appbrain/q/c0$d;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appbrain/q/c0$d;->c:Z

    iget v1, p0, Lcom/appbrain/q/c0$d;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/appbrain/q/c0$d;->b:I

    iget-object v0, p0, Lcom/appbrain/q/c0$d;->e:Lcom/appbrain/q/c0;

    invoke-static {v0}, Lcom/appbrain/q/c0;->g(Lcom/appbrain/q/c0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/q/c0$d;->e:Lcom/appbrain/q/c0;

    invoke-static {v0}, Lcom/appbrain/q/c0;->g(Lcom/appbrain/q/c0;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/q/c0$d;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/appbrain/q/c0$d;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lcom/appbrain/q/c0$d;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appbrain/q/c0$d;->c:Z

    iget-object v0, p0, Lcom/appbrain/q/c0$d;->e:Lcom/appbrain/q/c0;

    invoke-static {v0}, Lcom/appbrain/q/c0;->f(Lcom/appbrain/q/c0;)V

    iget v0, p0, Lcom/appbrain/q/c0$d;->b:I

    iget-object v1, p0, Lcom/appbrain/q/c0$d;->e:Lcom/appbrain/q/c0;

    invoke-static {v1}, Lcom/appbrain/q/c0;->g(Lcom/appbrain/q/c0;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/q/c0$d;->e:Lcom/appbrain/q/c0;

    iget v1, p0, Lcom/appbrain/q/c0$d;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/appbrain/q/c0$d;->b:I

    invoke-static {v0, v1}, Lcom/appbrain/q/c0;->c(Lcom/appbrain/q/c0;I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/appbrain/q/c0$d;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

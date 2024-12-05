.class public final Lcom/appbrain/o/n0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/m0;


# instance fields
.field private final a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4060aaaaa0000000L    # 133.3333282470703

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Lcom/appbrain/o/n0$a;

    invoke-direct {v1, p0, v0}, Lcom/appbrain/o/n0$a;-><init>(Lcom/appbrain/o/n0;I)V

    iput-object v1, p0, Lcom/appbrain/o/n0;->a:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/o/n0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/appbrain/o/n0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/appbrain/o/n0;->a:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/appbrain/o/n0;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

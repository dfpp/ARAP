.class final Lcom/appbrain/o/n0$a;
.super Ljava/util/LinkedHashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/o/n0;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/appbrain/o/n0;I)V
    .locals 1

    const/16 p1, 0x64

    iput p1, p0, Lcom/appbrain/o/n0$a;->b:I

    const/high16 p1, 0x3f400000    # 0.75f

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    iget v0, p0, Lcom/appbrain/o/n0$a;->b:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

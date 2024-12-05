.class final Lcom/appbrain/a/k1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/k1;->a(Lcom/appbrain/k;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/appbrain/k;


# direct methods
.method constructor <init>(ILcom/appbrain/k;)V
    .locals 0

    iput p1, p0, Lcom/appbrain/a/k1$b;->b:I

    iput-object p2, p0, Lcom/appbrain/a/k1$b;->c:Lcom/appbrain/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/appbrain/a/k1;->b()Ljava/lang/String;

    invoke-static {}, Lcom/appbrain/a/k1;->d()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/a/k1$b;->b:I

    new-instance v2, Lcom/appbrain/a/k1$d;

    iget-object v3, p0, Lcom/appbrain/a/k1$b;->c:Lcom/appbrain/k;

    invoke-direct {v2, v3}, Lcom/appbrain/a/k1$d;-><init>(Lcom/appbrain/k;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

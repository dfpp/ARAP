.class final Lcom/appbrain/n/i$a;
.super Lcom/appbrain/o/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/n/i;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Ljava/util/List;

.field final synthetic j:Lcom/appbrain/n/i;


# direct methods
.method constructor <init>(Lcom/appbrain/n/i;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/n/i$a;->j:Lcom/appbrain/n/i;

    iput-object p2, p0, Lcom/appbrain/n/i$a;->i:Ljava/util/List;

    invoke-direct {p0}, Lcom/appbrain/o/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/n/i$a;->j:Lcom/appbrain/n/i;

    invoke-static {v0}, Lcom/appbrain/n/i;->a(Lcom/appbrain/n/i;)Lcom/appbrain/a/d0;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/n/i$a;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/appbrain/n/i;->d(Lcom/appbrain/a/d0;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic e(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/util/Set;

    iget-object v0, p0, Lcom/appbrain/n/i$a;->j:Lcom/appbrain/n/i;

    invoke-static {v0, p1}, Lcom/appbrain/n/i;->f(Lcom/appbrain/n/i;Ljava/util/Set;)V

    return-void
.end method

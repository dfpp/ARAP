.class final Lcom/appbrain/a/h$a;
.super Lcom/appbrain/o/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/h;->f(Lcom/appbrain/t/t;Ljava/lang/Integer;Ljava/lang/String;Lcom/appbrain/o/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Lcom/appbrain/a/h$c;

.field final synthetic j:Lcom/appbrain/a/h;


# direct methods
.method constructor <init>(Lcom/appbrain/a/h;Lcom/appbrain/a/h$c;J)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/h$a;->j:Lcom/appbrain/a/h;

    iput-object p2, p0, Lcom/appbrain/a/h$a;->i:Lcom/appbrain/a/h$c;

    invoke-direct {p0}, Lcom/appbrain/o/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/h$a;->i:Lcom/appbrain/a/h$c;

    invoke-static {v0}, Lcom/appbrain/a/h;->b(Lcom/appbrain/a/h$c;)Lcom/appbrain/t/n;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic e(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/appbrain/t/n;

    invoke-static {}, Lcom/appbrain/a/h;->h()Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/appbrain/a/h$b;

    iget-object v2, p0, Lcom/appbrain/a/h$a;->j:Lcom/appbrain/a/h;

    invoke-direct {v1, v2, p1, v0}, Lcom/appbrain/a/h$b;-><init>(Lcom/appbrain/a/h;Lcom/appbrain/t/n;B)V

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/appbrain/a/h$b;->b()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/appbrain/a/h$a;->j:Lcom/appbrain/a/h;

    invoke-static {v1}, Lcom/appbrain/a/h;->i(Lcom/appbrain/a/h;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/appbrain/a/h$a;->i:Lcom/appbrain/a/h$c;

    new-instance v3, Lcom/appbrain/a/h$d;

    invoke-direct {v3, p1, v0}, Lcom/appbrain/a/h$d;-><init>(Lcom/appbrain/a/h$b;B)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/appbrain/a/h$a;->j:Lcom/appbrain/a/h;

    iget-object v1, p0, Lcom/appbrain/a/h$a;->i:Lcom/appbrain/a/h$c;

    invoke-static {v0, v1, p1}, Lcom/appbrain/a/h;->e(Lcom/appbrain/a/h;Lcom/appbrain/a/h$c;Lcom/appbrain/a/h$b;)V

    return-void
.end method

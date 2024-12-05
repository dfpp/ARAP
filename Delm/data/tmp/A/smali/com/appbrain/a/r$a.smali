.class final Lcom/appbrain/a/r$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/appbrain/a/r$a;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/a/r$a;
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/r$a;->a:Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/appbrain/a/r$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/appbrain/a/r$a;->a:Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/appbrain/a/r$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/appbrain/a/r$a;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "it"

    invoke-direct {p0, v0, p1}, Lcom/appbrain/a/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/a/r$a;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/appbrain/a/r$a;
    .locals 1

    const-string v0, "ic"

    invoke-direct {p0, v0, p1}, Lcom/appbrain/a/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/a/r$a;

    return-object p0
.end method

.method public final d(Z)Lcom/appbrain/a/r$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "sm"

    invoke-direct {p0, v0, p1}, Lcom/appbrain/a/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/a/r$a;

    return-object p0
.end method

.method public final e(I)Lcom/appbrain/a/r$a;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "bt"

    invoke-direct {p0, v0, p1}, Lcom/appbrain/a/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/a/r$a;

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/appbrain/a/r$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "tag"

    invoke-direct {p0, v0, p1}, Lcom/appbrain/a/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/a/r$a;

    :cond_0
    return-object p0
.end method

.method public final g(Z)Lcom/appbrain/a/r$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "mb"

    invoke-direct {p0, v0, p1}, Lcom/appbrain/a/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/a/r$a;

    return-object p0
.end method

.method public final h(I)Lcom/appbrain/a/r$a;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "id"

    invoke-direct {p0, v0, p1}, Lcom/appbrain/a/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/appbrain/a/r$a;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/r$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

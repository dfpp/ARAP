.class public final Lcom/appbrain/q/u;
.super Lcom/appbrain/q/v;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/q/u$b;,
        Lcom/appbrain/q/u$a;
    }
.end annotation


# instance fields
.field private final d:Lcom/appbrain/q/x;


# virtual methods
.method public final d()Lcom/appbrain/q/x;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/u;->d:Lcom/appbrain/q/x;

    invoke-virtual {p0, v0}, Lcom/appbrain/q/v;->a(Lcom/appbrain/q/x;)Lcom/appbrain/q/x;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/u;->d()Lcom/appbrain/q/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/u;->d()Lcom/appbrain/q/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/u;->d()Lcom/appbrain/q/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

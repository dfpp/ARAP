.class final Lcom/appbrain/q/q$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/q/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final b:I

.field final c:Lcom/appbrain/q/f$a;

.field final d:Z


# virtual methods
.method public final a()Lcom/appbrain/q/f$a;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/q$e;->c:Lcom/appbrain/q/f$a;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/q/q$e;->d:Z

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/appbrain/q/q$e;

    iget v0, p0, Lcom/appbrain/q/q$e;->b:I

    iget p1, p1, Lcom/appbrain/q/q$e;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

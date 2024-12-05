.class final Lcom/appbrain/q/j$c;
.super Lcom/appbrain/q/j$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final f:I

.field private final g:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/appbrain/q/j$g;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/appbrain/q/j;->j(III)I

    iput p2, p0, Lcom/appbrain/q/j$c;->f:I

    iput p3, p0, Lcom/appbrain/q/j$c;->g:I

    return-void
.end method


# virtual methods
.method public final e(I)B
    .locals 4

    iget v0, p0, Lcom/appbrain/q/j$c;->g:I

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Index < 0: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Index > length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/appbrain/q/j$g;->e:[B

    iget v1, p0, Lcom/appbrain/q/j$c;->f:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method protected final p([BI)V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/q/j$g;->e:[B

    iget v1, p0, Lcom/appbrain/q/j$c;->f:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/appbrain/q/j$c;->g:I

    return v0
.end method

.method protected final x()I
    .locals 1

    iget v0, p0, Lcom/appbrain/q/j$c;->f:I

    return v0
.end method

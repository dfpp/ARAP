.class public Lcom/appbrain/u/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/u/c$a;,
        Lcom/appbrain/u/c$b;
    }
.end annotation


# static fields
.field private static d:Ljava/lang/String; = "There was a network error, please try again."


# instance fields
.field private final a:Lcom/appbrain/u/d;

.field private final b:Lcom/appbrain/o/g;

.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/appbrain/o/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appbrain/u/d;

    new-instance v1, Lcom/appbrain/u/b;

    invoke-direct {v1}, Lcom/appbrain/u/b;-><init>()V

    invoke-direct {v0, v1}, Lcom/appbrain/u/d;-><init>(Lcom/appbrain/u/d$a;)V

    iput-object v0, p0, Lcom/appbrain/u/c;->a:Lcom/appbrain/u/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appbrain/u/c;->c:Ljava/util/List;

    new-instance v0, Lcom/appbrain/o/g;

    invoke-direct {v0, p1}, Lcom/appbrain/o/g;-><init>(Lcom/appbrain/o/p;)V

    iput-object v0, p0, Lcom/appbrain/u/c;->b:Lcom/appbrain/o/g;

    return-void
.end method


# virtual methods
.method protected a(Lcom/appbrain/q/q;Ljava/lang/String;)Lcom/appbrain/v/b$a;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method protected final b(Lcom/appbrain/q/q;Ljava/lang/String;)[B
    .locals 5

    invoke-static {}, Lcom/appbrain/o/j;->j()V

    const/16 v0, 0x24

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/appbrain/u/c;->a(Lcom/appbrain/q/q;Ljava/lang/String;)Lcom/appbrain/v/b$a;

    move-result-object p1

    iget-object v0, p0, Lcom/appbrain/u/c;->b:Lcom/appbrain/o/g;

    iget-object v1, p0, Lcom/appbrain/u/c;->a:Lcom/appbrain/u/d;

    invoke-virtual {v1, p1}, Lcom/appbrain/u/d;->a(Lcom/appbrain/v/b$a;)Lcom/appbrain/v/b$a;

    invoke-virtual {p1}, Lcom/appbrain/q/q$a;->u()Lcom/appbrain/q/q;

    move-result-object p1

    check-cast p1, Lcom/appbrain/v/b;

    invoke-virtual {p1}, Lcom/appbrain/q/a;->h()[B

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/appbrain/o/g;->c(Ljava/lang/String;[B)[B

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    move-object v2, p2

    goto/16 :goto_4

    :cond_1
    invoke-static {p1}, Lcom/appbrain/v/b;->c0([B)Lcom/appbrain/v/b;

    move-result-object p1

    iget-object v0, p0, Lcom/appbrain/u/c;->a:Lcom/appbrain/u/d;

    invoke-virtual {v0, p1}, Lcom/appbrain/u/d;->b(Lcom/appbrain/v/b;)V

    invoke-virtual {p1}, Lcom/appbrain/v/b;->q0()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/appbrain/v/b;->b0()Lcom/appbrain/q/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/q/j;->t()[B

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/appbrain/v/b;->o0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/appbrain/v/b;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/appbrain/v/b;->p0()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/appbrain/u/c;->d:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v1, p2

    :goto_1
    new-instance v2, Lcom/appbrain/u/c$b;

    invoke-direct {v2, v0, v1}, Lcom/appbrain/u/c$b;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/appbrain/v/b;->s0()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/appbrain/v/b;->s0()I

    move-result v0

    invoke-virtual {p1}, Lcom/appbrain/v/b;->r0()I

    move-result v1

    if-ne v0, v1, :cond_6

    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/appbrain/v/b;->s0()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/appbrain/v/b;->s0()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p1, v1}, Lcom/appbrain/v/b;->a0(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/appbrain/v/b;->h0(I)Lcom/appbrain/q/j;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/appbrain/u/c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appbrain/u/c$a;

    invoke-interface {v1}, Lcom/appbrain/u/c$a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RPC extension count not matching "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appbrain/v/b;->s0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/appbrain/v/b;->r0()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    :goto_4
    if-nez v2, :cond_8

    return-object p2

    :cond_8
    iget-object p1, v2, Lcom/appbrain/u/c$b;->b:Ljava/lang/String;

    if-nez p1, :cond_9

    iget-object p1, v2, Lcom/appbrain/u/c$b;->a:[B

    return-object p1

    :cond_9
    new-instance p1, Lcom/appbrain/r/a;

    iget-object p2, v2, Lcom/appbrain/u/c$b;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/appbrain/r/a;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

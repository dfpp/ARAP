.class public final Lcom/appbrain/t/w$a;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/t/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/t/w;->Y()Lcom/appbrain/t/w;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/t/w$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/w;

    invoke-virtual {v0}, Lcom/appbrain/t/w;->R()Z

    move-result v0

    return v0
.end method

.method public final B(I)Lcom/appbrain/t/w$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/w;

    invoke-static {v0, p1}, Lcom/appbrain/t/w;->T(Lcom/appbrain/t/w;I)V

    return-object p0
.end method

.method public final C(Ljava/lang/String;)Lcom/appbrain/t/w$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/w;

    invoke-static {v0, p1}, Lcom/appbrain/t/w;->U(Lcom/appbrain/t/w;Ljava/lang/String;)V

    return-object p0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/w;

    invoke-virtual {v0}, Lcom/appbrain/t/w;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final E()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/w;

    invoke-virtual {v0}, Lcom/appbrain/t/w;->V()Z

    move-result v0

    return v0
.end method

.method public final F()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/w;

    invoke-virtual {v0}, Lcom/appbrain/t/w;->W()I

    move-result v0

    return v0
.end method

.method public final G()Lcom/appbrain/t/w$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/w;

    invoke-static {v0}, Lcom/appbrain/t/w;->L(Lcom/appbrain/t/w;)V

    return-object p0
.end method

.method public final v(I)Lcom/appbrain/t/w$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/w;

    invoke-static {v0, p1}, Lcom/appbrain/t/w;->M(Lcom/appbrain/t/w;I)V

    return-object p0
.end method

.method public final w(J)Lcom/appbrain/t/w$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/w;

    invoke-static {v0, p1, p2}, Lcom/appbrain/t/w;->N(Lcom/appbrain/t/w;J)V

    return-object p0
.end method

.method public final x(Lcom/appbrain/t/j;)Lcom/appbrain/t/w$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/w;

    invoke-static {v0, p1}, Lcom/appbrain/t/w;->O(Lcom/appbrain/t/w;Lcom/appbrain/t/j;)V

    return-object p0
.end method

.method public final y(Ljava/lang/Iterable;)Lcom/appbrain/t/w$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/w;

    invoke-static {v0, p1}, Lcom/appbrain/t/w;->P(Lcom/appbrain/t/w;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final z(Ljava/lang/String;)Lcom/appbrain/t/w$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/w;

    invoke-static {v0, p1}, Lcom/appbrain/t/w;->Q(Lcom/appbrain/t/w;Ljava/lang/String;)V

    return-object p0
.end method

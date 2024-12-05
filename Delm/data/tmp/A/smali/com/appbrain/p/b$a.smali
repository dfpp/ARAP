.class public final Lcom/appbrain/p/b$a;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/p/b;->X()Lcom/appbrain/p/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/p/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Lcom/appbrain/p/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/b;

    invoke-static {v0, p1}, Lcom/appbrain/p/b;->Q(Lcom/appbrain/p/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public final B()I
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/b;

    invoke-virtual {v0}, Lcom/appbrain/p/b;->R()I

    move-result v0

    return v0
.end method

.method public final C(I)Lcom/appbrain/p/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/b;

    invoke-static {v0, p1}, Lcom/appbrain/p/b;->S(Lcom/appbrain/p/b;I)V

    return-object p0
.end method

.method public final D(I)Lcom/appbrain/p/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/b;

    invoke-static {v0, p1}, Lcom/appbrain/p/b;->U(Lcom/appbrain/p/b;I)V

    return-object p0
.end method

.method public final E()Lcom/appbrain/t/l;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/b;

    invoke-virtual {v0}, Lcom/appbrain/p/b;->T()Lcom/appbrain/t/l;

    move-result-object v0

    return-object v0
.end method

.method public final v()J
    .locals 2

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/b;

    invoke-virtual {v0}, Lcom/appbrain/p/b;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w(I)Lcom/appbrain/p/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/b;

    invoke-static {v0, p1}, Lcom/appbrain/p/b;->M(Lcom/appbrain/p/b;I)V

    return-object p0
.end method

.method public final x(J)Lcom/appbrain/p/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/b;

    invoke-static {v0, p1, p2}, Lcom/appbrain/p/b;->N(Lcom/appbrain/p/b;J)V

    return-object p0
.end method

.method public final y(Lcom/appbrain/p/d$a;)Lcom/appbrain/p/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/b;

    invoke-static {v0, p1}, Lcom/appbrain/p/b;->O(Lcom/appbrain/p/b;Lcom/appbrain/p/d$a;)V

    return-object p0
.end method

.method public final z(Lcom/appbrain/t/l;)Lcom/appbrain/p/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/b;

    invoke-static {v0, p1}, Lcom/appbrain/p/b;->P(Lcom/appbrain/p/b;Lcom/appbrain/t/l;)V

    return-object p0
.end method

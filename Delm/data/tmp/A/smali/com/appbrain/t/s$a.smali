.class public final Lcom/appbrain/t/s$a;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/t/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/t/s;->T()Lcom/appbrain/t/s;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/t/s$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(I)Lcom/appbrain/t/s$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/s;

    invoke-static {v0, p1}, Lcom/appbrain/t/s;->S(Lcom/appbrain/t/s;I)V

    return-object p0
.end method

.method public final B(I)Lcom/appbrain/t/s$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/s;

    invoke-static {v0, p1}, Lcom/appbrain/t/s;->U(Lcom/appbrain/t/s;I)V

    return-object p0
.end method

.method public final v(I)Lcom/appbrain/t/s$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/s;

    invoke-static {v0, p1}, Lcom/appbrain/t/s;->M(Lcom/appbrain/t/s;I)V

    return-object p0
.end method

.method public final w(Lcom/appbrain/t/j;)Lcom/appbrain/t/s$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/s;

    invoke-static {v0, p1}, Lcom/appbrain/t/s;->N(Lcom/appbrain/t/s;Lcom/appbrain/t/j;)V

    return-object p0
.end method

.method public final x(Lcom/appbrain/t/t;)Lcom/appbrain/t/s$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/s;

    invoke-static {v0, p1}, Lcom/appbrain/t/s;->O(Lcom/appbrain/t/s;Lcom/appbrain/t/t;)V

    return-object p0
.end method

.method public final y(Ljava/lang/String;)Lcom/appbrain/t/s$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/s;

    invoke-static {v0, p1}, Lcom/appbrain/t/s;->P(Lcom/appbrain/t/s;Ljava/lang/String;)V

    return-object p0
.end method

.method public final z(Z)Lcom/appbrain/t/s$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/s;

    invoke-static {v0, p1}, Lcom/appbrain/t/s;->Q(Lcom/appbrain/t/s;Z)V

    return-object p0
.end method

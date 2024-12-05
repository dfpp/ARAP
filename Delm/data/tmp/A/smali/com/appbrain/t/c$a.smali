.class public final Lcom/appbrain/t/c$a;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/t/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/t/c;->U()Lcom/appbrain/t/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/t/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final v(I)Lcom/appbrain/t/c$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/c;

    invoke-static {v0, p1}, Lcom/appbrain/t/c;->L(Lcom/appbrain/t/c;I)V

    return-object p0
.end method

.method public final w(J)Lcom/appbrain/t/c$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/c;

    invoke-static {v0, p1, p2}, Lcom/appbrain/t/c;->M(Lcom/appbrain/t/c;J)V

    return-object p0
.end method

.method public final x(Ljava/lang/String;)Lcom/appbrain/t/c$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/c;

    invoke-static {v0, p1}, Lcom/appbrain/t/c;->N(Lcom/appbrain/t/c;Ljava/lang/String;)V

    return-object p0
.end method

.method public final y(I)Lcom/appbrain/t/c$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/c;

    invoke-static {v0, p1}, Lcom/appbrain/t/c;->Q(Lcom/appbrain/t/c;I)V

    return-object p0
.end method

.method public final z(Ljava/lang/String;)Lcom/appbrain/t/c$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/c;

    invoke-static {v0, p1}, Lcom/appbrain/t/c;->R(Lcom/appbrain/t/c;Ljava/lang/String;)V

    return-object p0
.end method

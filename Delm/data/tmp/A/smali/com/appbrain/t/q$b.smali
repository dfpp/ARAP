.class public final Lcom/appbrain/t/q$b;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/t/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/t/q;->M()Lcom/appbrain/t/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/t/q$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final v()Lcom/appbrain/t/q$b;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/q;

    invoke-static {v0}, Lcom/appbrain/t/q;->Q(Lcom/appbrain/t/q;)V

    return-object p0
.end method

.method public final w(Lcom/appbrain/t/q$c;)Lcom/appbrain/t/q$b;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/q;

    invoke-static {v0, p1}, Lcom/appbrain/t/q;->R(Lcom/appbrain/t/q;Lcom/appbrain/t/q$c;)V

    return-object p0
.end method

.method public final x(Lcom/appbrain/t/q$f$a;)Lcom/appbrain/t/q$b;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/q;

    invoke-static {v0, p1}, Lcom/appbrain/t/q;->S(Lcom/appbrain/t/q;Lcom/appbrain/t/q$f$a;)V

    return-object p0
.end method

.method public final y(Ljava/lang/String;)Lcom/appbrain/t/q$b;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/q;

    invoke-static {v0, p1}, Lcom/appbrain/t/q;->T(Lcom/appbrain/t/q;Ljava/lang/String;)V

    return-object p0
.end method

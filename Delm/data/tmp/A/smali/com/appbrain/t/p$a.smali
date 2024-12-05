.class public final Lcom/appbrain/t/p$a;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/t/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/t/p;->V()Lcom/appbrain/t/p;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/t/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final v(I)Lcom/appbrain/t/p$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/p;

    invoke-static {v0, p1}, Lcom/appbrain/t/p;->M(Lcom/appbrain/t/p;I)V

    return-object p0
.end method

.method public final w(J)Lcom/appbrain/t/p$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/p;

    invoke-static {v0, p1, p2}, Lcom/appbrain/t/p;->N(Lcom/appbrain/t/p;J)V

    return-object p0
.end method

.method public final x(Ljava/lang/String;)Lcom/appbrain/t/p$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/p;

    invoke-static {v0, p1}, Lcom/appbrain/t/p;->O(Lcom/appbrain/t/p;Ljava/lang/String;)V

    return-object p0
.end method

.method public final y(Ljava/lang/String;)Lcom/appbrain/t/p$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/p;

    invoke-static {v0, p1}, Lcom/appbrain/t/p;->Q(Lcom/appbrain/t/p;Ljava/lang/String;)V

    return-object p0
.end method

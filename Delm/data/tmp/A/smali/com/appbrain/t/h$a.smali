.class public final Lcom/appbrain/t/h$a;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/t/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/t/h;->S()Lcom/appbrain/t/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/t/h$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final v(Lcom/appbrain/t/b$a;)Lcom/appbrain/t/h$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/h;

    invoke-static {v0, p1}, Lcom/appbrain/t/h;->M(Lcom/appbrain/t/h;Lcom/appbrain/t/b$a;)V

    return-object p0
.end method

.method public final w(Lcom/appbrain/t/c;)Lcom/appbrain/t/h$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/h;

    invoke-static {v0, p1}, Lcom/appbrain/t/h;->N(Lcom/appbrain/t/h;Lcom/appbrain/t/c;)V

    return-object p0
.end method

.method public final x(Lcom/appbrain/t/j;)Lcom/appbrain/t/h$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/h;

    invoke-static {v0, p1}, Lcom/appbrain/t/h;->O(Lcom/appbrain/t/h;Lcom/appbrain/t/j;)V

    return-object p0
.end method

.method public final y(Z)Lcom/appbrain/t/h$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/h;

    invoke-static {v0, p1}, Lcom/appbrain/t/h;->P(Lcom/appbrain/t/h;Z)V

    return-object p0
.end method

.class public final Lcom/appbrain/v/b$a;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/v/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/v/b;->u0()Lcom/appbrain/v/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/v/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()Lcom/appbrain/v/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/v/b;

    invoke-static {v0}, Lcom/appbrain/v/b;->i0(Lcom/appbrain/v/b;)V

    return-object p0
.end method

.method public final B()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/v/b;

    invoke-virtual {v0}, Lcom/appbrain/v/b;->m0()Z

    move-result v0

    return v0
.end method

.method public final C()Lcom/appbrain/v/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/v/b;

    invoke-static {v0}, Lcom/appbrain/v/b;->l0(Lcom/appbrain/v/b;)V

    return-object p0
.end method

.method public final v(J)Lcom/appbrain/v/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/v/b;

    invoke-static {v0, p1, p2}, Lcom/appbrain/v/b;->d0(Lcom/appbrain/v/b;J)V

    return-object p0
.end method

.method public final w(Lcom/appbrain/q/j;)Lcom/appbrain/v/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/v/b;

    invoke-static {v0, p1}, Lcom/appbrain/v/b;->e0(Lcom/appbrain/v/b;Lcom/appbrain/q/j;)V

    return-object p0
.end method

.method public final x(Lcom/appbrain/v/c;)Lcom/appbrain/v/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/v/b;

    invoke-static {v0, p1}, Lcom/appbrain/v/b;->f0(Lcom/appbrain/v/b;Lcom/appbrain/v/c;)V

    return-object p0
.end method

.method public final y(Ljava/lang/String;)Lcom/appbrain/v/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/v/b;

    invoke-static {v0, p1}, Lcom/appbrain/v/b;->g0(Lcom/appbrain/v/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public final z()Z
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/v/b;

    invoke-virtual {v0}, Lcom/appbrain/v/b;->j0()Z

    move-result v0

    return v0
.end method

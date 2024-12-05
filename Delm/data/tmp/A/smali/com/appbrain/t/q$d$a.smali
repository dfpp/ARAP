.class public final Lcom/appbrain/t/q$d$a;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/t/q$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/t/q$d;->S()Lcom/appbrain/t/q$d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/t/q$d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final v(D)Lcom/appbrain/t/q$d$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/q$d;

    invoke-static {v0, p1, p2}, Lcom/appbrain/t/q$d;->M(Lcom/appbrain/t/q$d;D)V

    return-object p0
.end method

.method public final w(J)Lcom/appbrain/t/q$d$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/q$d;

    invoke-static {v0, p1, p2}, Lcom/appbrain/t/q$d;->N(Lcom/appbrain/t/q$d;J)V

    return-object p0
.end method

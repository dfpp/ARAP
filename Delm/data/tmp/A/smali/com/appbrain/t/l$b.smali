.class public final Lcom/appbrain/t/l$b;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/t/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/t/l;->R()Lcom/appbrain/t/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/t/l$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final v(I)Lcom/appbrain/t/l$b;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/l;

    invoke-static {v0, p1}, Lcom/appbrain/t/l;->M(Lcom/appbrain/t/l;I)V

    return-object p0
.end method

.method public final w(Lcom/appbrain/t/l$a;)Lcom/appbrain/t/l$b;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/l;

    invoke-static {v0, p1}, Lcom/appbrain/t/l;->N(Lcom/appbrain/t/l;Lcom/appbrain/t/l$a;)V

    return-object p0
.end method

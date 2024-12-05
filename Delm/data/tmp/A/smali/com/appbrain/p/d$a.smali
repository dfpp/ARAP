.class public final Lcom/appbrain/p/d$a;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/p/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/p/d;->P()Lcom/appbrain/p/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/p/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final v(Lcom/appbrain/p/f;)Lcom/appbrain/p/d$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/d;

    invoke-static {v0, p1}, Lcom/appbrain/p/d;->M(Lcom/appbrain/p/d;Lcom/appbrain/p/f;)V

    return-object p0
.end method

.method public final w(Lcom/appbrain/q/j;)Lcom/appbrain/p/d$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/d;

    invoke-static {v0, p1}, Lcom/appbrain/p/d;->N(Lcom/appbrain/p/d;Lcom/appbrain/q/j;)V

    return-object p0
.end method

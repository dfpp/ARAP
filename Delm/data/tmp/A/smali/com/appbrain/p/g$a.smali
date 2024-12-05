.class public final Lcom/appbrain/p/g$a;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/p/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/p/g;->P()Lcom/appbrain/p/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/p/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final v(Lcom/appbrain/p/i$a;)Lcom/appbrain/p/g$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/g;

    invoke-static {v0, p1}, Lcom/appbrain/p/g;->M(Lcom/appbrain/p/g;Lcom/appbrain/p/i$a;)V

    return-object p0
.end method

.method public final w(Lcom/appbrain/t/l;)Lcom/appbrain/p/g$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/g;

    invoke-static {v0, p1}, Lcom/appbrain/p/g;->N(Lcom/appbrain/p/g;Lcom/appbrain/t/l;)V

    return-object p0
.end method

.method public final x(Ljava/lang/String;)Lcom/appbrain/p/g$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/g;

    invoke-static {v0, p1}, Lcom/appbrain/p/g;->O(Lcom/appbrain/p/g;Ljava/lang/String;)V

    return-object p0
.end method

.class public final Lcom/appbrain/p/i$a;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/p/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/p/i;->P()Lcom/appbrain/p/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/p/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final v(Lcom/appbrain/t/j;)Lcom/appbrain/p/i$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/p/i;

    invoke-static {v0, p1}, Lcom/appbrain/p/i;->M(Lcom/appbrain/p/i;Lcom/appbrain/t/j;)V

    return-object p0
.end method

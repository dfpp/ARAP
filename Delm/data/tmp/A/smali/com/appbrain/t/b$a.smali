.class public final Lcom/appbrain/t/b$a;
.super Lcom/appbrain/q/q$a;
.source ""

# interfaces
.implements Lcom/appbrain/q/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/t/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/appbrain/t/b;->P()Lcom/appbrain/t/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appbrain/q/q$a;-><init>(Lcom/appbrain/q/q;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/t/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final v(I)Lcom/appbrain/t/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/b;

    invoke-static {v0, p1}, Lcom/appbrain/t/b;->M(Lcom/appbrain/t/b;I)V

    return-object p0
.end method

.method public final w(Ljava/lang/String;)Lcom/appbrain/t/b$a;
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/q$a;->s()V

    iget-object v0, p0, Lcom/appbrain/q/q$a;->c:Lcom/appbrain/q/q;

    check-cast v0, Lcom/appbrain/t/b;

    invoke-static {v0, p1}, Lcom/appbrain/t/b;->N(Lcom/appbrain/t/b;Ljava/lang/String;)V

    return-object p0
.end method

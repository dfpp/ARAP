.class public final Lcom/appbrain/a/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:I

.field public final k:Z


# direct methods
.method public constructor <init>(Lcom/appbrain/t/n;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Lcom/appbrain/t/n;->P(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/appbrain/t/n;->R(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/d;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/appbrain/t/n;->S(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/d;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/appbrain/t/n;->U(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/d;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/appbrain/t/n;->W(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/d;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/appbrain/t/n;->Y(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/d;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/appbrain/t/n;->d0()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/appbrain/t/n;->f0(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/appbrain/a/d;->j:I

    invoke-virtual {p1}, Lcom/appbrain/t/n;->T()Z

    move-result v0

    iput-boolean v0, p0, Lcom/appbrain/a/d;->k:Z

    invoke-virtual {p1}, Lcom/appbrain/t/n;->Q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/d;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/appbrain/t/n;->X()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/appbrain/t/o;->M()Lcom/appbrain/t/o;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Lcom/appbrain/t/n;->e0(I)Lcom/appbrain/t/o;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lcom/appbrain/t/o;->L()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/d;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/appbrain/t/n;->V()I

    move-result v0

    if-le v0, p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/appbrain/t/n;->c0(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/appbrain/a/d;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/appbrain/t/n;->k0()I

    move-result v0

    if-le v0, p2, :cond_3

    invoke-virtual {p1, p2}, Lcom/appbrain/t/n;->h0(I)F

    :cond_3
    invoke-virtual {p1}, Lcom/appbrain/t/n;->j0()I

    move-result v0

    if-le v0, p2, :cond_4

    invoke-virtual {p1, p2}, Lcom/appbrain/t/n;->g0(I)Ljava/lang/String;

    :cond_4
    invoke-virtual {p1}, Lcom/appbrain/t/n;->l0()I

    move-result v0

    if-le v0, p2, :cond_5

    invoke-virtual {p1, p2}, Lcom/appbrain/t/n;->i0(I)Ljava/lang/String;

    :cond_5
    return-void
.end method

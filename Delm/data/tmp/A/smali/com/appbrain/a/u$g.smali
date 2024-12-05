.class final Lcom/appbrain/a/u$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/a/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/a/u;


# direct methods
.method constructor <init>(Lcom/appbrain/a/u;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/u$g;->a:Lcom/appbrain/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/u$g;->a:Lcom/appbrain/a/u;

    invoke-virtual {v0}, Lcom/appbrain/a/j1;->n()I

    move-result v0

    sget-object v1, Lcom/appbrain/a/k1$e;->e:Lcom/appbrain/a/k1$e;

    invoke-static {v0, v1}, Lcom/appbrain/a/k1;->c(ILcom/appbrain/a/k1$e;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/u$g;->a:Lcom/appbrain/a/u;

    invoke-virtual {v0}, Lcom/appbrain/a/j1;->q()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/u$g;->a:Lcom/appbrain/a/u;

    invoke-static {v0}, Lcom/appbrain/a/u;->B(Lcom/appbrain/a/u;)V

    return-void
.end method

.class final Lcom/appbrain/a/c$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/c;->setVisibleAppIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/appbrain/a/c;


# direct methods
.method constructor <init>(Lcom/appbrain/a/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/c$d;->c:Lcom/appbrain/a/c;

    iput p2, p0, Lcom/appbrain/a/c$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/c$d;->c:Lcom/appbrain/a/c;

    invoke-static {v0}, Lcom/appbrain/a/c;->a(Lcom/appbrain/a/c;)Lcom/appbrain/t/w$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/t/w$a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/appbrain/a/c$d;->b:I

    iget-object v1, p0, Lcom/appbrain/a/c$d;->c:Lcom/appbrain/a/c;

    invoke-static {v1}, Lcom/appbrain/a/c;->a(Lcom/appbrain/a/c;)Lcom/appbrain/t/w$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/t/w$a;->F()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/c$d;->c:Lcom/appbrain/a/c;

    invoke-static {v0}, Lcom/appbrain/a/c;->a(Lcom/appbrain/a/c;)Lcom/appbrain/t/w$a;

    move-result-object v0

    iget v1, p0, Lcom/appbrain/a/c$d;->b:I

    invoke-virtual {v0, v1}, Lcom/appbrain/t/w$a;->v(I)Lcom/appbrain/t/w$a;

    :cond_1
    return-void
.end method

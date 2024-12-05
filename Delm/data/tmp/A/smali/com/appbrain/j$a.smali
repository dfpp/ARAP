.class final Lcom/appbrain/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/j;


# direct methods
.method constructor <init>(Lcom/appbrain/j;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/j$a;->a:Lcom/appbrain/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 7

    new-instance v1, Lcom/appbrain/a/w;

    iget-object v0, p0, Lcom/appbrain/j$a;->a:Lcom/appbrain/j;

    invoke-static {v0}, Lcom/appbrain/j;->a(Lcom/appbrain/j;)Lcom/appbrain/c;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/appbrain/a/w;-><init>(Lcom/appbrain/c;)V

    iget-object v0, p0, Lcom/appbrain/j$a;->a:Lcom/appbrain/j;

    invoke-static {v0}, Lcom/appbrain/j;->a(Lcom/appbrain/j;)Lcom/appbrain/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/c;->c()Lcom/appbrain/k;

    move-result-object v3

    invoke-static {}, Lcom/appbrain/a/y;->a()Lcom/appbrain/a/y;

    invoke-static {}, Lcom/appbrain/a/y;->f()Lcom/appbrain/t/q$d;

    move-result-object v2

    new-instance v6, Lcom/appbrain/a/x;

    iget-object v0, p0, Lcom/appbrain/j$a;->a:Lcom/appbrain/j;

    invoke-static {v0}, Lcom/appbrain/j;->d(Lcom/appbrain/j;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v0, p0, Lcom/appbrain/j$a;->a:Lcom/appbrain/j;

    invoke-static {v0}, Lcom/appbrain/j;->e(Lcom/appbrain/j;)Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/appbrain/a/x;-><init>(Lcom/appbrain/a/w;Lcom/appbrain/t/q$d;Lcom/appbrain/k;Ljava/lang/Runnable;Z)V

    return-object v6
.end method

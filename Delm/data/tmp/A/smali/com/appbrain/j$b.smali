.class final Lcom/appbrain/j$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/j;->i(Landroid/content/Context;)Lcom/appbrain/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/appbrain/j;


# direct methods
.method constructor <init>(Lcom/appbrain/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/j$b;->c:Lcom/appbrain/j;

    iput-object p2, p0, Lcom/appbrain/j$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/j$b;->c:Lcom/appbrain/j;

    invoke-static {v0}, Lcom/appbrain/j;->h(Lcom/appbrain/j;)Lcom/appbrain/o/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/o/o;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/a/x;

    iget-object v1, p0, Lcom/appbrain/j$b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/appbrain/a/x;->b(Landroid/content/Context;)V

    return-void
.end method

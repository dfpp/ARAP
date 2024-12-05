.class final Lcom/appbrain/n/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/n/b;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/n/b$f;

.field final synthetic c:Lcom/appbrain/p/e;

.field final synthetic d:Lcom/appbrain/n/b;


# direct methods
.method constructor <init>(Lcom/appbrain/n/b;Lcom/appbrain/n/b$f;Lcom/appbrain/p/e;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/n/b$b;->d:Lcom/appbrain/n/b;

    iput-object p2, p0, Lcom/appbrain/n/b$b;->b:Lcom/appbrain/n/b$f;

    iput-object p3, p0, Lcom/appbrain/n/b$b;->c:Lcom/appbrain/p/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/n/b$b;->b:Lcom/appbrain/n/b$f;

    invoke-static {v0}, Lcom/appbrain/n/b$f;->a(Lcom/appbrain/n/b$f;)Lcom/appbrain/n/b$g;

    move-result-object v0

    sget-object v1, Lcom/appbrain/n/b$g;->b:Lcom/appbrain/n/b$g;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/n/b$b;->b:Lcom/appbrain/n/b$f;

    sget-object v1, Lcom/appbrain/n/b$g;->c:Lcom/appbrain/n/b$g;

    invoke-static {v0, v1}, Lcom/appbrain/n/b$f;->b(Lcom/appbrain/n/b$f;Lcom/appbrain/n/b$g;)Lcom/appbrain/n/b$g;

    iget-object v0, p0, Lcom/appbrain/n/b$b;->d:Lcom/appbrain/n/b;

    iget-object v1, p0, Lcom/appbrain/n/b$b;->c:Lcom/appbrain/p/e;

    sget-object v2, Lcom/appbrain/n/h;->f:Lcom/appbrain/n/h;

    invoke-static {v0, v1, v2}, Lcom/appbrain/n/b;->c(Lcom/appbrain/n/b;Lcom/appbrain/p/e;Lcom/appbrain/n/h;)V

    :cond_0
    return-void
.end method

.class final Lcom/appbrain/a/c$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/c;->appClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcom/appbrain/a/c;


# direct methods
.method constructor <init>(Lcom/appbrain/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/c$c;->g:Lcom/appbrain/a/c;

    iput-object p2, p0, Lcom/appbrain/a/c$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/appbrain/a/c$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/appbrain/a/c$c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/appbrain/a/c$c;->e:Ljava/lang/String;

    iput p6, p0, Lcom/appbrain/a/c$c;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/appbrain/a/c$c;->g:Lcom/appbrain/a/c;

    invoke-static {v0}, Lcom/appbrain/a/c;->b(Lcom/appbrain/a/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/c$c;->g:Lcom/appbrain/a/c;

    invoke-virtual {v0}, Lcom/appbrain/a/c;->a()V

    invoke-static {}, Lcom/appbrain/a/n0;->b()Lcom/appbrain/a/n0;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/c$c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/appbrain/a/c$c;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/appbrain/a/c$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4}, Lcom/appbrain/a/n0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/appbrain/a/l1$c;->a()Lcom/appbrain/a/l1;

    invoke-static {}, Lcom/appbrain/a/l1;->r()V

    :cond_0
    iget-object v0, p0, Lcom/appbrain/a/c$c;->g:Lcom/appbrain/a/c;

    invoke-static {v0}, Lcom/appbrain/a/c;->c(Lcom/appbrain/a/c;)Lcom/appbrain/a/c$h;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/a/c$h;->a()V

    iget-object v0, p0, Lcom/appbrain/a/c$c;->g:Lcom/appbrain/a/c;

    invoke-static {v0}, Lcom/appbrain/a/c;->d(Lcom/appbrain/a/c;)Landroid/app/Activity;

    move-result-object v0

    iget-object v7, p0, Lcom/appbrain/a/c$c;->b:Ljava/lang/String;

    new-instance v8, Lcom/appbrain/a/h0$b;

    iget-object v3, p0, Lcom/appbrain/a/c$c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/appbrain/a/c$c;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/appbrain/a/c$c;->e:Ljava/lang/String;

    iget v6, p0, Lcom/appbrain/a/c$c;->f:I

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/appbrain/a/h0$b;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0, v7, v8}, Lcom/appbrain/a/h0;->d(Landroid/app/Activity;Ljava/lang/String;Lcom/appbrain/a/h0$b;)V

    return-void
.end method

.class final Lcom/appbrain/a/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/d;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/appbrain/a/b;


# direct methods
.method constructor <init>(Lcom/appbrain/a/b;Lcom/appbrain/a/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/b$c;->d:Lcom/appbrain/a/b;

    iput-object p2, p0, Lcom/appbrain/a/b$c;->b:Lcom/appbrain/a/d;

    iput-object p3, p0, Lcom/appbrain/a/b$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Lcom/appbrain/a/b$c;->d:Lcom/appbrain/a/b;

    invoke-virtual {p1}, Lcom/appbrain/a/j1;->p()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/appbrain/a/b$c;->b:Lcom/appbrain/a/d;

    iget-object v1, v0, Lcom/appbrain/a/d;->e:Ljava/lang/String;

    new-instance v8, Lcom/appbrain/a/h0$b;

    iget-boolean v3, v0, Lcom/appbrain/a/d;->k:Z

    iget-object v4, v0, Lcom/appbrain/a/d;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/appbrain/a/b$c;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/appbrain/a/d;->f:Ljava/lang/String;

    iget v7, v0, Lcom/appbrain/a/d;->j:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/appbrain/a/h0$b;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1, v1, v8}, Lcom/appbrain/a/h0;->d(Landroid/app/Activity;Ljava/lang/String;Lcom/appbrain/a/h0$b;)V

    iget-object p1, p0, Lcom/appbrain/a/b$c;->b:Lcom/appbrain/a/d;

    iget-boolean p1, p1, Lcom/appbrain/a/d;->k:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/appbrain/a/n0;->b()Lcom/appbrain/a/n0;

    move-result-object p1

    iget-object v0, p0, Lcom/appbrain/a/b$c;->b:Lcom/appbrain/a/d;

    iget-object v1, v0, Lcom/appbrain/a/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/appbrain/a/b$c;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/appbrain/a/d;->f:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/appbrain/a/n0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/appbrain/a/b$c;->d:Lcom/appbrain/a/b;

    invoke-virtual {p1}, Lcom/appbrain/a/j1;->n()I

    move-result p1

    sget-object v0, Lcom/appbrain/a/k1$e;->e:Lcom/appbrain/a/k1$e;

    invoke-static {p1, v0}, Lcom/appbrain/a/k1;->c(ILcom/appbrain/a/k1$e;)V

    iget-object p1, p0, Lcom/appbrain/a/b$c;->d:Lcom/appbrain/a/b;

    invoke-virtual {p1}, Lcom/appbrain/a/j1;->q()V

    return-void
.end method

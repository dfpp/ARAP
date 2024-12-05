.class final Lcom/appbrain/a/i0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/i0;->a(II)Lcom/appbrain/a/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/b;

.field final synthetic c:I

.field final synthetic d:Lcom/appbrain/a/i0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/i0;Lcom/appbrain/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/i0$a;->d:Lcom/appbrain/a/i0;

    iput-object p2, p0, Lcom/appbrain/a/i0$a;->b:Lcom/appbrain/b;

    iput p3, p0, Lcom/appbrain/a/i0$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/appbrain/c;

    invoke-direct {p1}, Lcom/appbrain/c;-><init>()V

    iget-object v0, p0, Lcom/appbrain/a/i0$a;->b:Lcom/appbrain/b;

    invoke-virtual {p1, v0}, Lcom/appbrain/c;->g(Lcom/appbrain/b;)V

    iget-object v0, p0, Lcom/appbrain/a/i0$a;->d:Lcom/appbrain/a/i0;

    invoke-static {v0}, Lcom/appbrain/a/i0;->c(Lcom/appbrain/a/i0;)Lcom/appbrain/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appbrain/a/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appbrain/c;->h(Ljava/lang/String;)Lcom/appbrain/c;

    new-instance v0, Lcom/appbrain/a/m1$b;

    new-instance v1, Lcom/appbrain/a/w;

    invoke-direct {v1, p1}, Lcom/appbrain/a/w;-><init>(Lcom/appbrain/c;)V

    sget-object p1, Lcom/appbrain/t/t;->g:Lcom/appbrain/t/t;

    invoke-direct {v0, v1, p1}, Lcom/appbrain/a/m1$b;-><init>(Lcom/appbrain/a/w;Lcom/appbrain/t/t;)V

    iget p1, p0, Lcom/appbrain/a/i0$a;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/appbrain/a/m1$b;->d:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/appbrain/a/m1$b;->e:Z

    iget-object p1, p0, Lcom/appbrain/a/i0$a;->d:Lcom/appbrain/a/i0;

    invoke-static {p1}, Lcom/appbrain/a/i0;->e(Lcom/appbrain/a/i0;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/o/j;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/appbrain/a/m1;->i(Landroid/app/Activity;Lcom/appbrain/a/m1$b;)V

    iget-object p1, p0, Lcom/appbrain/a/i0$a;->d:Lcom/appbrain/a/i0;

    invoke-static {p1}, Lcom/appbrain/a/i0;->c(Lcom/appbrain/a/i0;)Lcom/appbrain/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appbrain/a/e;->c()V

    return-void
.end method

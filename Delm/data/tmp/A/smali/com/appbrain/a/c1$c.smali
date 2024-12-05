.class final Lcom/appbrain/a/c1$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/t/u;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/appbrain/t/u;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/c1$c;->b:Lcom/appbrain/t/u;

    iput-object p2, p0, Lcom/appbrain/a/c1$c;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/appbrain/a/c1$c;->b:Lcom/appbrain/t/u;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/appbrain/a/c1;->d(Lcom/appbrain/t/u;Z)V

    iget-object p1, p0, Lcom/appbrain/a/c1$c;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/appbrain/a/c1$c;->b:Lcom/appbrain/t/u;

    invoke-virtual {v0}, Lcom/appbrain/t/u;->a0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/c1$c;->b:Lcom/appbrain/t/u;

    invoke-virtual {v1}, Lcom/appbrain/t/u;->b0()Lcom/appbrain/t/u$a;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/appbrain/a/d1;->c(Landroid/app/Activity;Ljava/lang/String;Lcom/appbrain/t/u$a;)V

    return-void
.end method

.class final Lcom/appbrain/a/z0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/z0;
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

    iput-object p1, p0, Lcom/appbrain/a/z0$c;->b:Lcom/appbrain/t/u;

    iput-object p2, p0, Lcom/appbrain/a/z0$c;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/appbrain/a/z0$c;->b:Lcom/appbrain/t/u;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/appbrain/a/b1;->d(Lcom/appbrain/t/u;Z)V

    iget-object p1, p0, Lcom/appbrain/a/z0$c;->c:Landroid/app/Activity;

    iget-object p2, p0, Lcom/appbrain/a/z0$c;->b:Lcom/appbrain/t/u;

    invoke-virtual {p2}, Lcom/appbrain/t/u;->a0()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/appbrain/a/z0$c;->b:Lcom/appbrain/t/u;

    invoke-virtual {v0}, Lcom/appbrain/t/u;->b0()Lcom/appbrain/t/u$a;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/appbrain/a/d1;->c(Landroid/app/Activity;Ljava/lang/String;Lcom/appbrain/t/u$a;)V

    return-void
.end method

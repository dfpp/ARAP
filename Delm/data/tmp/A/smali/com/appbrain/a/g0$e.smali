.class final Lcom/appbrain/a/g0$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/a/g0;->x(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/appbrain/a/g0;


# direct methods
.method constructor <init>(Lcom/appbrain/a/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/a/g0$e;->b:Lcom/appbrain/a/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/appbrain/a/g0$e;->b:Lcom/appbrain/a/g0;

    invoke-static {v0}, Lcom/appbrain/a/g0;->E(Lcom/appbrain/a/g0;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/appbrain/a/g0$e;->b:Lcom/appbrain/a/g0;

    invoke-static {v1}, Lcom/appbrain/a/g0;->D(Lcom/appbrain/a/g0;)Lcom/appbrain/o/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/o/h;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appbrain/a/g0$e;->b:Lcom/appbrain/a/g0;

    invoke-static {v0}, Lcom/appbrain/a/g0;->G(Lcom/appbrain/a/g0;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/appbrain/a/g0$e$a;

    invoke-direct {v1, p0}, Lcom/appbrain/a/g0$e$a;-><init>(Lcom/appbrain/a/g0$e;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/appbrain/a/g0$e;->b:Lcom/appbrain/a/g0;

    invoke-static {v0}, Lcom/appbrain/a/g0;->H(Lcom/appbrain/a/g0;)Ljava/util/List;

    iget-object v0, p0, Lcom/appbrain/a/g0$e;->b:Lcom/appbrain/a/g0;

    invoke-static {v0}, Lcom/appbrain/a/g0;->C(Lcom/appbrain/a/g0;)J

    return-void
.end method

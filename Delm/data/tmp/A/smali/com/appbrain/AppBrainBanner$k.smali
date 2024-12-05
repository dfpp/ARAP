.class final Lcom/appbrain/AppBrainBanner$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/AppBrainBanner;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/appbrain/AppBrainBanner;


# direct methods
.method constructor <init>(Lcom/appbrain/AppBrainBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/AppBrainBanner$k;->a:Lcom/appbrain/AppBrainBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$k;->a:Lcom/appbrain/AppBrainBanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appbrain/AppBrainBanner;->h(Lcom/appbrain/AppBrainBanner;Z)Z

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$k;->a:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->i(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/f1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$k;->a:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->i(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/f1;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/a/f1;->b()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$k;->a:Lcom/appbrain/AppBrainBanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appbrain/AppBrainBanner;->h(Lcom/appbrain/AppBrainBanner;Z)Z

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$k;->a:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->i(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/f1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$k;->a:Lcom/appbrain/AppBrainBanner;

    invoke-static {v0}, Lcom/appbrain/AppBrainBanner;->i(Lcom/appbrain/AppBrainBanner;)Lcom/appbrain/a/f1;

    move-result-object v0

    invoke-interface {v0}, Lcom/appbrain/a/f1;->c()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

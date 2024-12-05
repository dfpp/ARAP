.class final Lcom/appbrain/AppBrainBanner$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appbrain/AppBrainBanner;->setAllowedToUseMediation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/appbrain/AppBrainBanner;


# direct methods
.method constructor <init>(Lcom/appbrain/AppBrainBanner;Z)V
    .locals 0

    iput-object p1, p0, Lcom/appbrain/AppBrainBanner$g;->c:Lcom/appbrain/AppBrainBanner;

    iput-boolean p2, p0, Lcom/appbrain/AppBrainBanner$g;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/AppBrainBanner$g;->c:Lcom/appbrain/AppBrainBanner;

    iget-boolean v1, p0, Lcom/appbrain/AppBrainBanner$g;->b:Z

    invoke-static {v0, v1}, Lcom/appbrain/AppBrainBanner;->e(Lcom/appbrain/AppBrainBanner;Z)Z

    return-void
.end method

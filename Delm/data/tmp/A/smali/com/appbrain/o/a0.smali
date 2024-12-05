.class public Lcom/appbrain/o/a0;
.super Lcom/appbrain/o/z;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/o/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final l(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    invoke-super {p0, p1}, Lcom/appbrain/o/v;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final n()I
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

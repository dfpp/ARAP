.class public Lcom/appbrain/o/c0;
.super Lcom/appbrain/o/b0;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/o/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public final o(Landroid/content/Context;)I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    aget-object v2, v1, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/view/Display;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_0

    aget-object v2, v1, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/Display;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v2, v1, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    goto :goto_2

    :catchall_0
    move-exception v1

    const-string v2, "Problem getting screenflags"

    invoke-static {v2, v1}, Lcom/appbrain/o/i;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    shl-int/lit8 v0, v0, 0x2

    invoke-super {p0, p1}, Lcom/appbrain/o/v;->o(Landroid/content/Context;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

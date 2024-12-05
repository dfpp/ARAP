.class public final Lcom/appbrain/o/p0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:F = 1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(F)F
    .locals 1

    sget v0, Lcom/appbrain/o/p0;->a:F

    mul-float p0, p0, v0

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/appbrain/o/p0;->a:F

    :cond_0
    return-void
.end method

.method public static c(F)I
    .locals 3

    sget v0, Lcom/appbrain/o/p0;->a:F

    mul-float v0, v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmpg-float p0, p0, v1

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    return v0
.end method

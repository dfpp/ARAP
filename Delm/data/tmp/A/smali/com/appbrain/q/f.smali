.class public final Lcom/appbrain/q/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/q/f$a;,
        Lcom/appbrain/q/f$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static b(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static c(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method

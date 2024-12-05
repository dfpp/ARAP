.class public final Lcom/appbrain/o/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/appbrain/o/m;->a:Ljava/util/Random;

    return-void
.end method

.method public static a(I)I
    .locals 1

    sget-object v0, Lcom/appbrain/o/m;->a:Ljava/util/Random;

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcom/appbrain/o/m;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

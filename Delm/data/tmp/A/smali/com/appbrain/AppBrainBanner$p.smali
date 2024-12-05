.class public final enum Lcom/appbrain/AppBrainBanner$p;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/AppBrainBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "p"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/AppBrainBanner$p;

.field public static final enum c:Lcom/appbrain/AppBrainBanner$p;

.field public static final enum d:Lcom/appbrain/AppBrainBanner$p;

.field public static final enum e:Lcom/appbrain/AppBrainBanner$p;

.field private static final synthetic f:[Lcom/appbrain/AppBrainBanner$p;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/appbrain/AppBrainBanner$p;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/AppBrainBanner$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/AppBrainBanner$p;->b:Lcom/appbrain/AppBrainBanner$p;

    new-instance v0, Lcom/appbrain/AppBrainBanner$p;

    const-string v1, "LARGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appbrain/AppBrainBanner$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/AppBrainBanner$p;->c:Lcom/appbrain/AppBrainBanner$p;

    new-instance v0, Lcom/appbrain/AppBrainBanner$p;

    const-string v1, "RESPONSIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appbrain/AppBrainBanner$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/AppBrainBanner$p;->d:Lcom/appbrain/AppBrainBanner$p;

    new-instance v0, Lcom/appbrain/AppBrainBanner$p;

    const-string v1, "MATCH_PARENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/appbrain/AppBrainBanner$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/AppBrainBanner$p;->e:Lcom/appbrain/AppBrainBanner$p;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/appbrain/AppBrainBanner$p;

    sget-object v6, Lcom/appbrain/AppBrainBanner$p;->b:Lcom/appbrain/AppBrainBanner$p;

    aput-object v6, v1, v2

    sget-object v2, Lcom/appbrain/AppBrainBanner$p;->c:Lcom/appbrain/AppBrainBanner$p;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/AppBrainBanner$p;->d:Lcom/appbrain/AppBrainBanner$p;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/appbrain/AppBrainBanner$p;->f:[Lcom/appbrain/AppBrainBanner$p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/AppBrainBanner$p;
    .locals 1

    const-class v0, Lcom/appbrain/AppBrainBanner$p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/AppBrainBanner$p;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/AppBrainBanner$p;
    .locals 1

    sget-object v0, Lcom/appbrain/AppBrainBanner$p;->f:[Lcom/appbrain/AppBrainBanner$p;

    invoke-virtual {v0}, [Lcom/appbrain/AppBrainBanner$p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/AppBrainBanner$p;

    return-object v0
.end method

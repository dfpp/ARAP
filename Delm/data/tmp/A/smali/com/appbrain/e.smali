.class public final enum Lcom/appbrain/e;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum b:Lcom/appbrain/e;

.field public static final enum c:Lcom/appbrain/e;

.field public static final enum d:Lcom/appbrain/e;

.field private static final synthetic e:[Lcom/appbrain/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/appbrain/e;

    const-string v1, "FROM_DASHBOARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/e;->b:Lcom/appbrain/e;

    new-instance v0, Lcom/appbrain/e;

    const-string v1, "OFF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appbrain/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/e;->c:Lcom/appbrain/e;

    new-instance v0, Lcom/appbrain/e;

    const-string v1, "ON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appbrain/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/e;->d:Lcom/appbrain/e;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appbrain/e;

    sget-object v5, Lcom/appbrain/e;->b:Lcom/appbrain/e;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appbrain/e;->c:Lcom/appbrain/e;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appbrain/e;->e:[Lcom/appbrain/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/e;
    .locals 1

    const-class v0, Lcom/appbrain/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/e;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/e;
    .locals 1

    sget-object v0, Lcom/appbrain/e;->e:[Lcom/appbrain/e;

    invoke-virtual {v0}, [Lcom/appbrain/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/e;

    return-object v0
.end method

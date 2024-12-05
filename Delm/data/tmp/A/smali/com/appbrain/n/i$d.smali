.class final enum Lcom/appbrain/n/i$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/n/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "d"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/n/i$d;

.field public static final enum c:Lcom/appbrain/n/i$d;

.field public static final enum d:Lcom/appbrain/n/i$d;

.field public static final enum e:Lcom/appbrain/n/i$d;

.field private static final synthetic f:[Lcom/appbrain/n/i$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/appbrain/n/i$d;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/n/i$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/n/i$d;->b:Lcom/appbrain/n/i$d;

    new-instance v0, Lcom/appbrain/n/i$d;

    const-string v1, "LOADED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appbrain/n/i$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/n/i$d;->c:Lcom/appbrain/n/i$d;

    new-instance v0, Lcom/appbrain/n/i$d;

    const-string v1, "SEND_SOON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appbrain/n/i$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/n/i$d;->d:Lcom/appbrain/n/i$d;

    new-instance v0, Lcom/appbrain/n/i$d;

    const-string v1, "SEND_NOW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/appbrain/n/i$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/n/i$d;->e:Lcom/appbrain/n/i$d;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/appbrain/n/i$d;

    sget-object v6, Lcom/appbrain/n/i$d;->b:Lcom/appbrain/n/i$d;

    aput-object v6, v1, v2

    sget-object v2, Lcom/appbrain/n/i$d;->c:Lcom/appbrain/n/i$d;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/n/i$d;->d:Lcom/appbrain/n/i$d;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/appbrain/n/i$d;->f:[Lcom/appbrain/n/i$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/n/i$d;
    .locals 1

    const-class v0, Lcom/appbrain/n/i$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/n/i$d;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/n/i$d;
    .locals 1

    sget-object v0, Lcom/appbrain/n/i$d;->f:[Lcom/appbrain/n/i$d;

    invoke-virtual {v0}, [Lcom/appbrain/n/i$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/n/i$d;

    return-object v0
.end method

.class public final enum Lcom/appbrain/t/q$e;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/appbrain/q/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/t/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/t/q$e;

.field public static final enum c:Lcom/appbrain/t/q$e;

.field public static final enum d:Lcom/appbrain/t/q$e;

.field private static final synthetic e:[Lcom/appbrain/t/q$e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/appbrain/t/q$e;

    const-string v1, "USER_COMEBACK_PARAMS"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/appbrain/t/q$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/q$e;->b:Lcom/appbrain/t/q$e;

    new-instance v0, Lcom/appbrain/t/q$e;

    const-string v1, "ACTIVITY_STARTED_PARAMS"

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-direct {v0, v1, v4, v5}, Lcom/appbrain/t/q$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/q$e;->c:Lcom/appbrain/t/q$e;

    new-instance v0, Lcom/appbrain/t/q$e;

    const-string v1, "PARAMS_NOT_SET"

    invoke-direct {v0, v1, v3, v2}, Lcom/appbrain/t/q$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/q$e;->d:Lcom/appbrain/t/q$e;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appbrain/t/q$e;

    sget-object v5, Lcom/appbrain/t/q$e;->b:Lcom/appbrain/t/q$e;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appbrain/t/q$e;->c:Lcom/appbrain/t/q$e;

    aput-object v2, v1, v4

    aput-object v0, v1, v3

    sput-object v1, Lcom/appbrain/t/q$e;->e:[Lcom/appbrain/t/q$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/t/q$e;
    .locals 1

    const-class v0, Lcom/appbrain/t/q$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/t/q$e;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/t/q$e;
    .locals 1

    sget-object v0, Lcom/appbrain/t/q$e;->e:[Lcom/appbrain/t/q$e;

    invoke-virtual {v0}, [Lcom/appbrain/t/q$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/t/q$e;

    return-object v0
.end method

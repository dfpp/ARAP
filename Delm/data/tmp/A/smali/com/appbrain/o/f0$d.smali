.class final enum Lcom/appbrain/o/f0$d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "d"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/o/f0$d;

.field public static final enum c:Lcom/appbrain/o/f0$d;

.field public static final enum d:Lcom/appbrain/o/f0$d;

.field private static final synthetic e:[Lcom/appbrain/o/f0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/appbrain/o/f0$d;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/o/f0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/o/f0$d;->b:Lcom/appbrain/o/f0$d;

    new-instance v0, Lcom/appbrain/o/f0$d;

    const-string v1, "INITIALIZING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appbrain/o/f0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/o/f0$d;->c:Lcom/appbrain/o/f0$d;

    new-instance v0, Lcom/appbrain/o/f0$d;

    const-string v1, "INITIALIZED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appbrain/o/f0$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/o/f0$d;->d:Lcom/appbrain/o/f0$d;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appbrain/o/f0$d;

    sget-object v5, Lcom/appbrain/o/f0$d;->b:Lcom/appbrain/o/f0$d;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appbrain/o/f0$d;->c:Lcom/appbrain/o/f0$d;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appbrain/o/f0$d;->e:[Lcom/appbrain/o/f0$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/o/f0$d;
    .locals 1

    const-class v0, Lcom/appbrain/o/f0$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/o/f0$d;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/o/f0$d;
    .locals 1

    sget-object v0, Lcom/appbrain/o/f0$d;->e:[Lcom/appbrain/o/f0$d;

    invoke-virtual {v0}, [Lcom/appbrain/o/f0$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/o/f0$d;

    return-object v0
.end method

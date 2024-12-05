.class public final enum Lcom/appbrain/c$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/c$b;

.field public static final enum c:Lcom/appbrain/c$b;

.field public static final enum d:Lcom/appbrain/c$b;

.field private static final synthetic e:[Lcom/appbrain/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/appbrain/c$b;

    const-string v1, "SMART"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/c$b;->b:Lcom/appbrain/c$b;

    new-instance v0, Lcom/appbrain/c$b;

    const-string v1, "LIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appbrain/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/c$b;->c:Lcom/appbrain/c$b;

    new-instance v0, Lcom/appbrain/c$b;

    const-string v1, "DARK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appbrain/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/c$b;->d:Lcom/appbrain/c$b;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appbrain/c$b;

    sget-object v5, Lcom/appbrain/c$b;->b:Lcom/appbrain/c$b;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appbrain/c$b;->c:Lcom/appbrain/c$b;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appbrain/c$b;->e:[Lcom/appbrain/c$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/c$b;
    .locals 1

    const-class v0, Lcom/appbrain/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/c$b;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/c$b;
    .locals 1

    sget-object v0, Lcom/appbrain/c$b;->e:[Lcom/appbrain/c$b;

    invoke-virtual {v0}, [Lcom/appbrain/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/c$b;

    return-object v0
.end method

.class public final enum Lcom/appbrain/c$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/c$c;

.field public static final enum c:Lcom/appbrain/c$c;

.field public static final enum d:Lcom/appbrain/c$c;

.field private static final synthetic e:[Lcom/appbrain/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/appbrain/c$c;

    const-string v1, "SMART"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/c$c;->b:Lcom/appbrain/c$c;

    new-instance v0, Lcom/appbrain/c$c;

    const-string v1, "MORE_APPS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appbrain/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/c$c;->c:Lcom/appbrain/c$c;

    new-instance v0, Lcom/appbrain/c$c;

    const-string v1, "SINGLE_APP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appbrain/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/c$c;->d:Lcom/appbrain/c$c;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appbrain/c$c;

    sget-object v5, Lcom/appbrain/c$c;->b:Lcom/appbrain/c$c;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appbrain/c$c;->c:Lcom/appbrain/c$c;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appbrain/c$c;->e:[Lcom/appbrain/c$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/c$c;
    .locals 1

    const-class v0, Lcom/appbrain/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/c$c;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/c$c;
    .locals 1

    sget-object v0, Lcom/appbrain/c$c;->e:[Lcom/appbrain/c$c;

    invoke-virtual {v0}, [Lcom/appbrain/c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/c$c;

    return-object v0
.end method

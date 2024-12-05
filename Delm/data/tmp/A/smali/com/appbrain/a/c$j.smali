.class final enum Lcom/appbrain/a/c$j;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "j"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/a/c$j;

.field public static final enum c:Lcom/appbrain/a/c$j;

.field public static final enum d:Lcom/appbrain/a/c$j;

.field public static final enum e:Lcom/appbrain/a/c$j;

.field private static final synthetic f:[Lcom/appbrain/a/c$j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/appbrain/a/c$j;

    const-string v1, "STARTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/a/c$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/a/c$j;->b:Lcom/appbrain/a/c$j;

    new-instance v0, Lcom/appbrain/a/c$j;

    const-string v1, "SHOWN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appbrain/a/c$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/a/c$j;->c:Lcom/appbrain/a/c$j;

    new-instance v0, Lcom/appbrain/a/c$j;

    const-string v1, "IMPRESSION_SENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appbrain/a/c$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/a/c$j;->d:Lcom/appbrain/a/c$j;

    new-instance v0, Lcom/appbrain/a/c$j;

    const-string v1, "NO_TRACKING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/appbrain/a/c$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/a/c$j;->e:Lcom/appbrain/a/c$j;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/appbrain/a/c$j;

    sget-object v6, Lcom/appbrain/a/c$j;->b:Lcom/appbrain/a/c$j;

    aput-object v6, v1, v2

    sget-object v2, Lcom/appbrain/a/c$j;->c:Lcom/appbrain/a/c$j;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/a/c$j;->d:Lcom/appbrain/a/c$j;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/appbrain/a/c$j;->f:[Lcom/appbrain/a/c$j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/a/c$j;
    .locals 1

    const-class v0, Lcom/appbrain/a/c$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/a/c$j;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/a/c$j;
    .locals 1

    sget-object v0, Lcom/appbrain/a/c$j;->f:[Lcom/appbrain/a/c$j;

    invoke-virtual {v0}, [Lcom/appbrain/a/c$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/a/c$j;

    return-object v0
.end method

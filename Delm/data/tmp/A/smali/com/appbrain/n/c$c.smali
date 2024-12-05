.class final enum Lcom/appbrain/n/c$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/n/c$c;

.field public static final enum c:Lcom/appbrain/n/c$c;

.field public static final enum d:Lcom/appbrain/n/c$c;

.field public static final enum e:Lcom/appbrain/n/c$c;

.field public static final enum f:Lcom/appbrain/n/c$c;

.field public static final enum g:Lcom/appbrain/n/c$c;

.field private static final synthetic h:[Lcom/appbrain/n/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/appbrain/n/c$c;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/n/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/n/c$c;->b:Lcom/appbrain/n/c$c;

    new-instance v0, Lcom/appbrain/n/c$c;

    const-string v1, "LOADING_TIMEOUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appbrain/n/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/n/c$c;->c:Lcom/appbrain/n/c$c;

    new-instance v0, Lcom/appbrain/n/c$c;

    const-string v1, "LOADED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appbrain/n/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/n/c$c;->d:Lcom/appbrain/n/c$c;

    new-instance v0, Lcom/appbrain/n/c$c;

    const-string v1, "OPENING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/appbrain/n/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/n/c$c;->e:Lcom/appbrain/n/c$c;

    new-instance v0, Lcom/appbrain/n/c$c;

    const-string v1, "OPENED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/appbrain/n/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/n/c$c;->f:Lcom/appbrain/n/c$c;

    new-instance v0, Lcom/appbrain/n/c$c;

    const-string v1, "DESTROYED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/appbrain/n/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/n/c$c;->g:Lcom/appbrain/n/c$c;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/appbrain/n/c$c;

    sget-object v8, Lcom/appbrain/n/c$c;->b:Lcom/appbrain/n/c$c;

    aput-object v8, v1, v2

    sget-object v2, Lcom/appbrain/n/c$c;->c:Lcom/appbrain/n/c$c;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/n/c$c;->d:Lcom/appbrain/n/c$c;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appbrain/n/c$c;->e:Lcom/appbrain/n/c$c;

    aput-object v2, v1, v5

    sget-object v2, Lcom/appbrain/n/c$c;->f:Lcom/appbrain/n/c$c;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/appbrain/n/c$c;->h:[Lcom/appbrain/n/c$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/n/c$c;
    .locals 1

    const-class v0, Lcom/appbrain/n/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/n/c$c;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/n/c$c;
    .locals 1

    sget-object v0, Lcom/appbrain/n/c$c;->h:[Lcom/appbrain/n/c$c;

    invoke-virtual {v0}, [Lcom/appbrain/n/c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/n/c$c;

    return-object v0
.end method

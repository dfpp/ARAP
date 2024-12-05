.class public final enum Lcom/appbrain/o/s0$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum c:Lcom/appbrain/o/s0$a;

.field public static final enum d:Lcom/appbrain/o/s0$a;

.field public static final enum e:Lcom/appbrain/o/s0$a;

.field public static final enum f:Lcom/appbrain/o/s0$a;

.field public static final enum g:Lcom/appbrain/o/s0$a;

.field public static final enum h:Lcom/appbrain/o/s0$a;

.field public static final enum i:Lcom/appbrain/o/s0$a;

.field public static final enum j:Lcom/appbrain/o/s0$a;

.field private static final synthetic k:[Lcom/appbrain/o/s0$a;


# instance fields
.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/appbrain/o/s0$a;

    const-string v1, "STOPPED_PREFS_FIRE_ON_UI_THREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/appbrain/o/s0$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/appbrain/o/s0$a;->c:Lcom/appbrain/o/s0$a;

    new-instance v0, Lcom/appbrain/o/s0$a;

    const-string v1, "STOPPED_USER_AGENT_METHOD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/appbrain/o/s0$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/appbrain/o/s0$a;->d:Lcom/appbrain/o/s0$a;

    new-instance v0, Lcom/appbrain/o/s0$a;

    const-string v1, "STOPPED_FETCH_APPS_THREADING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/appbrain/o/s0$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/appbrain/o/s0$a;->e:Lcom/appbrain/o/s0$a;

    new-instance v0, Lcom/appbrain/o/s0$a;

    const-string v1, "STOPPED_SKIP_QUERY_INTENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/appbrain/o/s0$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/appbrain/o/s0$a;->f:Lcom/appbrain/o/s0$a;

    new-instance v0, Lcom/appbrain/o/s0$a;

    const-string v1, "STOPPED_CHECK_IMPRESSION_METHOD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v2}, Lcom/appbrain/o/s0$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/appbrain/o/s0$a;->g:Lcom/appbrain/o/s0$a;

    new-instance v0, Lcom/appbrain/o/s0$a;

    const-string v1, "CHECK_WAIT_TIME"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/appbrain/o/s0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/o/s0$a;->h:Lcom/appbrain/o/s0$a;

    new-instance v0, Lcom/appbrain/o/s0$a;

    const-string v1, "CHECK_IMPRESSION_METHOD2"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/appbrain/o/s0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/o/s0$a;->i:Lcom/appbrain/o/s0$a;

    new-instance v0, Lcom/appbrain/o/s0$a;

    const-string v1, "ASYNC_HANDLER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/appbrain/o/s0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/o/s0$a;->j:Lcom/appbrain/o/s0$a;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/appbrain/o/s0$a;

    sget-object v10, Lcom/appbrain/o/s0$a;->c:Lcom/appbrain/o/s0$a;

    aput-object v10, v1, v2

    sget-object v2, Lcom/appbrain/o/s0$a;->d:Lcom/appbrain/o/s0$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/o/s0$a;->e:Lcom/appbrain/o/s0$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appbrain/o/s0$a;->f:Lcom/appbrain/o/s0$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/appbrain/o/s0$a;->g:Lcom/appbrain/o/s0$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/appbrain/o/s0$a;->h:Lcom/appbrain/o/s0$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/appbrain/o/s0$a;->i:Lcom/appbrain/o/s0$a;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/appbrain/o/s0$a;->k:[Lcom/appbrain/o/s0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/appbrain/o/s0$a;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/appbrain/o/s0$a;->b:Z

    return-void
.end method

.method static synthetic c(Lcom/appbrain/o/s0$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/appbrain/o/s0$a;->b:Z

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/o/s0$a;
    .locals 1

    const-class v0, Lcom/appbrain/o/s0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/o/s0$a;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/o/s0$a;
    .locals 1

    sget-object v0, Lcom/appbrain/o/s0$a;->k:[Lcom/appbrain/o/s0$a;

    invoke-virtual {v0}, [Lcom/appbrain/o/s0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/o/s0$a;

    return-object v0
.end method

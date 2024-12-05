.class final enum Lcom/appbrain/a/x$f;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "f"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/a/x$f;

.field public static final enum c:Lcom/appbrain/a/x$f;

.field public static final enum d:Lcom/appbrain/a/x$f;

.field public static final enum e:Lcom/appbrain/a/x$f;

.field public static final enum f:Lcom/appbrain/a/x$f;

.field public static final enum g:Lcom/appbrain/a/x$f;

.field public static final enum h:Lcom/appbrain/a/x$f;

.field private static final synthetic i:[Lcom/appbrain/a/x$f;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/appbrain/a/x$f;

    const-string v1, "CLOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/a/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/a/x$f;->b:Lcom/appbrain/a/x$f;

    new-instance v0, Lcom/appbrain/a/x$f;

    const-string v1, "PRELOADING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appbrain/a/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/a/x$f;->c:Lcom/appbrain/a/x$f;

    new-instance v0, Lcom/appbrain/a/x$f;

    const-string v1, "PRELOADED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appbrain/a/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/a/x$f;->d:Lcom/appbrain/a/x$f;

    new-instance v0, Lcom/appbrain/a/x$f;

    const-string v1, "PRELOAD_SCHEDULED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/appbrain/a/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/a/x$f;->e:Lcom/appbrain/a/x$f;

    new-instance v0, Lcom/appbrain/a/x$f;

    const-string v1, "SHOWING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/appbrain/a/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/a/x$f;->f:Lcom/appbrain/a/x$f;

    new-instance v0, Lcom/appbrain/a/x$f;

    const-string v1, "SHOWING_WITHOUT_PRELOAD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/appbrain/a/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/a/x$f;->g:Lcom/appbrain/a/x$f;

    new-instance v0, Lcom/appbrain/a/x$f;

    const-string v1, "SHOWING_WITH_PENDING_PRELOAD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/appbrain/a/x$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/a/x$f;->h:Lcom/appbrain/a/x$f;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/appbrain/a/x$f;

    sget-object v9, Lcom/appbrain/a/x$f;->b:Lcom/appbrain/a/x$f;

    aput-object v9, v1, v2

    sget-object v2, Lcom/appbrain/a/x$f;->c:Lcom/appbrain/a/x$f;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/a/x$f;->d:Lcom/appbrain/a/x$f;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appbrain/a/x$f;->e:Lcom/appbrain/a/x$f;

    aput-object v2, v1, v5

    sget-object v2, Lcom/appbrain/a/x$f;->f:Lcom/appbrain/a/x$f;

    aput-object v2, v1, v6

    sget-object v2, Lcom/appbrain/a/x$f;->g:Lcom/appbrain/a/x$f;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/appbrain/a/x$f;->i:[Lcom/appbrain/a/x$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/a/x$f;
    .locals 1

    const-class v0, Lcom/appbrain/a/x$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/a/x$f;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/a/x$f;
    .locals 1

    sget-object v0, Lcom/appbrain/a/x$f;->i:[Lcom/appbrain/a/x$f;

    invoke-virtual {v0}, [Lcom/appbrain/a/x$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/a/x$f;

    return-object v0
.end method

.class public final enum Lcom/appbrain/p/f;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/appbrain/q/s$a;


# static fields
.field public static final enum c:Lcom/appbrain/p/f;

.field public static final enum d:Lcom/appbrain/p/f;

.field public static final enum e:Lcom/appbrain/p/f;

.field public static final enum f:Lcom/appbrain/p/f;

.field public static final enum g:Lcom/appbrain/p/f;

.field public static final enum h:Lcom/appbrain/p/f;

.field private static final synthetic i:[Lcom/appbrain/p/f;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/appbrain/p/f;

    const-string v1, "SHOWN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/appbrain/p/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/p/f;->c:Lcom/appbrain/p/f;

    new-instance v0, Lcom/appbrain/p/f;

    const-string v1, "ADAPTER_NOT_FOUND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/appbrain/p/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/p/f;->d:Lcom/appbrain/p/f;

    new-instance v0, Lcom/appbrain/p/f;

    const-string v1, "NO_FILL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/appbrain/p/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/p/f;->e:Lcom/appbrain/p/f;

    new-instance v0, Lcom/appbrain/p/f;

    const-string v1, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/appbrain/p/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/p/f;->f:Lcom/appbrain/p/f;

    new-instance v0, Lcom/appbrain/p/f;

    const-string v1, "TIMEOUT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/appbrain/p/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/p/f;->g:Lcom/appbrain/p/f;

    new-instance v0, Lcom/appbrain/p/f;

    const-string v1, "LOADED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/appbrain/p/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/p/f;->h:Lcom/appbrain/p/f;

    new-array v1, v8, [Lcom/appbrain/p/f;

    sget-object v8, Lcom/appbrain/p/f;->c:Lcom/appbrain/p/f;

    aput-object v8, v1, v2

    sget-object v2, Lcom/appbrain/p/f;->d:Lcom/appbrain/p/f;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/p/f;->e:Lcom/appbrain/p/f;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appbrain/p/f;->f:Lcom/appbrain/p/f;

    aput-object v2, v1, v5

    sget-object v2, Lcom/appbrain/p/f;->g:Lcom/appbrain/p/f;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/appbrain/p/f;->i:[Lcom/appbrain/p/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appbrain/p/f;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/p/f;
    .locals 1

    const-class v0, Lcom/appbrain/p/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/p/f;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/p/f;
    .locals 1

    sget-object v0, Lcom/appbrain/p/f;->i:[Lcom/appbrain/p/f;

    invoke-virtual {v0}, [Lcom/appbrain/p/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/p/f;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lcom/appbrain/p/f;->b:I

    return v0
.end method

.class public final enum Lcom/appbrain/n/h;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum c:Lcom/appbrain/n/h;

.field public static final enum d:Lcom/appbrain/n/h;

.field public static final enum e:Lcom/appbrain/n/h;

.field public static final enum f:Lcom/appbrain/n/h;

.field private static final synthetic g:[Lcom/appbrain/n/h;


# instance fields
.field private final b:Lcom/appbrain/p/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/appbrain/n/h;

    sget-object v1, Lcom/appbrain/p/f;->d:Lcom/appbrain/p/f;

    const-string v2, "ADAPTER_NOT_FOUND"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/appbrain/n/h;-><init>(Ljava/lang/String;ILcom/appbrain/p/f;)V

    sput-object v0, Lcom/appbrain/n/h;->c:Lcom/appbrain/n/h;

    new-instance v0, Lcom/appbrain/n/h;

    sget-object v1, Lcom/appbrain/p/f;->e:Lcom/appbrain/p/f;

    const-string v2, "NO_FILL"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/appbrain/n/h;-><init>(Ljava/lang/String;ILcom/appbrain/p/f;)V

    sput-object v0, Lcom/appbrain/n/h;->d:Lcom/appbrain/n/h;

    new-instance v0, Lcom/appbrain/n/h;

    sget-object v1, Lcom/appbrain/p/f;->f:Lcom/appbrain/p/f;

    const-string v2, "ERROR"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lcom/appbrain/n/h;-><init>(Ljava/lang/String;ILcom/appbrain/p/f;)V

    sput-object v0, Lcom/appbrain/n/h;->e:Lcom/appbrain/n/h;

    new-instance v0, Lcom/appbrain/n/h;

    sget-object v1, Lcom/appbrain/p/f;->g:Lcom/appbrain/p/f;

    const-string v2, "TIMEOUT"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lcom/appbrain/n/h;-><init>(Ljava/lang/String;ILcom/appbrain/p/f;)V

    sput-object v0, Lcom/appbrain/n/h;->f:Lcom/appbrain/n/h;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/appbrain/n/h;

    sget-object v2, Lcom/appbrain/n/h;->c:Lcom/appbrain/n/h;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/n/h;->d:Lcom/appbrain/n/h;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appbrain/n/h;->e:Lcom/appbrain/n/h;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/appbrain/n/h;->g:[Lcom/appbrain/n/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/appbrain/p/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appbrain/n/h;->b:Lcom/appbrain/p/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/n/h;
    .locals 1

    const-class v0, Lcom/appbrain/n/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/n/h;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/n/h;
    .locals 1

    sget-object v0, Lcom/appbrain/n/h;->g:[Lcom/appbrain/n/h;

    invoke-virtual {v0}, [Lcom/appbrain/n/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/n/h;

    return-object v0
.end method


# virtual methods
.method final c()Lcom/appbrain/p/f;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/n/h;->b:Lcom/appbrain/p/f;

    return-object v0
.end method

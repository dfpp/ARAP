.class public final enum Lcom/appbrain/v/c;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/appbrain/q/s$a;


# static fields
.field public static final enum c:Lcom/appbrain/v/c;

.field private static final synthetic d:[Lcom/appbrain/v/c;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/appbrain/v/c;

    const-string v1, "INTEGRITY_ONLY"

    invoke-direct {v0, v1}, Lcom/appbrain/v/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/appbrain/v/c;->c:Lcom/appbrain/v/c;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/appbrain/v/c;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/appbrain/v/c;->d:[Lcom/appbrain/v/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/appbrain/v/c;->b:I

    return-void
.end method

.method public static d(I)Lcom/appbrain/v/c;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/appbrain/v/c;->c:Lcom/appbrain/v/c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/v/c;
    .locals 1

    const-class v0, Lcom/appbrain/v/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/v/c;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/v/c;
    .locals 1

    sget-object v0, Lcom/appbrain/v/c;->d:[Lcom/appbrain/v/c;

    invoke-virtual {v0}, [Lcom/appbrain/v/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/v/c;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lcom/appbrain/v/c;->b:I

    return v0
.end method

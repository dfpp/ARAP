.class public final enum Lcom/appbrain/t/d;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/appbrain/q/s$a;


# static fields
.field public static final enum c:Lcom/appbrain/t/d;

.field public static final enum d:Lcom/appbrain/t/d;

.field public static final enum e:Lcom/appbrain/t/d;

.field public static final enum f:Lcom/appbrain/t/d;

.field private static final synthetic g:[Lcom/appbrain/t/d;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/appbrain/t/d;

    const-string v1, "REFERRER_DEP_NOT_PRESENT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/appbrain/t/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/d;->c:Lcom/appbrain/t/d;

    new-instance v0, Lcom/appbrain/t/d;

    const-string v1, "REFERRER_DEP_PRESENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/appbrain/t/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/d;->d:Lcom/appbrain/t/d;

    new-instance v0, Lcom/appbrain/t/d;

    const-string v1, "PRECONDITION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/appbrain/t/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/d;->e:Lcom/appbrain/t/d;

    new-instance v0, Lcom/appbrain/t/d;

    const-string v1, "PACKAGE_MANAGER_FAILURE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/appbrain/t/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/d;->f:Lcom/appbrain/t/d;

    new-array v1, v6, [Lcom/appbrain/t/d;

    sget-object v6, Lcom/appbrain/t/d;->c:Lcom/appbrain/t/d;

    aput-object v6, v1, v2

    sget-object v2, Lcom/appbrain/t/d;->d:Lcom/appbrain/t/d;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/t/d;->e:Lcom/appbrain/t/d;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/appbrain/t/d;->g:[Lcom/appbrain/t/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appbrain/t/d;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/t/d;
    .locals 1

    const-class v0, Lcom/appbrain/t/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/t/d;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/t/d;
    .locals 1

    sget-object v0, Lcom/appbrain/t/d;->g:[Lcom/appbrain/t/d;

    invoke-virtual {v0}, [Lcom/appbrain/t/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/t/d;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lcom/appbrain/t/d;->b:I

    return v0
.end method

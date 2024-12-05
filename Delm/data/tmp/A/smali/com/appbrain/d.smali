.class public final enum Lcom/appbrain/d;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum c:Lcom/appbrain/d;

.field public static final enum d:Lcom/appbrain/d;

.field public static final enum e:Lcom/appbrain/d;

.field public static final enum f:Lcom/appbrain/d;

.field private static final synthetic g:[Lcom/appbrain/d;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/appbrain/d;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/appbrain/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/d;->c:Lcom/appbrain/d;

    new-instance v0, Lcom/appbrain/d;

    const-string v1, "SMALL"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/appbrain/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/d;->d:Lcom/appbrain/d;

    new-instance v0, Lcom/appbrain/d;

    const-string v1, "MEDIUM"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/appbrain/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/d;->e:Lcom/appbrain/d;

    new-instance v0, Lcom/appbrain/d;

    const-string v1, "LARGE"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/appbrain/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/d;->f:Lcom/appbrain/d;

    new-array v1, v5, [Lcom/appbrain/d;

    sget-object v5, Lcom/appbrain/d;->c:Lcom/appbrain/d;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appbrain/d;->d:Lcom/appbrain/d;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/d;->e:Lcom/appbrain/d;

    aput-object v2, v1, v4

    aput-object v0, v1, v6

    sput-object v1, Lcom/appbrain/d;->g:[Lcom/appbrain/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appbrain/d;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/d;
    .locals 1

    const-class v0, Lcom/appbrain/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/d;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/d;
    .locals 1

    sget-object v0, Lcom/appbrain/d;->g:[Lcom/appbrain/d;

    invoke-virtual {v0}, [Lcom/appbrain/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/d;

    return-object v0
.end method

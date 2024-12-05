.class public final enum Lcom/appbrain/t/m;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/appbrain/q/s$a;


# static fields
.field public static final enum c:Lcom/appbrain/t/m;

.field public static final enum d:Lcom/appbrain/t/m;

.field public static final enum e:Lcom/appbrain/t/m;

.field public static final enum f:Lcom/appbrain/t/m;

.field public static final enum g:Lcom/appbrain/t/m;

.field public static final enum h:Lcom/appbrain/t/m;

.field public static final enum i:Lcom/appbrain/t/m;

.field public static final enum j:Lcom/appbrain/t/m;

.field private static final synthetic k:[Lcom/appbrain/t/m;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/appbrain/t/m;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/appbrain/t/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/m;->c:Lcom/appbrain/t/m;

    new-instance v0, Lcom/appbrain/t/m;

    const-string v1, "INSTALL"

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/appbrain/t/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/m;->d:Lcom/appbrain/t/m;

    new-instance v0, Lcom/appbrain/t/m;

    const-string v1, "UNINSTALL"

    const/4 v6, 0x2

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/appbrain/t/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/m;->e:Lcom/appbrain/t/m;

    new-instance v0, Lcom/appbrain/t/m;

    const-string v1, "FINAL_CHECK"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v3, v8}, Lcom/appbrain/t/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/m;->f:Lcom/appbrain/t/m;

    new-instance v0, Lcom/appbrain/t/m;

    const-string v1, "INVALID_URL"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v5, v9}, Lcom/appbrain/t/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/m;->g:Lcom/appbrain/t/m;

    new-instance v0, Lcom/appbrain/t/m;

    const-string v1, "INTERNAL_LOG"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v7, v10}, Lcom/appbrain/t/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/m;->h:Lcom/appbrain/t/m;

    new-instance v0, Lcom/appbrain/t/m;

    const-string v1, "CANCELED_CLICK"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v8, v11}, Lcom/appbrain/t/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/m;->i:Lcom/appbrain/t/m;

    new-instance v0, Lcom/appbrain/t/m;

    const-string v1, "VALID_URL"

    const/16 v11, 0xa

    invoke-direct {v0, v1, v9, v11}, Lcom/appbrain/t/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/m;->j:Lcom/appbrain/t/m;

    new-array v1, v10, [Lcom/appbrain/t/m;

    sget-object v10, Lcom/appbrain/t/m;->c:Lcom/appbrain/t/m;

    aput-object v10, v1, v2

    sget-object v2, Lcom/appbrain/t/m;->d:Lcom/appbrain/t/m;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appbrain/t/m;->e:Lcom/appbrain/t/m;

    aput-object v2, v1, v6

    sget-object v2, Lcom/appbrain/t/m;->f:Lcom/appbrain/t/m;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/t/m;->g:Lcom/appbrain/t/m;

    aput-object v2, v1, v5

    sget-object v2, Lcom/appbrain/t/m;->h:Lcom/appbrain/t/m;

    aput-object v2, v1, v7

    sget-object v2, Lcom/appbrain/t/m;->i:Lcom/appbrain/t/m;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/appbrain/t/m;->k:[Lcom/appbrain/t/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appbrain/t/m;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/t/m;
    .locals 1

    const-class v0, Lcom/appbrain/t/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/t/m;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/t/m;
    .locals 1

    sget-object v0, Lcom/appbrain/t/m;->k:[Lcom/appbrain/t/m;

    invoke-virtual {v0}, [Lcom/appbrain/t/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/t/m;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lcom/appbrain/t/m;->b:I

    return v0
.end method

.class public final enum Lcom/appbrain/o/n$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum c:Lcom/appbrain/o/n$a;

.field public static final enum d:Lcom/appbrain/o/n$a;

.field public static final enum e:Lcom/appbrain/o/n$a;

.field public static final enum f:Lcom/appbrain/o/n$a;

.field private static final synthetic g:[Lcom/appbrain/o/n$a;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/appbrain/o/n$a;

    const-string v1, "SIZE"

    const/4 v2, 0x0

    const-string v3, "=s%d"

    invoke-direct {v0, v1, v2, v3}, Lcom/appbrain/o/n$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/o/n$a;->c:Lcom/appbrain/o/n$a;

    new-instance v0, Lcom/appbrain/o/n$a;

    const-string v1, "WIDTH"

    const/4 v3, 0x1

    const-string v4, "=w%d"

    invoke-direct {v0, v1, v3, v4}, Lcom/appbrain/o/n$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/o/n$a;->d:Lcom/appbrain/o/n$a;

    new-instance v0, Lcom/appbrain/o/n$a;

    const-string v1, "HEIGHT"

    const/4 v4, 0x2

    const-string v5, "=h%d"

    invoke-direct {v0, v1, v4, v5}, Lcom/appbrain/o/n$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/o/n$a;->e:Lcom/appbrain/o/n$a;

    new-instance v0, Lcom/appbrain/o/n$a;

    const-string v1, "CROP_SQUARE"

    const/4 v5, 0x3

    const-string v6, "=s%d-c"

    invoke-direct {v0, v1, v5, v6}, Lcom/appbrain/o/n$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/o/n$a;->f:Lcom/appbrain/o/n$a;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/appbrain/o/n$a;

    sget-object v6, Lcom/appbrain/o/n$a;->c:Lcom/appbrain/o/n$a;

    aput-object v6, v1, v2

    sget-object v2, Lcom/appbrain/o/n$a;->d:Lcom/appbrain/o/n$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/o/n$a;->e:Lcom/appbrain/o/n$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/appbrain/o/n$a;->g:[Lcom/appbrain/o/n$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appbrain/o/n$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/o/n$a;
    .locals 1

    const-class v0, Lcom/appbrain/o/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/o/n$a;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/o/n$a;
    .locals 1

    sget-object v0, Lcom/appbrain/o/n$a;->g:[Lcom/appbrain/o/n$a;

    invoke-virtual {v0}, [Lcom/appbrain/o/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/o/n$a;

    return-object v0
.end method


# virtual methods
.method public final c(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/appbrain/o/n$a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

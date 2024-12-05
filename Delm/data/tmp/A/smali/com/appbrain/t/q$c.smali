.class public final enum Lcom/appbrain/t/q$c;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/appbrain/q/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/t/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field public static final enum c:Lcom/appbrain/t/q$c;

.field public static final enum d:Lcom/appbrain/t/q$c;

.field private static final synthetic e:[Lcom/appbrain/t/q$c;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/appbrain/t/q$c;

    const-string v1, "USER_COMEBACK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/appbrain/t/q$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/q$c;->c:Lcom/appbrain/t/q$c;

    new-instance v0, Lcom/appbrain/t/q$c;

    const-string v1, "ACTIVITY_STARTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/appbrain/t/q$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/q$c;->d:Lcom/appbrain/t/q$c;

    new-array v1, v4, [Lcom/appbrain/t/q$c;

    sget-object v4, Lcom/appbrain/t/q$c;->c:Lcom/appbrain/t/q$c;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/appbrain/t/q$c;->e:[Lcom/appbrain/t/q$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/appbrain/t/q$c;->b:I

    return-void
.end method

.method public static d(I)Lcom/appbrain/t/q$c;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/appbrain/t/q$c;->d:Lcom/appbrain/t/q$c;

    return-object p0

    :cond_1
    sget-object p0, Lcom/appbrain/t/q$c;->c:Lcom/appbrain/t/q$c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/t/q$c;
    .locals 1

    const-class v0, Lcom/appbrain/t/q$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/t/q$c;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/t/q$c;
    .locals 1

    sget-object v0, Lcom/appbrain/t/q$c;->e:[Lcom/appbrain/t/q$c;

    invoke-virtual {v0}, [Lcom/appbrain/t/q$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/t/q$c;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lcom/appbrain/t/q$c;->b:I

    return v0
.end method

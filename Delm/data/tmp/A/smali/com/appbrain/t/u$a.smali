.class public final enum Lcom/appbrain/t/u$a;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/appbrain/q/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/t/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/t/u$a;

.field public static final enum c:Lcom/appbrain/t/u$a;

.field public static final enum d:Lcom/appbrain/t/u$a;

.field public static final enum e:Lcom/appbrain/t/u$a;

.field private static final synthetic f:[Lcom/appbrain/t/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/appbrain/t/u$a;

    const-string v1, "DIALOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/appbrain/t/u$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/u$a;->b:Lcom/appbrain/t/u$a;

    new-instance v0, Lcom/appbrain/t/u$a;

    const-string v1, "SLIDER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/appbrain/t/u$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/u$a;->c:Lcom/appbrain/t/u$a;

    new-instance v0, Lcom/appbrain/t/u$a;

    const-string v1, "NOTIFICATION"

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/appbrain/t/u$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/u$a;->d:Lcom/appbrain/t/u$a;

    new-instance v0, Lcom/appbrain/t/u$a;

    const-string v1, "WEB_VIEW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/appbrain/t/u$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/t/u$a;->e:Lcom/appbrain/t/u$a;

    new-array v1, v6, [Lcom/appbrain/t/u$a;

    sget-object v6, Lcom/appbrain/t/u$a;->b:Lcom/appbrain/t/u$a;

    aput-object v6, v1, v2

    sget-object v2, Lcom/appbrain/t/u$a;->c:Lcom/appbrain/t/u$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/t/u$a;->d:Lcom/appbrain/t/u$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/appbrain/t/u$a;->f:[Lcom/appbrain/t/u$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(I)Lcom/appbrain/t/u$a;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/appbrain/t/u$a;->e:Lcom/appbrain/t/u$a;

    return-object p0

    :cond_1
    sget-object p0, Lcom/appbrain/t/u$a;->d:Lcom/appbrain/t/u$a;

    return-object p0

    :cond_2
    sget-object p0, Lcom/appbrain/t/u$a;->c:Lcom/appbrain/t/u$a;

    return-object p0

    :cond_3
    sget-object p0, Lcom/appbrain/t/u$a;->b:Lcom/appbrain/t/u$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/t/u$a;
    .locals 1

    const-class v0, Lcom/appbrain/t/u$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/t/u$a;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/t/u$a;
    .locals 1

    sget-object v0, Lcom/appbrain/t/u$a;->f:[Lcom/appbrain/t/u$a;

    invoke-virtual {v0}, [Lcom/appbrain/t/u$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/t/u$a;

    return-object v0
.end method

.class public final enum Lcom/appbrain/k$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/k$a;

.field public static final enum c:Lcom/appbrain/k$a;

.field private static final synthetic d:[Lcom/appbrain/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/appbrain/k$a;

    const-string v1, "NO_FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/k$a;->b:Lcom/appbrain/k$a;

    new-instance v0, Lcom/appbrain/k$a;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appbrain/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/k$a;->c:Lcom/appbrain/k$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/appbrain/k$a;

    sget-object v4, Lcom/appbrain/k$a;->b:Lcom/appbrain/k$a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/appbrain/k$a;->d:[Lcom/appbrain/k$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/k$a;
    .locals 1

    const-class v0, Lcom/appbrain/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/k$a;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/k$a;
    .locals 1

    sget-object v0, Lcom/appbrain/k$a;->d:[Lcom/appbrain/k$a;

    invoke-virtual {v0}, [Lcom/appbrain/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/k$a;

    return-object v0
.end method

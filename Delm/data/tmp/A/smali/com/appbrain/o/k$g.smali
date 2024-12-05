.class public final enum Lcom/appbrain/o/k$g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/o/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/o/k$g;

.field public static final enum c:Lcom/appbrain/o/k$g;

.field public static final enum d:Lcom/appbrain/o/k$g;

.field private static final synthetic e:[Lcom/appbrain/o/k$g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/appbrain/o/k$g;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/o/k$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/o/k$g;->b:Lcom/appbrain/o/k$g;

    new-instance v0, Lcom/appbrain/o/k$g;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appbrain/o/k$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/o/k$g;->c:Lcom/appbrain/o/k$g;

    new-instance v0, Lcom/appbrain/o/k$g;

    const-string v1, "FINISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appbrain/o/k$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/o/k$g;->d:Lcom/appbrain/o/k$g;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appbrain/o/k$g;

    sget-object v5, Lcom/appbrain/o/k$g;->b:Lcom/appbrain/o/k$g;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appbrain/o/k$g;->c:Lcom/appbrain/o/k$g;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appbrain/o/k$g;->e:[Lcom/appbrain/o/k$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/o/k$g;
    .locals 1

    const-class v0, Lcom/appbrain/o/k$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/o/k$g;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/o/k$g;
    .locals 1

    sget-object v0, Lcom/appbrain/o/k$g;->e:[Lcom/appbrain/o/k$g;

    invoke-virtual {v0}, [Lcom/appbrain/o/k$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/o/k$g;

    return-object v0
.end method

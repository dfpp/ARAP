.class public final enum Lcom/appbrain/c$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/c$a;

.field public static final enum c:Lcom/appbrain/c$a;

.field private static final synthetic d:[Lcom/appbrain/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/appbrain/c$a;

    const-string v1, "FULLSCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/c$a;->b:Lcom/appbrain/c$a;

    new-instance v0, Lcom/appbrain/c$a;

    const-string v1, "DIALOG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appbrain/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/c$a;->c:Lcom/appbrain/c$a;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/appbrain/c$a;

    sget-object v4, Lcom/appbrain/c$a;->b:Lcom/appbrain/c$a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/appbrain/c$a;->d:[Lcom/appbrain/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/c$a;
    .locals 1

    const-class v0, Lcom/appbrain/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/c$a;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/c$a;
    .locals 1

    sget-object v0, Lcom/appbrain/c$a;->d:[Lcom/appbrain/c$a;

    invoke-virtual {v0}, [Lcom/appbrain/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/c$a;

    return-object v0
.end method

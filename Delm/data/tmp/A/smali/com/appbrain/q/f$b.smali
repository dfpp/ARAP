.class public final enum Lcom/appbrain/q/f$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/q/f$b;

.field public static final enum c:Lcom/appbrain/q/f$b;

.field public static final enum d:Lcom/appbrain/q/f$b;

.field public static final enum e:Lcom/appbrain/q/f$b;

.field public static final enum f:Lcom/appbrain/q/f$b;

.field public static final enum g:Lcom/appbrain/q/f$b;

.field public static final enum h:Lcom/appbrain/q/f$b;

.field public static final enum i:Lcom/appbrain/q/f$b;

.field public static final enum j:Lcom/appbrain/q/f$b;

.field private static final synthetic k:[Lcom/appbrain/q/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/appbrain/q/f$b;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lcom/appbrain/q/f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/appbrain/q/f$b;->b:Lcom/appbrain/q/f$b;

    new-instance v0, Lcom/appbrain/q/f$b;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v2}, Lcom/appbrain/q/f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/appbrain/q/f$b;->c:Lcom/appbrain/q/f$b;

    new-instance v0, Lcom/appbrain/q/f$b;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "FLOAT"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v2}, Lcom/appbrain/q/f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/appbrain/q/f$b;->d:Lcom/appbrain/q/f$b;

    new-instance v0, Lcom/appbrain/q/f$b;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "DOUBLE"

    const/4 v6, 0x3

    invoke-direct {v0, v3, v6, v2}, Lcom/appbrain/q/f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/appbrain/q/f$b;->e:Lcom/appbrain/q/f$b;

    new-instance v0, Lcom/appbrain/q/f$b;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "BOOLEAN"

    const/4 v7, 0x4

    invoke-direct {v0, v3, v7, v2}, Lcom/appbrain/q/f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/appbrain/q/f$b;->f:Lcom/appbrain/q/f$b;

    new-instance v0, Lcom/appbrain/q/f$b;

    const-string v2, "STRING"

    const/4 v3, 0x5

    const-string v8, ""

    invoke-direct {v0, v2, v3, v8}, Lcom/appbrain/q/f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/appbrain/q/f$b;->g:Lcom/appbrain/q/f$b;

    new-instance v0, Lcom/appbrain/q/f$b;

    sget-object v2, Lcom/appbrain/q/j;->c:Lcom/appbrain/q/j;

    const-string v8, "BYTE_STRING"

    const/4 v9, 0x6

    invoke-direct {v0, v8, v9, v2}, Lcom/appbrain/q/f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/appbrain/q/f$b;->h:Lcom/appbrain/q/f$b;

    new-instance v0, Lcom/appbrain/q/f$b;

    const-string v2, "ENUM"

    const/4 v8, 0x7

    const/4 v10, 0x0

    invoke-direct {v0, v2, v8, v10}, Lcom/appbrain/q/f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/appbrain/q/f$b;->i:Lcom/appbrain/q/f$b;

    new-instance v0, Lcom/appbrain/q/f$b;

    const-string v2, "MESSAGE"

    const/16 v11, 0x8

    invoke-direct {v0, v2, v11, v10}, Lcom/appbrain/q/f$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/appbrain/q/f$b;->j:Lcom/appbrain/q/f$b;

    const/16 v2, 0x9

    new-array v2, v2, [Lcom/appbrain/q/f$b;

    sget-object v10, Lcom/appbrain/q/f$b;->b:Lcom/appbrain/q/f$b;

    aput-object v10, v2, v1

    sget-object v1, Lcom/appbrain/q/f$b;->c:Lcom/appbrain/q/f$b;

    aput-object v1, v2, v4

    sget-object v1, Lcom/appbrain/q/f$b;->d:Lcom/appbrain/q/f$b;

    aput-object v1, v2, v5

    sget-object v1, Lcom/appbrain/q/f$b;->e:Lcom/appbrain/q/f$b;

    aput-object v1, v2, v6

    sget-object v1, Lcom/appbrain/q/f$b;->f:Lcom/appbrain/q/f$b;

    aput-object v1, v2, v7

    sget-object v1, Lcom/appbrain/q/f$b;->g:Lcom/appbrain/q/f$b;

    aput-object v1, v2, v3

    sget-object v1, Lcom/appbrain/q/f$b;->h:Lcom/appbrain/q/f$b;

    aput-object v1, v2, v9

    sget-object v1, Lcom/appbrain/q/f$b;->i:Lcom/appbrain/q/f$b;

    aput-object v1, v2, v8

    aput-object v0, v2, v11

    sput-object v2, Lcom/appbrain/q/f$b;->k:[Lcom/appbrain/q/f$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/q/f$b;
    .locals 1

    const-class v0, Lcom/appbrain/q/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/q/f$b;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/q/f$b;
    .locals 1

    sget-object v0, Lcom/appbrain/q/f$b;->k:[Lcom/appbrain/q/f$b;

    invoke-virtual {v0}, [Lcom/appbrain/q/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/q/f$b;

    return-object v0
.end method

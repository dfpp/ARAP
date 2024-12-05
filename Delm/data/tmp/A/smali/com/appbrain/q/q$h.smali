.class public final enum Lcom/appbrain/q/q$h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation


# static fields
.field public static final enum b:Lcom/appbrain/q/q$h;

.field public static final enum c:Lcom/appbrain/q/q$h;

.field public static final enum d:Lcom/appbrain/q/q$h;

.field public static final enum e:Lcom/appbrain/q/q$h;

.field public static final enum f:Lcom/appbrain/q/q$h;

.field public static final enum g:Lcom/appbrain/q/q$h;

.field public static final enum h:Lcom/appbrain/q/q$h;

.field public static final enum i:Lcom/appbrain/q/q$h;

.field private static final synthetic j:[Lcom/appbrain/q/q$h;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/appbrain/q/q$h;

    const-string v1, "IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appbrain/q/q$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/q/q$h;->b:Lcom/appbrain/q/q$h;

    new-instance v0, Lcom/appbrain/q/q$h;

    const-string v1, "VISIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appbrain/q/q$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/q/q$h;->c:Lcom/appbrain/q/q$h;

    new-instance v0, Lcom/appbrain/q/q$h;

    const-string v1, "MERGE_FROM_STREAM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appbrain/q/q$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/q/q$h;->d:Lcom/appbrain/q/q$h;

    new-instance v0, Lcom/appbrain/q/q$h;

    const-string v1, "MAKE_IMMUTABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/appbrain/q/q$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/q/q$h;->e:Lcom/appbrain/q/q$h;

    new-instance v0, Lcom/appbrain/q/q$h;

    const-string v1, "NEW_MUTABLE_INSTANCE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/appbrain/q/q$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/q/q$h;->f:Lcom/appbrain/q/q$h;

    new-instance v0, Lcom/appbrain/q/q$h;

    const-string v1, "NEW_BUILDER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/appbrain/q/q$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/q/q$h;->g:Lcom/appbrain/q/q$h;

    new-instance v0, Lcom/appbrain/q/q$h;

    const-string v1, "GET_DEFAULT_INSTANCE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/appbrain/q/q$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/q/q$h;->h:Lcom/appbrain/q/q$h;

    new-instance v0, Lcom/appbrain/q/q$h;

    const-string v1, "GET_PARSER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/appbrain/q/q$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appbrain/q/q$h;->i:Lcom/appbrain/q/q$h;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/appbrain/q/q$h;

    sget-object v10, Lcom/appbrain/q/q$h;->b:Lcom/appbrain/q/q$h;

    aput-object v10, v1, v2

    sget-object v2, Lcom/appbrain/q/q$h;->c:Lcom/appbrain/q/q$h;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/q/q$h;->d:Lcom/appbrain/q/q$h;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appbrain/q/q$h;->e:Lcom/appbrain/q/q$h;

    aput-object v2, v1, v5

    sget-object v2, Lcom/appbrain/q/q$h;->f:Lcom/appbrain/q/q$h;

    aput-object v2, v1, v6

    sget-object v2, Lcom/appbrain/q/q$h;->g:Lcom/appbrain/q/q$h;

    aput-object v2, v1, v7

    sget-object v2, Lcom/appbrain/q/q$h;->h:Lcom/appbrain/q/q$h;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/appbrain/q/q$h;->j:[Lcom/appbrain/q/q$h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/q/q$h;
    .locals 1

    const-class v0, Lcom/appbrain/q/q$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/q/q$h;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/q/q$h;
    .locals 1

    sget-object v0, Lcom/appbrain/q/q$h;->j:[Lcom/appbrain/q/q$h;

    invoke-virtual {v0}, [Lcom/appbrain/q/q$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/q/q$h;

    return-object v0
.end method

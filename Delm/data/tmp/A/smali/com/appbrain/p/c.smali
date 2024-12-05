.class public final enum Lcom/appbrain/p/c;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/appbrain/q/s$a;


# static fields
.field public static final enum b:Lcom/appbrain/p/c;

.field public static final enum c:Lcom/appbrain/p/c;

.field public static final enum d:Lcom/appbrain/p/c;

.field public static final enum e:Lcom/appbrain/p/c;

.field public static final enum f:Lcom/appbrain/p/c;

.field public static final enum g:Lcom/appbrain/p/c;

.field public static final enum h:Lcom/appbrain/p/c;

.field private static final synthetic i:[Lcom/appbrain/p/c;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/appbrain/p/c;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/appbrain/p/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/p/c;->b:Lcom/appbrain/p/c;

    new-instance v0, Lcom/appbrain/p/c;

    const-string v1, "APPBRAIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/appbrain/p/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/p/c;->c:Lcom/appbrain/p/c;

    new-instance v0, Lcom/appbrain/p/c;

    const-string v1, "ADMOB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/appbrain/p/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/p/c;->d:Lcom/appbrain/p/c;

    new-instance v0, Lcom/appbrain/p/c;

    const-string v1, "FACEBOOK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/appbrain/p/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/p/c;->e:Lcom/appbrain/p/c;

    new-instance v0, Lcom/appbrain/p/c;

    const-string v1, "CHARTBOOST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/appbrain/p/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/p/c;->f:Lcom/appbrain/p/c;

    new-instance v0, Lcom/appbrain/p/c;

    const-string v1, "INMOBI"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/appbrain/p/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/p/c;->g:Lcom/appbrain/p/c;

    new-instance v0, Lcom/appbrain/p/c;

    const-string v1, "MOPUB"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/appbrain/p/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appbrain/p/c;->h:Lcom/appbrain/p/c;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/appbrain/p/c;

    sget-object v9, Lcom/appbrain/p/c;->b:Lcom/appbrain/p/c;

    aput-object v9, v1, v2

    sget-object v2, Lcom/appbrain/p/c;->c:Lcom/appbrain/p/c;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/p/c;->d:Lcom/appbrain/p/c;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appbrain/p/c;->e:Lcom/appbrain/p/c;

    aput-object v2, v1, v5

    sget-object v2, Lcom/appbrain/p/c;->f:Lcom/appbrain/p/c;

    aput-object v2, v1, v6

    sget-object v2, Lcom/appbrain/p/c;->g:Lcom/appbrain/p/c;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/appbrain/p/c;->i:[Lcom/appbrain/p/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(I)Lcom/appbrain/p/c;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/appbrain/p/c;->h:Lcom/appbrain/p/c;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/appbrain/p/c;->g:Lcom/appbrain/p/c;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/appbrain/p/c;->f:Lcom/appbrain/p/c;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/appbrain/p/c;->e:Lcom/appbrain/p/c;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/appbrain/p/c;->d:Lcom/appbrain/p/c;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/appbrain/p/c;->c:Lcom/appbrain/p/c;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/appbrain/p/c;->b:Lcom/appbrain/p/c;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/p/c;
    .locals 1

    const-class v0, Lcom/appbrain/p/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/p/c;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/p/c;
    .locals 1

    sget-object v0, Lcom/appbrain/p/c;->i:[Lcom/appbrain/p/c;

    invoke-virtual {v0}, [Lcom/appbrain/p/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/p/c;

    return-object v0
.end method

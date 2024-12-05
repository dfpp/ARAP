.class public enum Lcom/appbrain/q/f$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "a"
.end annotation


# static fields
.field public static final enum c:Lcom/appbrain/q/f$a;

.field public static final enum d:Lcom/appbrain/q/f$a;

.field public static final enum e:Lcom/appbrain/q/f$a;

.field public static final enum f:Lcom/appbrain/q/f$a;

.field public static final enum g:Lcom/appbrain/q/f$a;

.field public static final enum h:Lcom/appbrain/q/f$a;

.field public static final enum i:Lcom/appbrain/q/f$a;

.field public static final enum j:Lcom/appbrain/q/f$a;

.field public static final enum k:Lcom/appbrain/q/f$a;

.field public static final enum l:Lcom/appbrain/q/f$a;

.field public static final enum m:Lcom/appbrain/q/f$a;

.field public static final enum n:Lcom/appbrain/q/f$a;

.field public static final enum o:Lcom/appbrain/q/f$a;

.field public static final enum p:Lcom/appbrain/q/f$a;

.field public static final enum q:Lcom/appbrain/q/f$a;

.field public static final enum r:Lcom/appbrain/q/f$a;

.field public static final enum s:Lcom/appbrain/q/f$a;

.field public static final enum t:Lcom/appbrain/q/f$a;

.field private static final synthetic u:[Lcom/appbrain/q/f$a;


# instance fields
.field private final b:Lcom/appbrain/q/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->e:Lcom/appbrain/q/f$b;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->c:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->d:Lcom/appbrain/q/f$b;

    const-string v2, "FLOAT"

    const/4 v5, 0x5

    invoke-direct {v0, v2, v4, v1, v5}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->d:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->c:Lcom/appbrain/q/f$b;

    const-string v2, "INT64"

    const/4 v6, 0x2

    invoke-direct {v0, v2, v6, v1, v3}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->e:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->c:Lcom/appbrain/q/f$b;

    const-string v2, "UINT64"

    const/4 v7, 0x3

    invoke-direct {v0, v2, v7, v1, v3}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->f:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->b:Lcom/appbrain/q/f$b;

    const-string v2, "INT32"

    const/4 v8, 0x4

    invoke-direct {v0, v2, v8, v1, v3}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->g:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->c:Lcom/appbrain/q/f$b;

    const-string v2, "FIXED64"

    invoke-direct {v0, v2, v5, v1, v4}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->h:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->b:Lcom/appbrain/q/f$b;

    const-string v2, "FIXED32"

    const/4 v9, 0x6

    invoke-direct {v0, v2, v9, v1, v5}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->i:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->f:Lcom/appbrain/q/f$b;

    const-string v2, "BOOL"

    const/4 v10, 0x7

    invoke-direct {v0, v2, v10, v1, v3}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->j:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a$a;

    sget-object v1, Lcom/appbrain/q/f$b;->g:Lcom/appbrain/q/f$b;

    const-string v2, "STRING"

    invoke-direct {v0, v2, v1}, Lcom/appbrain/q/f$a$a;-><init>(Ljava/lang/String;Lcom/appbrain/q/f$b;)V

    sput-object v0, Lcom/appbrain/q/f$a;->k:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a$b;

    sget-object v1, Lcom/appbrain/q/f$b;->j:Lcom/appbrain/q/f$b;

    const-string v2, "GROUP"

    invoke-direct {v0, v2, v1}, Lcom/appbrain/q/f$a$b;-><init>(Ljava/lang/String;Lcom/appbrain/q/f$b;)V

    sput-object v0, Lcom/appbrain/q/f$a;->l:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a$c;

    sget-object v1, Lcom/appbrain/q/f$b;->j:Lcom/appbrain/q/f$b;

    const-string v2, "MESSAGE"

    invoke-direct {v0, v2, v1}, Lcom/appbrain/q/f$a$c;-><init>(Ljava/lang/String;Lcom/appbrain/q/f$b;)V

    sput-object v0, Lcom/appbrain/q/f$a;->m:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a$d;

    sget-object v1, Lcom/appbrain/q/f$b;->h:Lcom/appbrain/q/f$b;

    const-string v2, "BYTES"

    invoke-direct {v0, v2, v1}, Lcom/appbrain/q/f$a$d;-><init>(Ljava/lang/String;Lcom/appbrain/q/f$b;)V

    sput-object v0, Lcom/appbrain/q/f$a;->n:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->b:Lcom/appbrain/q/f$b;

    const-string v2, "UINT32"

    const/16 v11, 0xc

    invoke-direct {v0, v2, v11, v1, v3}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->o:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->i:Lcom/appbrain/q/f$b;

    const-string v2, "ENUM"

    const/16 v12, 0xd

    invoke-direct {v0, v2, v12, v1, v3}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->p:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->b:Lcom/appbrain/q/f$b;

    const-string v2, "SFIXED32"

    const/16 v13, 0xe

    invoke-direct {v0, v2, v13, v1, v5}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->q:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->c:Lcom/appbrain/q/f$b;

    const-string v2, "SFIXED64"

    const/16 v14, 0xf

    invoke-direct {v0, v2, v14, v1, v4}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->r:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->b:Lcom/appbrain/q/f$b;

    const-string v2, "SINT32"

    const/16 v15, 0x10

    invoke-direct {v0, v2, v15, v1, v3}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->s:Lcom/appbrain/q/f$a;

    new-instance v0, Lcom/appbrain/q/f$a;

    sget-object v1, Lcom/appbrain/q/f$b;->c:Lcom/appbrain/q/f$b;

    const-string v2, "SINT64"

    const/16 v15, 0x11

    invoke-direct {v0, v2, v15, v1, v3}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    sput-object v0, Lcom/appbrain/q/f$a;->t:Lcom/appbrain/q/f$a;

    const/16 v1, 0x12

    new-array v1, v1, [Lcom/appbrain/q/f$a;

    sget-object v2, Lcom/appbrain/q/f$a;->c:Lcom/appbrain/q/f$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/q/f$a;->d:Lcom/appbrain/q/f$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/appbrain/q/f$a;->e:Lcom/appbrain/q/f$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/appbrain/q/f$a;->f:Lcom/appbrain/q/f$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/appbrain/q/f$a;->g:Lcom/appbrain/q/f$a;

    aput-object v2, v1, v8

    sget-object v2, Lcom/appbrain/q/f$a;->h:Lcom/appbrain/q/f$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/appbrain/q/f$a;->i:Lcom/appbrain/q/f$a;

    aput-object v2, v1, v9

    sget-object v2, Lcom/appbrain/q/f$a;->j:Lcom/appbrain/q/f$a;

    aput-object v2, v1, v10

    sget-object v2, Lcom/appbrain/q/f$a;->k:Lcom/appbrain/q/f$a;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/q/f$a;->l:Lcom/appbrain/q/f$a;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/q/f$a;->m:Lcom/appbrain/q/f$a;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/q/f$a;->n:Lcom/appbrain/q/f$a;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/appbrain/q/f$a;->o:Lcom/appbrain/q/f$a;

    aput-object v2, v1, v11

    sget-object v2, Lcom/appbrain/q/f$a;->p:Lcom/appbrain/q/f$a;

    aput-object v2, v1, v12

    sget-object v2, Lcom/appbrain/q/f$a;->q:Lcom/appbrain/q/f$a;

    aput-object v2, v1, v13

    sget-object v2, Lcom/appbrain/q/f$a;->r:Lcom/appbrain/q/f$a;

    aput-object v2, v1, v14

    sget-object v2, Lcom/appbrain/q/f$a;->s:Lcom/appbrain/q/f$a;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/appbrain/q/f$a;->u:[Lcom/appbrain/q/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appbrain/q/f$a;->b:Lcom/appbrain/q/f$b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/appbrain/q/f$b;IB)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appbrain/q/f$a;-><init>(Ljava/lang/String;ILcom/appbrain/q/f$b;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appbrain/q/f$a;
    .locals 1

    const-class v0, Lcom/appbrain/q/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appbrain/q/f$a;

    return-object p0
.end method

.method public static values()[Lcom/appbrain/q/f$a;
    .locals 1

    sget-object v0, Lcom/appbrain/q/f$a;->u:[Lcom/appbrain/q/f$a;

    invoke-virtual {v0}, [Lcom/appbrain/q/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appbrain/q/f$a;

    return-object v0
.end method


# virtual methods
.method public final c()Lcom/appbrain/q/f$b;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/q/f$a;->b:Lcom/appbrain/q/f$b;

    return-object v0
.end method

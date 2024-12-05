.class public final Lcom/appbrain/a/f0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appbrain/a/f0;->a:[B

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/appbrain/a/f0;->b:[B

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/appbrain/a/f0;->c:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x3dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x22t
        0x1ft
        0x1dt
        0x6ct
        0x0t
        0x17t
        0x7t
        0x1et
        0x6ft
        0x12t
        0x1ft
        0x2dt
        0x1t
        0x15t
        0xct
        0x1ct
        0x6ft
        0x39t
        0x1et
        0x36t
        0x17t
        0xft
        0x1dt
        0x26t
        0x20t
        0x1et
        0x14t
        0x2et
        0x17t
        0x13t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x22t
        0x1ft
        0x1dt
        0x6ct
        0x1ft
        0x4t
        0xdt
        0x7t
        0x20t
        0x4t
        0x19t
        0x2dt
        0x1ct
        0x4ft
        0x1at
        0xat
        0x2at
        0x5et
        0x34t
        0x27t
        0x4t
        0x4t
        0x5t
        0x1t
        0x31t
        0x15t
        0x2t
        0x31t
        0x5ct
        0x33t
        0xct
        0x18t
        0x24t
        0x1et
        0x31t
        0x32t
        0x2t
        0x32t
        0x2dt
        0x25t
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-byte v3, p0, v1

    const-string v4, "AppBrain"

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

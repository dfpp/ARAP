.class public abstract Lcom/appbrain/q/l;
.super Lcom/appbrain/q/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/q/l$d;,
        Lcom/appbrain/q/l$a;,
        Lcom/appbrain/q/l$b;,
        Lcom/appbrain/q/l$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Z

.field private static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/appbrain/q/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/appbrain/q/l;->a:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/appbrain/q/d;->c()Z

    move-result v0

    sput-boolean v0, Lcom/appbrain/q/l;->b:Z

    invoke-static {}, Lcom/appbrain/q/d;->e()J

    move-result-wide v0

    sput-wide v0, Lcom/appbrain/q/l;->c:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/q/i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/q/l;-><init>()V

    return-void
.end method

.method public static A(I)I
    .locals 0

    invoke-static {p0}, Lcom/appbrain/q/l;->N(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static B(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/appbrain/q/l;->N(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/appbrain/q/l;->v(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static E(I)I
    .locals 0

    invoke-static {p0}, Lcom/appbrain/q/l;->N(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static F(II)I
    .locals 0

    invoke-static {p0}, Lcom/appbrain/q/l;->N(I)I

    move-result p0

    invoke-static {p1}, Lcom/appbrain/q/l;->O(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static G(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/appbrain/q/l;->N(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/appbrain/q/l;->v(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static synthetic H()Z
    .locals 1

    sget-boolean v0, Lcom/appbrain/q/l;->b:Z

    return v0
.end method

.method public static I(I)I
    .locals 0

    invoke-static {p0}, Lcom/appbrain/q/l;->N(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static J(II)I
    .locals 0

    invoke-static {p0}, Lcom/appbrain/q/l;->N(I)I

    move-result p0

    invoke-static {p1}, Lcom/appbrain/q/l;->O(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static synthetic K()J
    .locals 2

    sget-wide v0, Lcom/appbrain/q/l;->c:J

    return-wide v0
.end method

.method public static L(I)I
    .locals 0

    invoke-static {p0}, Lcom/appbrain/q/l;->N(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static M(I)I
    .locals 0

    invoke-static {p0}, Lcom/appbrain/q/l;->N(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static N(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/appbrain/q/f;->b(II)I

    move-result p0

    invoke-static {p0}, Lcom/appbrain/q/l;->P(I)I

    move-result p0

    return p0
.end method

.method public static O(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/appbrain/q/l;->P(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static P(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method static b(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static c(Lcom/appbrain/q/j;)I
    .locals 1

    invoke-virtual {p0}, Lcom/appbrain/q/j;->q()I

    move-result p0

    invoke-static {p0}, Lcom/appbrain/q/l;->P(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(Ljava/io/OutputStream;I)Lcom/appbrain/q/l;
    .locals 1

    new-instance v0, Lcom/appbrain/q/l$d;

    invoke-direct {v0, p0, p1}, Lcom/appbrain/q/l$d;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static e([B)Lcom/appbrain/q/l;
    .locals 2

    array-length v0, p0

    new-instance v1, Lcom/appbrain/q/l$b;

    invoke-direct {v1, p0, v0}, Lcom/appbrain/q/l$b;-><init>([BI)V

    return-object v1
.end method

.method public static s(ILcom/appbrain/q/j;)I
    .locals 1

    invoke-static {p0}, Lcom/appbrain/q/l;->N(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/appbrain/q/j;->q()I

    move-result p1

    invoke-static {p1}, Lcom/appbrain/q/l;->P(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static t(ILcom/appbrain/q/x;)I
    .locals 1

    invoke-static {p0}, Lcom/appbrain/q/l;->N(I)I

    move-result p0

    invoke-interface {p1}, Lcom/appbrain/q/x;->d()I

    move-result p1

    invoke-static {p1}, Lcom/appbrain/q/l;->P(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static u(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/appbrain/q/l;->N(I)I

    move-result p0

    invoke-static {p1}, Lcom/appbrain/q/l;->w(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static v(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static w(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/appbrain/q/e;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/appbrain/q/e$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/appbrain/q/s;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/appbrain/q/l;->P(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final C()V
    .locals 2

    invoke-virtual {p0}, Lcom/appbrain/q/l;->r()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract D(II)V
.end method

.method public abstract f()V
.end method

.method public final g(ID)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/appbrain/q/l;->z(IJ)V

    return-void
.end method

.method public final h(IF)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/appbrain/q/l;->D(II)V

    return-void
.end method

.method public abstract i(II)V
.end method

.method public abstract j(IJ)V
.end method

.method public abstract k(ILcom/appbrain/q/j;)V
.end method

.method public abstract l(ILcom/appbrain/q/x;)V
.end method

.method public abstract m(ILjava/lang/String;)V
.end method

.method public abstract n(IZ)V
.end method

.method public abstract o(J)V
.end method

.method public abstract p(Ljava/lang/String;)V
.end method

.method final q(Ljava/lang/String;Lcom/appbrain/q/e$c;)V
    .locals 3

    sget-object v0, Lcom/appbrain/q/l;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/appbrain/q/s;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/appbrain/q/l;->x(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/appbrain/q/i;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/appbrain/q/l$c; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/appbrain/q/l$c;

    invoke-direct {p2, p1}, Lcom/appbrain/q/l$c;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract r()I
.end method

.method public abstract x(I)V
.end method

.method public abstract y(II)V
.end method

.method public abstract z(IJ)V
.end method

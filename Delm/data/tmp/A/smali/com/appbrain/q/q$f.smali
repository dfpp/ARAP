.class final Lcom/appbrain/q/q$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/q/q$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appbrain/q/q$f;->a:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/appbrain/q/q$f;-><init>()V

    return-void
.end method

.method static synthetic o(Lcom/appbrain/q/q$f;)I
    .locals 0

    iget p0, p0, Lcom/appbrain/q/q$f;->a:I

    return p0
.end method

.method static synthetic p(Lcom/appbrain/q/q$f;I)I
    .locals 0

    iput p1, p0, Lcom/appbrain/q/q$f;->a:I

    return p1
.end method


# virtual methods
.method public final a(Lcom/appbrain/q/x;Lcom/appbrain/q/x;)Lcom/appbrain/q/x;
    .locals 1

    if-eqz p1, :cond_1

    instance-of p2, p1, Lcom/appbrain/q/q;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/appbrain/q/q;

    invoke-virtual {p2, p0}, Lcom/appbrain/q/q;->m(Lcom/appbrain/q/q$f;)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    goto :goto_0

    :cond_1
    const/16 p2, 0x25

    :goto_0
    iget v0, p0, Lcom/appbrain/q/q$f;->a:I

    mul-int/lit8 v0, v0, 0x35

    add-int/2addr v0, p2

    iput v0, p0, Lcom/appbrain/q/q$f;->a:I

    return-object p1
.end method

.method public final b(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final c(ZFZF)F
    .locals 0

    iget p1, p0, Lcom/appbrain/q/q$f;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/appbrain/q/q$f;->a:I

    return p2
.end method

.method public final d(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/appbrain/q/x;

    check-cast p3, Lcom/appbrain/q/x;

    invoke-virtual {p0, p2, p3}, Lcom/appbrain/q/q$f;->a(Lcom/appbrain/q/x;Lcom/appbrain/q/x;)Lcom/appbrain/q/x;

    return-object p2
.end method

.method public final e(ZIZI)I
    .locals 0

    iget p1, p0, Lcom/appbrain/q/q$f;->a:I

    mul-int/lit8 p1, p1, 0x35

    add-int/2addr p1, p2

    iput p1, p0, Lcom/appbrain/q/q$f;->a:I

    return p2
.end method

.method public final f(Lcom/appbrain/q/s$b;Lcom/appbrain/q/s$b;)Lcom/appbrain/q/s$b;
    .locals 1

    iget p2, p0, Lcom/appbrain/q/q$f;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/appbrain/q/q$f;->a:I

    return-object p1
.end method

.method public final g(Lcom/appbrain/q/s$d;Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;
    .locals 1

    iget p2, p0, Lcom/appbrain/q/q$f;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/appbrain/q/q$f;->a:I

    return-object p1
.end method

.method public final h(Lcom/appbrain/q/s$c;Lcom/appbrain/q/s$c;)Lcom/appbrain/q/s$c;
    .locals 1

    iget p2, p0, Lcom/appbrain/q/q$f;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/appbrain/q/q$f;->a:I

    return-object p1
.end method

.method public final i(ZLcom/appbrain/q/j;ZLcom/appbrain/q/j;)Lcom/appbrain/q/j;
    .locals 0

    iget p1, p0, Lcom/appbrain/q/q$f;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Lcom/appbrain/q/j;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/appbrain/q/q$f;->a:I

    return-object p2
.end method

.method public final j(ZJZJ)J
    .locals 0

    iget p1, p0, Lcom/appbrain/q/q$f;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, Lcom/appbrain/q/s;->b(J)I

    move-result p4

    add-int/2addr p1, p4

    iput p1, p0, Lcom/appbrain/q/q$f;->a:I

    return-wide p2
.end method

.method public final k(ZZZZ)Z
    .locals 0

    iget p1, p0, Lcom/appbrain/q/q$f;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2}, Lcom/appbrain/q/s;->c(Z)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/appbrain/q/q$f;->a:I

    return p2
.end method

.method public final l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    iget p1, p0, Lcom/appbrain/q/q$f;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/appbrain/q/q$f;->a:I

    return-object p2
.end method

.method public final m(Lcom/appbrain/q/c;Lcom/appbrain/q/c;)Lcom/appbrain/q/c;
    .locals 1

    iget p2, p0, Lcom/appbrain/q/q$f;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Lcom/appbrain/q/c;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/appbrain/q/q$f;->a:I

    return-object p1
.end method

.method public final n(ZDZD)D
    .locals 0

    iget p1, p0, Lcom/appbrain/q/q$f;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p4

    invoke-static {p4, p5}, Lcom/appbrain/q/s;->b(J)I

    move-result p4

    add-int/2addr p1, p4

    iput p1, p0, Lcom/appbrain/q/q$f;->a:I

    return-wide p2
.end method

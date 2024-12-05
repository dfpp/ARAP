.class final Lcom/appbrain/q/q$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/q/q$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/q/q$c$a;
    }
.end annotation


# static fields
.field static final a:Lcom/appbrain/q/q$c;

.field static final b:Lcom/appbrain/q/q$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/q/q$c;

    invoke-direct {v0}, Lcom/appbrain/q/q$c;-><init>()V

    sput-object v0, Lcom/appbrain/q/q$c;->a:Lcom/appbrain/q/q$c;

    new-instance v0, Lcom/appbrain/q/q$c$a;

    invoke-direct {v0}, Lcom/appbrain/q/q$c$a;-><init>()V

    sput-object v0, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appbrain/q/x;Lcom/appbrain/q/x;)Lcom/appbrain/q/x;
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/appbrain/q/q;

    invoke-virtual {v0, p0, p2}, Lcom/appbrain/q/q;->B(Lcom/appbrain/q/q$c;Lcom/appbrain/q/x;)Z

    return-object p1

    :cond_1
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

.method public final b(Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

.method public final c(ZFZF)F
    .locals 0

    if-ne p1, p3, :cond_0

    cmpl-float p1, p2, p4

    if-nez p1, :cond_0

    return p2

    :cond_0
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

.method public final d(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lcom/appbrain/q/q;

    check-cast p3, Lcom/appbrain/q/x;

    invoke-virtual {p1, p0, p3}, Lcom/appbrain/q/q;->B(Lcom/appbrain/q/q$c;Lcom/appbrain/q/x;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

.method public final e(ZIZI)I
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    :cond_0
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

.method public final f(Lcom/appbrain/q/s$b;Lcom/appbrain/q/s$b;)Lcom/appbrain/q/s$b;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

.method public final g(Lcom/appbrain/q/s$d;Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

.method public final h(Lcom/appbrain/q/s$c;Lcom/appbrain/q/s$c;)Lcom/appbrain/q/s$c;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

.method public final i(ZLcom/appbrain/q/j;ZLcom/appbrain/q/j;)Lcom/appbrain/q/j;
    .locals 0

    if-ne p1, p3, :cond_0

    invoke-virtual {p2, p4}, Lcom/appbrain/q/j;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

.method public final j(ZJZJ)J
    .locals 0

    if-ne p1, p4, :cond_0

    cmp-long p1, p2, p5

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

.method public final k(ZZZZ)Z
    .locals 0

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    return p2

    :cond_0
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

.method public final l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-ne p1, p3, :cond_0

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

.method public final m(Lcom/appbrain/q/c;Lcom/appbrain/q/c;)Lcom/appbrain/q/c;
    .locals 0

    invoke-virtual {p1, p2}, Lcom/appbrain/q/c;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

.method public final n(ZDZD)D
    .locals 0

    if-ne p1, p4, :cond_0

    cmpl-double p1, p2, p5

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    sget-object p1, Lcom/appbrain/q/q$c;->b:Lcom/appbrain/q/q$c$a;

    throw p1
.end method

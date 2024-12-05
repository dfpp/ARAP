.class public final Lcom/appbrain/q/q$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/q/q$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appbrain/q/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "g"
.end annotation


# static fields
.field public static final a:Lcom/appbrain/q/q$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appbrain/q/q$g;

    invoke-direct {v0}, Lcom/appbrain/q/q$g;-><init>()V

    sput-object v0, Lcom/appbrain/q/q$g;->a:Lcom/appbrain/q/q$g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/appbrain/q/x;Lcom/appbrain/q/x;)Lcom/appbrain/q/x;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/appbrain/q/x;->b()Lcom/appbrain/q/x$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/appbrain/q/x$a;->e(Lcom/appbrain/q/x;)Lcom/appbrain/q/x$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/appbrain/q/x$a;->i()Lcom/appbrain/q/x;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public final b(Z)V
    .locals 0

    return-void
.end method

.method public final c(ZFZF)F
    .locals 0

    if-eqz p3, :cond_0

    return p4

    :cond_0
    return p2
.end method

.method public final d(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    check-cast p2, Lcom/appbrain/q/x;

    check-cast p3, Lcom/appbrain/q/x;

    invoke-virtual {p0, p2, p3}, Lcom/appbrain/q/q$g;->a(Lcom/appbrain/q/x;Lcom/appbrain/q/x;)Lcom/appbrain/q/x;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p3
.end method

.method public final e(ZIZI)I
    .locals 0

    if-eqz p3, :cond_0

    return p4

    :cond_0
    return p2
.end method

.method public final f(Lcom/appbrain/q/s$b;Lcom/appbrain/q/s$b;)Lcom/appbrain/q/s$b;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/appbrain/q/s$d;->a()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/appbrain/q/s$b;->c(I)Lcom/appbrain/q/s$b;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    return-object p1

    :cond_2
    return-object p2
.end method

.method public final g(Lcom/appbrain/q/s$d;Lcom/appbrain/q/s$d;)Lcom/appbrain/q/s$d;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/appbrain/q/s$d;->a()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/appbrain/q/s$d;->g(I)Lcom/appbrain/q/s$d;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    return-object p1

    :cond_2
    return-object p2
.end method

.method public final h(Lcom/appbrain/q/s$c;Lcom/appbrain/q/s$c;)Lcom/appbrain/q/s$c;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p1}, Lcom/appbrain/q/s$d;->a()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/appbrain/q/s$c;->c(I)Lcom/appbrain/q/s$c;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    return-object p1

    :cond_2
    return-object p2
.end method

.method public final i(ZLcom/appbrain/q/j;ZLcom/appbrain/q/j;)Lcom/appbrain/q/j;
    .locals 0

    if-eqz p3, :cond_0

    return-object p4

    :cond_0
    return-object p2
.end method

.method public final j(ZJZJ)J
    .locals 0

    if-eqz p4, :cond_0

    return-wide p5

    :cond_0
    return-wide p2
.end method

.method public final k(ZZZZ)Z
    .locals 0

    if-eqz p3, :cond_0

    return p4

    :cond_0
    return p2
.end method

.method public final l(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_0

    return-object p4

    :cond_0
    return-object p2
.end method

.method public final m(Lcom/appbrain/q/c;Lcom/appbrain/q/c;)Lcom/appbrain/q/c;
    .locals 1

    invoke-static {}, Lcom/appbrain/q/c;->a()Lcom/appbrain/q/c;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lcom/appbrain/q/c;->c(Lcom/appbrain/q/c;Lcom/appbrain/q/c;)Lcom/appbrain/q/c;

    move-result-object p1

    return-object p1
.end method

.method public final n(ZDZD)D
    .locals 0

    if-eqz p4, :cond_0

    return-wide p5

    :cond_0
    return-wide p2
.end method

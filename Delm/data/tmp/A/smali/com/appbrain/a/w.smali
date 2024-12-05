.class public final Lcom/appbrain/a/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/appbrain/c$c;

.field private final d:Lcom/appbrain/c$b;

.field private final e:Lcom/appbrain/c$a;

.field private final f:Lcom/appbrain/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appbrain/a/w;-><init>(Lcom/appbrain/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/appbrain/a/w;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appbrain/a/w;->b:Ljava/lang/String;

    iget-object p2, p1, Lcom/appbrain/a/w;->c:Lcom/appbrain/c$c;

    iput-object p2, p0, Lcom/appbrain/a/w;->c:Lcom/appbrain/c$c;

    iget-object p2, p1, Lcom/appbrain/a/w;->d:Lcom/appbrain/c$b;

    iput-object p2, p0, Lcom/appbrain/a/w;->d:Lcom/appbrain/c$b;

    iget-object p2, p1, Lcom/appbrain/a/w;->e:Lcom/appbrain/c$a;

    iput-object p2, p0, Lcom/appbrain/a/w;->e:Lcom/appbrain/c$a;

    iget-object p1, p1, Lcom/appbrain/a/w;->f:Lcom/appbrain/b;

    iput-object p1, p0, Lcom/appbrain/a/w;->f:Lcom/appbrain/b;

    return-void
.end method

.method public constructor <init>(Lcom/appbrain/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lcom/appbrain/c;

    invoke-direct {p1}, Lcom/appbrain/c;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/appbrain/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/w;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/appbrain/c;->f()Lcom/appbrain/c$c;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/w;->c:Lcom/appbrain/c$c;

    invoke-virtual {p1}, Lcom/appbrain/c;->e()Lcom/appbrain/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/w;->d:Lcom/appbrain/c$b;

    invoke-virtual {p1}, Lcom/appbrain/c;->d()Lcom/appbrain/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/appbrain/a/w;->e:Lcom/appbrain/c$a;

    invoke-virtual {p1}, Lcom/appbrain/c;->a()Lcom/appbrain/b;

    move-result-object p1

    iput-object p1, p0, Lcom/appbrain/a/w;->f:Lcom/appbrain/b;

    return-void
.end method

.method public static a(Lcom/appbrain/b;)Lcom/appbrain/b;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/appbrain/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad id \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not an interstitial id. Using no ad id instead."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V

    const/4 v0, 0x6

    const-string v1, "AppBrain"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final b()Lcom/appbrain/c$c;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/w;->c:Lcom/appbrain/c$c;

    return-object v0
.end method

.method public final c()Lcom/appbrain/c$b;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/w;->d:Lcom/appbrain/c$b;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/appbrain/a/w;->c:Lcom/appbrain/c$c;

    sget-object v1, Lcom/appbrain/c$c;->b:Lcom/appbrain/c$c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/appbrain/a/w;->d:Lcom/appbrain/c$b;

    sget-object v1, Lcom/appbrain/c$b;->b:Lcom/appbrain/c$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/appbrain/c$a;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/w;->e:Lcom/appbrain/c$a;

    return-object v0
.end method

.method public final g()Lcom/appbrain/b;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/w;->f:Lcom/appbrain/b;

    return-object v0
.end method

.method public final h()Lcom/appbrain/b;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/a/w;->f:Lcom/appbrain/b;

    invoke-static {v0}, Lcom/appbrain/a/w;->a(Lcom/appbrain/b;)Lcom/appbrain/b;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterstitialOptions{customAnalytics=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appbrain/a/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appbrain/a/w;->c:Lcom/appbrain/c$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appbrain/a/w;->d:Lcom/appbrain/c$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screenType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appbrain/a/w;->e:Lcom/appbrain/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appbrain/a/w;->f:Lcom/appbrain/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

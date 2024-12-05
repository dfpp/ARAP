.class Lcom/appbrain/n/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/n/c$c;,
        Lcom/appbrain/n/c$d;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/appbrain/n/a$c;

.field private final c:Lcom/appbrain/p/e;

.field private final d:Lcom/appbrain/n/c$d;

.field private final e:J

.field private final f:J

.field private g:Lcom/appbrain/n/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/appbrain/n/a$c;Lcom/appbrain/p/e;Lcom/appbrain/n/c$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appbrain/n/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/appbrain/n/c;->b:Lcom/appbrain/n/a$c;

    iput-object p3, p0, Lcom/appbrain/n/c;->c:Lcom/appbrain/p/e;

    iput-object p4, p0, Lcom/appbrain/n/c;->d:Lcom/appbrain/n/c$d;

    invoke-static {}, Lcom/appbrain/a/l1;->d()Lcom/appbrain/a/l1;

    const-string p1, "medinloti"

    const-wide/16 p2, 0x1388

    invoke-static {p1, p2, p3}, Lcom/appbrain/a/l1;->c(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/appbrain/n/c;->e:J

    invoke-static {}, Lcom/appbrain/a/l1;->d()Lcom/appbrain/a/l1;

    const-string p1, "medinshoti"

    const-wide/16 p2, 0xbb8

    invoke-static {p1, p2, p3}, Lcom/appbrain/a/l1;->c(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/appbrain/n/c;->f:J

    return-void
.end method

.method static synthetic b(Lcom/appbrain/n/c;)Lcom/appbrain/n/c$c;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    return-object p0
.end method

.method static synthetic h(Lcom/appbrain/n/c;Lcom/appbrain/n/c$c;)Lcom/appbrain/n/c$c;
    .locals 0

    iput-object p1, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    return-object p1
.end method

.method private j(Ljava/util/Set;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/appbrain/o/j;->f()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mediated interstitial from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appbrain/n/c;->c:Lcom/appbrain/p/e;

    invoke-virtual {v1}, Lcom/appbrain/p/e;->M()Lcom/appbrain/p/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "AppBrain"

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", but ignoring because of unexpected state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic k(Lcom/appbrain/n/c;)Lcom/appbrain/p/e;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/c;->c:Lcom/appbrain/p/e;

    return-object p0
.end method

.method private l(Lcom/appbrain/n/h;)V
    .locals 3

    sget-object v0, Lcom/appbrain/n/c$c;->e:Lcom/appbrain/n/c$c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to open: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/appbrain/n/c;->j(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appbrain/n/c;->o()V

    iget-object v0, p0, Lcom/appbrain/n/c;->d:Lcom/appbrain/n/c$d;

    invoke-interface {v0, p1}, Lcom/appbrain/n/c$d;->g(Lcom/appbrain/n/h;)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/appbrain/n/c;)Lcom/appbrain/n/c$d;
    .locals 0

    iget-object p0, p0, Lcom/appbrain/n/c;->d:Lcom/appbrain/n/c$d;

    return-object p0
.end method


# virtual methods
.method final a()Lcom/appbrain/n/c$c;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    return-object v0
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lcom/appbrain/n/c$c;->b:Lcom/appbrain/n/c$c;

    sget-object v1, Lcom/appbrain/n/c$c;->c:Lcom/appbrain/n/c$c;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "loaded"

    invoke-direct {p0, v0, v1}, Lcom/appbrain/n/c;->j(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appbrain/n/c$c;->d:Lcom/appbrain/n/c$c;

    iput-object v0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    iget-object v0, p0, Lcom/appbrain/n/c;->d:Lcom/appbrain/n/c$d;

    invoke-interface {v0}, Lcom/appbrain/n/c$d;->a()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    sget-object v0, Lcom/appbrain/n/c$c;->e:Lcom/appbrain/n/c$c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "opened"

    invoke-direct {p0, v0, v1}, Lcom/appbrain/n/c;->j(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appbrain/n/c$c;->f:Lcom/appbrain/n/c$c;

    iput-object v0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    iget-object v0, p0, Lcom/appbrain/n/c;->d:Lcom/appbrain/n/c$d;

    invoke-interface {v0}, Lcom/appbrain/n/c$d;->b()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    sget-object v0, Lcom/appbrain/n/c$c;->e:Lcom/appbrain/n/c$c;

    sget-object v1, Lcom/appbrain/n/c$c;->f:Lcom/appbrain/n/c$c;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "closed"

    invoke-direct {p0, v0, v1}, Lcom/appbrain/n/c;->j(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appbrain/n/c;->o()V

    iget-object v0, p0, Lcom/appbrain/n/c;->d:Lcom/appbrain/n/c$d;

    invoke-interface {v0}, Lcom/appbrain/n/c$d;->d()V

    :cond_0
    return-void
.end method

.method public final f(Lcom/appbrain/n/h;)V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    sget-object v1, Lcom/appbrain/n/c$c;->e:Lcom/appbrain/n/c$c;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/appbrain/n/c;->l(Lcom/appbrain/n/h;)V

    return-void

    :cond_0
    sget-object v0, Lcom/appbrain/n/c$c;->b:Lcom/appbrain/n/c$c;

    sget-object v1, Lcom/appbrain/n/c$c;->c:Lcom/appbrain/n/c$c;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to load: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/appbrain/n/c;->j(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/appbrain/n/c;->o()V

    iget-object v0, p0, Lcom/appbrain/n/c;->d:Lcom/appbrain/n/c$d;

    invoke-interface {v0, p1}, Lcom/appbrain/n/c$d;->f(Lcom/appbrain/n/h;)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    sget-object v1, Lcom/appbrain/n/c$c;->e:Lcom/appbrain/n/c$c;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/appbrain/n/c$c;->f:Lcom/appbrain/n/c$c;

    iput-object v0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    :cond_0
    sget-object v0, Lcom/appbrain/n/c$c;->f:Lcom/appbrain/n/c$c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "clicked"

    invoke-direct {p0, v0, v1}, Lcom/appbrain/n/c;->j(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appbrain/n/c;->d:Lcom/appbrain/n/c$d;

    invoke-interface {v0}, Lcom/appbrain/n/c$d;->e()V

    :cond_1
    return-void
.end method

.method final i(Z)V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/appbrain/n/c$c;->b:Lcom/appbrain/n/c$c;

    iput-object v0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting mediated interstitial from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appbrain/n/c;->c:Lcom/appbrain/p/e;

    invoke-virtual {v2}, Lcom/appbrain/p/e;->M()Lcom/appbrain/p/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppBrain"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appbrain/n/c;->c:Lcom/appbrain/p/e;

    invoke-static {v0, p1}, Lcom/appbrain/n/a;->d(Lcom/appbrain/p/e;Z)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/appbrain/n/c;->b:Lcom/appbrain/n/a$c;

    iget-object v1, p0, Lcom/appbrain/n/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p0}, Lcom/appbrain/n/a$c;->b(Landroid/content/Context;Ljava/lang/String;Lcom/appbrain/mediation/AppBrainInterstitialAdapter$a;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/appbrain/n/h;->e:Lcom/appbrain/n/h;

    invoke-virtual {p0, p1}, Lcom/appbrain/n/c;->f(Lcom/appbrain/n/h;)V

    return-void

    :cond_1
    new-instance p1, Lcom/appbrain/n/c$a;

    invoke-direct {p1, p0}, Lcom/appbrain/n/c$a;-><init>(Lcom/appbrain/n/c;)V

    iget-wide v0, p0, Lcom/appbrain/n/c;->e:J

    invoke-static {p1, v0, v1}, Lcom/appbrain/o/j;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method final m()Z
    .locals 4

    iget-object v0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    sget-object v1, Lcom/appbrain/n/c$c;->d:Lcom/appbrain/n/c$c;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/appbrain/n/c$c;->e:Lcom/appbrain/n/c$c;

    iput-object v0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Showing mediated interstitial from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/appbrain/n/c;->c:Lcom/appbrain/p/e;

    invoke-virtual {v3}, Lcom/appbrain/p/e;->M()Lcom/appbrain/p/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AppBrain"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/appbrain/n/c;->b:Lcom/appbrain/n/a$c;

    invoke-virtual {v0}, Lcom/appbrain/n/a$c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/appbrain/n/h;->e:Lcom/appbrain/n/h;

    invoke-direct {p0, v0}, Lcom/appbrain/n/c;->l(Lcom/appbrain/n/h;)V

    return v2

    :cond_1
    new-instance v0, Lcom/appbrain/n/c$b;

    invoke-direct {v0, p0}, Lcom/appbrain/n/c$b;-><init>(Lcom/appbrain/n/c;)V

    iget-wide v1, p0, Lcom/appbrain/n/c;->f:J

    invoke-static {v0, v1, v2}, Lcom/appbrain/o/j;->d(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    return v0
.end method

.method final o()V
    .locals 3

    iget-object v0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    sget-object v1, Lcom/appbrain/n/c$c;->g:Lcom/appbrain/n/c$c;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying mediated interstitial from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appbrain/n/c;->c:Lcom/appbrain/p/e;

    invoke-virtual {v2}, Lcom/appbrain/p/e;->M()Lcom/appbrain/p/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppBrain"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/appbrain/n/c$c;->g:Lcom/appbrain/n/c$c;

    iput-object v0, p0, Lcom/appbrain/n/c;->g:Lcom/appbrain/n/c$c;

    iget-object v0, p0, Lcom/appbrain/n/c;->b:Lcom/appbrain/n/a$c;

    invoke-virtual {v0}, Lcom/appbrain/n/a$c;->c()V

    :cond_0
    return-void
.end method

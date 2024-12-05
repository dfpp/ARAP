.class public final Lcom/appbrain/o/s0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/o/s0$a;
    }
.end annotation


# static fields
.field private static a:J

.field private static b:Ljava/util/concurrent/CountDownLatch;

.field private static c:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/appbrain/o/s0;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static a(Lcom/appbrain/o/s0$a;I)I
    .locals 5

    sget-object v0, Lcom/appbrain/o/s0;->c:[J

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-wide v1, v0, p0

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-gez p0, :cond_0

    const-wide/high16 v3, -0x8000000000000000L

    xor-long/2addr v1, v3

    :cond_0
    int-to-long p0, p1

    rem-long/2addr v1, p0

    long-to-int p0, v1

    return p0
.end method

.method public static b()J
    .locals 4

    :try_start_0
    sget-object v0, Lcom/appbrain/o/s0;->b:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    :cond_0
    const-string v0, "Experiments not inited after 5s or interrupted!"

    invoke-static {v0}, Lcom/appbrain/o/i;->d(Ljava/lang/String;)V

    :goto_0
    sget-wide v0, Lcom/appbrain/o/s0;->a:J

    return-wide v0
.end method

.method static c(Lcom/appbrain/o/k0;Ljava/lang/String;)V
    .locals 4

    const-string v0, "expbits"

    invoke-virtual {p0, v0}, Lcom/appbrain/o/k0;->k(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appbrain/o/b;->a(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/appbrain/o/s0;->a:J

    invoke-virtual {p0}, Lcom/appbrain/o/k0;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-wide v1, Lcom/appbrain/o/s0;->a:J

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/appbrain/o/k0;->b(Ljava/lang/String;J)J

    move-result-wide p0

    sput-wide p0, Lcom/appbrain/o/s0;->a:J

    :goto_0
    invoke-static {}, Lcom/appbrain/o/s0$a;->values()[Lcom/appbrain/o/s0$a;

    move-result-object p0

    array-length p0, p0

    new-array p0, p0, [J

    sput-object p0, Lcom/appbrain/o/s0;->c:[J

    sget-wide p0, Lcom/appbrain/o/s0;->a:J

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :goto_1
    sget-object v0, Lcom/appbrain/o/s0;->c:[J

    array-length v0, v0

    if-ge p1, v0, :cond_2

    invoke-static {}, Lcom/appbrain/o/s0$a;->values()[Lcom/appbrain/o/s0$a;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/appbrain/o/s0$a;->c(Lcom/appbrain/o/s0$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appbrain/o/s0;->c:[J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appbrain/o/b;->a(Ljava/lang/String;)J

    move-result-wide v1

    aput-wide v1, v0, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/appbrain/o/s0;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

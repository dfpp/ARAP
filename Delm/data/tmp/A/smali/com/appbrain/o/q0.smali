.class public final Lcom/appbrain/o/q0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lcom/appbrain/o/q;

.field private static final b:Lcom/appbrain/o/t;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/appbrain/o/q0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (deferred init)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cached_user_agent"

    invoke-direct {v0, v1, v2}, Lcom/appbrain/o/q0$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appbrain/o/q0;->a:Lcom/appbrain/o/q;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Lcom/appbrain/o/q0$b;

    invoke-direct {v1}, Lcom/appbrain/o/q0$b;-><init>()V

    new-instance v2, Lcom/appbrain/o/s;

    const-wide/16 v3, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v1}, Lcom/appbrain/o/s;-><init>(JLcom/appbrain/o/o;)V

    sput-object v2, Lcom/appbrain/o/q0;->b:Lcom/appbrain/o/t;

    return-void
.end method

.method public static a()Lcom/appbrain/o/t;
    .locals 1

    sget-object v0, Lcom/appbrain/o/q0;->a:Lcom/appbrain/o/q;

    return-object v0
.end method

.method public static b()Lcom/appbrain/o/t;
    .locals 1

    sget-object v0, Lcom/appbrain/o/q0;->b:Lcom/appbrain/o/t;

    return-object v0
.end method

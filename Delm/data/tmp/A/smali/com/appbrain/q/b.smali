.class public final Lcom/appbrain/q/b;
.super Ljava/lang/RuntimeException;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/appbrain/q/t;
    .locals 2

    new-instance v0, Lcom/appbrain/q/t;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appbrain/q/t;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

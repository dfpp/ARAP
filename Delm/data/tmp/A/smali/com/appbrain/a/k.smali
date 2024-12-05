.class public final Lcom/appbrain/a/k;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final a:Lcom/appbrain/o/p;

.field static final b:Lcom/appbrain/o/p;

.field static final c:Lcom/appbrain/o/p;

.field private static final d:Lcom/appbrain/o/p;

.field public static final e:Lcom/appbrain/o/p;

.field static final f:Lcom/appbrain/o/p;

.field static final g:Lcom/appbrain/o/p;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "https://sdk.appbrain.com,https://sdk-b.apptornado.com"

    invoke-static {v0}, Lcom/appbrain/o/p;->b(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    move-result-object v0

    const-string v1, "pserver"

    invoke-virtual {v0, v1}, Lcom/appbrain/o/p$a;->i(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    const-string v1, "/api/pb?action="

    invoke-virtual {v0, v1}, Lcom/appbrain/o/p$a;->d(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    const-string v2, "ppath"

    invoke-virtual {v0, v2}, Lcom/appbrain/o/p$a;->o(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    const/16 v3, 0x1f96

    invoke-virtual {v0, v3}, Lcom/appbrain/o/p$a;->c(I)Lcom/appbrain/o/p$a;

    invoke-virtual {v0}, Lcom/appbrain/o/p$a;->b()Lcom/appbrain/o/p$a;

    invoke-virtual {v0}, Lcom/appbrain/o/p$a;->j()Lcom/appbrain/o/p;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/k;->a:Lcom/appbrain/o/p;

    const-string v0, "https://applift-a.apptornado.com,https://applift-b.apptornado.com"

    invoke-static {v0}, Lcom/appbrain/o/p;->b(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    move-result-object v0

    const-string v3, "adserver"

    invoke-virtual {v0, v3}, Lcom/appbrain/o/p$a;->i(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    invoke-virtual {v0}, Lcom/appbrain/o/p$a;->b()Lcom/appbrain/o/p$a;

    const/16 v3, 0x1f9c

    invoke-virtual {v0, v3}, Lcom/appbrain/o/p$a;->c(I)Lcom/appbrain/o/p$a;

    invoke-virtual {v0}, Lcom/appbrain/o/p$a;->j()Lcom/appbrain/o/p;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/k;->b:Lcom/appbrain/o/p;

    invoke-virtual {v0}, Lcom/appbrain/o/p;->a()Lcom/appbrain/o/p$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/appbrain/o/p$a;->d(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    invoke-virtual {v0, v2}, Lcom/appbrain/o/p$a;->o(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    invoke-virtual {v0}, Lcom/appbrain/o/p$a;->j()Lcom/appbrain/o/p;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/k;->c:Lcom/appbrain/o/p;

    const-string v0, "https://applift-a.apptornado.com"

    invoke-static {v0}, Lcom/appbrain/o/p;->b(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    move-result-object v0

    const-string v1, "owserver"

    invoke-virtual {v0, v1}, Lcom/appbrain/o/p$a;->i(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    invoke-virtual {v0}, Lcom/appbrain/o/p$a;->b()Lcom/appbrain/o/p$a;

    invoke-virtual {v0, v3}, Lcom/appbrain/o/p$a;->c(I)Lcom/appbrain/o/p$a;

    invoke-virtual {v0}, Lcom/appbrain/o/p$a;->j()Lcom/appbrain/o/p;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/k;->d:Lcom/appbrain/o/p;

    invoke-virtual {v0}, Lcom/appbrain/o/p;->a()Lcom/appbrain/o/p$a;

    move-result-object v0

    const-string v1, "/offerwall/"

    invoke-virtual {v0, v1}, Lcom/appbrain/o/p$a;->d(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    const-string v1, "offer_url"

    invoke-virtual {v0, v1}, Lcom/appbrain/o/p$a;->o(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    invoke-virtual {v0}, Lcom/appbrain/o/p$a;->j()Lcom/appbrain/o/p;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/k;->e:Lcom/appbrain/o/p;

    sget-object v0, Lcom/appbrain/a/k;->d:Lcom/appbrain/o/p;

    invoke-virtual {v0}, Lcom/appbrain/o/p;->a()Lcom/appbrain/o/p$a;

    move-result-object v0

    const-string v1, "/no-google-play"

    invoke-virtual {v0, v1}, Lcom/appbrain/o/p$a;->d(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    const-string v1, "noplaypath"

    invoke-virtual {v0, v1}, Lcom/appbrain/o/p$a;->o(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    invoke-virtual {v0}, Lcom/appbrain/o/p$a;->j()Lcom/appbrain/o/p;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/k;->f:Lcom/appbrain/o/p;

    const-string v0, "https://mediation1.apptornado.com"

    invoke-static {v0}, Lcom/appbrain/o/p;->b(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    move-result-object v0

    const-string v1, "medserver"

    invoke-virtual {v0, v1}, Lcom/appbrain/o/p$a;->i(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    const-string v1, "/api/mediation?action="

    invoke-virtual {v0, v1}, Lcom/appbrain/o/p$a;->d(Ljava/lang/String;)Lcom/appbrain/o/p$a;

    invoke-virtual {v0}, Lcom/appbrain/o/p$a;->b()Lcom/appbrain/o/p$a;

    const/16 v1, 0x1fb1

    invoke-virtual {v0, v1}, Lcom/appbrain/o/p$a;->c(I)Lcom/appbrain/o/p$a;

    invoke-virtual {v0}, Lcom/appbrain/o/p$a;->j()Lcom/appbrain/o/p;

    move-result-object v0

    sput-object v0, Lcom/appbrain/a/k;->g:Lcom/appbrain/o/p;

    return-void
.end method

.class public final Lcom/appbrain/o/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appbrain/o/c$b;,
        Lcom/appbrain/o/c$a;
    }
.end annotation


# static fields
.field private static b:Lcom/appbrain/o/c;


# instance fields
.field private volatile a:Lcom/appbrain/o/c$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;[BZ)Lcom/appbrain/o/c$a;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/appbrain/o/c;->e(Ljava/lang/String;[BZ)Lcom/appbrain/o/c$a;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-static {p1, p2, p3}, Lcom/appbrain/o/c;->f(Ljava/lang/String;[BZ)Ljava/lang/String;

    throw v0
.end method

.method public static declared-synchronized d()Lcom/appbrain/o/c;
    .locals 2

    const-class v0, Lcom/appbrain/o/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appbrain/o/c;->b:Lcom/appbrain/o/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appbrain/o/c;

    invoke-direct {v1}, Lcom/appbrain/o/c;-><init>()V

    sput-object v1, Lcom/appbrain/o/c;->b:Lcom/appbrain/o/c;

    :cond_0
    sget-object v1, Lcom/appbrain/o/c;->b:Lcom/appbrain/o/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e(Ljava/lang/String;[BZ)Lcom/appbrain/o/c$a;
    .locals 8

    if-eqz p1, :cond_0

    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ge v1, v3, :cond_9

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    :try_start_0
    iget-object v3, p0, Lcom/appbrain/o/c;->a:Lcom/appbrain/o/c$b;

    if-eqz v3, :cond_1

    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v5, p0, Lcom/appbrain/o/c;->a:Lcom/appbrain/o/c$b;

    invoke-interface {v5}, Lcom/appbrain/o/c$b;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    iget-object v5, p0, Lcom/appbrain/o/c;->a:Lcom/appbrain/o/c$b;

    invoke-interface {v5}, Lcom/appbrain/o/c$b;->b()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v5, "User-Agent"

    invoke-static {}, Lcom/appbrain/o/q0;->a()Lcom/appbrain/o/t;

    move-result-object v6

    invoke-interface {v6}, Lcom/appbrain/o/t;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2000

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    const-string v6, "Accept-Encoding"

    const-string v7, "identity"

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v6, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {v7, p2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, p2

    :goto_1
    const-string v7, "POST"

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    array-length v3, v6

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v3, "Content-Length"

    array-length v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v7, "application/octet-stream"

    invoke-virtual {v2, v3, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_2

    :cond_3
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v6, 0xc8

    if-ne v3, v6, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz p3, :cond_4

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_3
    move-object v4, p1

    invoke-static {v4}, Lcom/appbrain/o/d;->c(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Lcom/appbrain/o/d;->a(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v4, p1

    goto :goto_4

    :cond_5
    const/16 v5, 0x12e

    if-eq v3, v5, :cond_7

    const/16 v5, 0x12d

    if-ne v3, v5, :cond_6

    goto :goto_5

    :cond_6
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/appbrain/o/c;->f(Ljava/lang/String;[BZ)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4}, Lcom/appbrain/o/d;->a(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_4
    move v2, v3

    goto :goto_7

    :cond_7
    :goto_5
    :try_start_2
    const-string p1, "Location"

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v4}, Lcom/appbrain/o/d;->a(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v2, v3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    :try_start_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "cache is closed"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Temporary Android \'cache is closed\' problem"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    invoke-static {v4}, Lcom/appbrain/o/d;->a(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1

    :cond_9
    :goto_7
    new-instance p1, Lcom/appbrain/o/c$a;

    invoke-direct {p1, v2, v4}, Lcom/appbrain/o/c$a;-><init>(I[B)V

    return-object p1
.end method

.method private static f(Ljava/lang/String;[BZ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "GET"

    goto :goto_0

    :cond_0
    const-string p1, "POST"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p1, " (gzipped)"

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/appbrain/o/c$a;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/appbrain/o/c;->c(Ljava/lang/String;[BZ)Lcom/appbrain/o/c$a;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;[B)Lcom/appbrain/o/c$a;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/appbrain/o/c;->c(Ljava/lang/String;[BZ)Lcom/appbrain/o/c$a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Body can\'t be null for POST request."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

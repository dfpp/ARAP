.class public Lcom/appbrain/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final f:Lcom/appbrain/b;

.field public static final g:Lcom/appbrain/b;

.field public static final h:Lcom/appbrain/b;

.field public static final i:Lcom/appbrain/b;

.field public static final j:Lcom/appbrain/b;

.field public static final k:Lcom/appbrain/b;

.field public static final l:Lcom/appbrain/b;

.field public static final m:Lcom/appbrain/b;

.field public static final n:Lcom/appbrain/b;

.field public static final o:Lcom/appbrain/b;

.field private static final p:Ljava/util/Map;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/appbrain/b;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/appbrain/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/b;->f:Lcom/appbrain/b;

    new-instance v0, Lcom/appbrain/b;

    const/4 v2, 0x1

    const-string v3, "HOME_SCREEN"

    invoke-direct {v0, v2, v3}, Lcom/appbrain/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/b;->g:Lcom/appbrain/b;

    new-instance v0, Lcom/appbrain/b;

    const/4 v3, 0x2

    const-string v4, "STARTUP"

    invoke-direct {v0, v3, v4}, Lcom/appbrain/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/b;->h:Lcom/appbrain/b;

    new-instance v0, Lcom/appbrain/b;

    const/4 v4, 0x3

    const-string v5, "PAUSE"

    invoke-direct {v0, v4, v5}, Lcom/appbrain/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/b;->i:Lcom/appbrain/b;

    new-instance v0, Lcom/appbrain/b;

    const/4 v5, 0x4

    const-string v6, "EXIT"

    invoke-direct {v0, v5, v6}, Lcom/appbrain/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/b;->j:Lcom/appbrain/b;

    new-instance v0, Lcom/appbrain/b;

    const/4 v6, 0x5

    const-string v7, "LEVEL_START"

    invoke-direct {v0, v6, v7}, Lcom/appbrain/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/b;->k:Lcom/appbrain/b;

    new-instance v0, Lcom/appbrain/b;

    const/4 v7, 0x6

    const-string v8, "LEVEL_COMPLETE"

    invoke-direct {v0, v7, v8}, Lcom/appbrain/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/b;->l:Lcom/appbrain/b;

    new-instance v0, Lcom/appbrain/b;

    const/4 v8, 0x7

    const-string v9, "ACHIEVEMENTS"

    invoke-direct {v0, v8, v9}, Lcom/appbrain/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/b;->m:Lcom/appbrain/b;

    new-instance v0, Lcom/appbrain/b;

    const/16 v9, 0x8

    const-string v10, "LEADERBOARDS"

    invoke-direct {v0, v9, v10}, Lcom/appbrain/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/b;->n:Lcom/appbrain/b;

    new-instance v0, Lcom/appbrain/b;

    const/16 v10, 0x9

    const-string v11, "STORE"

    invoke-direct {v0, v10, v11}, Lcom/appbrain/b;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/appbrain/b;->o:Lcom/appbrain/b;

    const/16 v11, 0xa

    new-array v12, v11, [Lcom/appbrain/b;

    sget-object v13, Lcom/appbrain/b;->f:Lcom/appbrain/b;

    aput-object v13, v12, v1

    sget-object v13, Lcom/appbrain/b;->g:Lcom/appbrain/b;

    aput-object v13, v12, v2

    sget-object v2, Lcom/appbrain/b;->h:Lcom/appbrain/b;

    aput-object v2, v12, v3

    sget-object v2, Lcom/appbrain/b;->i:Lcom/appbrain/b;

    aput-object v2, v12, v4

    sget-object v2, Lcom/appbrain/b;->j:Lcom/appbrain/b;

    aput-object v2, v12, v5

    sget-object v2, Lcom/appbrain/b;->k:Lcom/appbrain/b;

    aput-object v2, v12, v6

    sget-object v2, Lcom/appbrain/b;->l:Lcom/appbrain/b;

    aput-object v2, v12, v7

    sget-object v2, Lcom/appbrain/b;->m:Lcom/appbrain/b;

    aput-object v2, v12, v8

    sget-object v2, Lcom/appbrain/b;->n:Lcom/appbrain/b;

    aput-object v2, v12, v9

    aput-object v0, v12, v10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v11}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    if-ge v1, v11, :cond_0

    aget-object v2, v12, v1

    iget-object v3, v2, Lcom/appbrain/b;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/appbrain/b;->p:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/appbrain/b;-><init>(ILjava/lang/String;ZZ)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/appbrain/b;->b:I

    iput-object p2, p0, Lcom/appbrain/b;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/appbrain/b;->d:Z

    iput-boolean p4, p0, Lcom/appbrain/b;->e:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/appbrain/b;
    .locals 12

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/appbrain/a/h1;->b()Lcom/appbrain/a/h1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appbrain/a/h1;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x6

    const/4 v7, 0x0

    if-ne v2, v3, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_2

    aget-char v9, v2, v8

    const-string v10, "0123456789ABCDEF"

    invoke-virtual {v10, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appbrain/o/i0;->e()Lcom/appbrain/o/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appbrain/o/i0;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appbrain/o/b;->a(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v7

    const-string v2, "%04X"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    :goto_2
    const/4 v5, 0x0

    :cond_5
    if-nez v5, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid custom id string \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'. Using no ad id instead."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppBrain"

    invoke-static {v6, v1, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_6
    new-instance v0, Lcom/appbrain/b;

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CUSTOM(\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "INT-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "BAN-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {v0, v2, p0, v3, v1}, Lcom/appbrain/b;-><init>(ILjava/lang/String;ZZ)V

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/appbrain/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/appbrain/b;->p:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appbrain/b;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/appbrain/b;->a(Ljava/lang/String;)Lcom/appbrain/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/appbrain/b;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/b;->e:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appbrain/b;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lcom/appbrain/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/appbrain/b;

    iget v2, p0, Lcom/appbrain/b;->b:I

    iget v3, p1, Lcom/appbrain/b;->b:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/appbrain/b;->d:Z

    iget-boolean v3, p1, Lcom/appbrain/b;->d:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/appbrain/b;->e:Z

    iget-boolean p1, p1, Lcom/appbrain/b;->e:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/appbrain/b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/appbrain/b;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/appbrain/b;->e:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appbrain/b;->c:Ljava/lang/String;

    return-object v0
.end method

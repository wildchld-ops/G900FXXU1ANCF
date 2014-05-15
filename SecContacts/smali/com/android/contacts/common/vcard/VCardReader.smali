.class public Lcom/android/contacts/common/vcard/VCardReader;
.super Ljava/lang/Object;
.source "VCardReader.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/VCardReader$VCardData;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mCounter:I

.field private mMaxEntryCount:I

.field private mStart:I

.field mVCardParser21:Lcom/android/vcard/VCardParser_V21;

.field mVCardParser30:Lcom/android/vcard/VCardParser_V30;

.field mVcard:Lcom/android/vcard/VCardEntry;

.field private mVersion:I

.field vData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/vcard/VCardReader$VCardData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    iput-object v2, p0, Lcom/android/contacts/common/vcard/VCardReader;->vData:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/common/vcard/VCardReader;->vData:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/contacts/common/vcard/VCardReader;->mCounter:I

    iput p3, p0, Lcom/android/contacts/common/vcard/VCardReader;->mStart:I

    iput p4, p0, Lcom/android/contacts/common/vcard/VCardReader;->mMaxEntryCount:I

    const v2, -0x3fffffff

    :try_start_0
    invoke-direct {p0, v2, p2}, Lcom/android/contacts/common/vcard/VCardReader;->initFromContentUri(ILandroid/net/Uri;)V
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget v2, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v2, p2}, Lcom/android/contacts/common/vcard/VCardReader;->initFromContentUri(ILandroid/net/Uri;)V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/android/vcard/exception/VCardException;->printStackTrace()V

    goto :goto_0
.end method

.method private initFromContentUri(ILandroid/net/Uri;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput p1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVersion:I

    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/common/vcard/VCardReader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "VCardReader"

    const-string v4, "Opened File"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/contacts/common/vcard/VCardReader;->parseVcard(ILjava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "VCardReader"

    const-string v4, "Closed File"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v3, "VCardReader"

    const-string v4, "File Not Found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    const-string v3, "VCardReader"

    const-string v4, "Closed File"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_4
    const-string v3, "VCardReader"

    const-string v4, "IO Exception"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    const-string v3, "VCardReader"

    const-string v4, "Closed File"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    const-string v4, "VCardReader"

    const-string v5, "Closed File"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_2
    :goto_1
    throw v3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private parseV21card(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    const-string v2, "VCardReader"

    const-string v3, "parseV21card Called"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVCardParser21:Lcom/android/vcard/VCardParser_V21;

    new-instance v1, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v1}, Lcom/android/vcard/VCardEntryConstructor;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVCardParser21:Lcom/android/vcard/VCardParser_V21;

    invoke-virtual {v2, p1, v1}, Lcom/android/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseV30card(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    const-string v2, "VCardReader"

    const-string v3, "parseV30card Called"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVCardParser30:Lcom/android/vcard/VCardParser_V30;

    new-instance v1, Lcom/android/vcard/VCardEntryConstructor;

    const v2, -0x3fffffff

    invoke-direct {v1, v2}, Lcom/android/vcard/VCardEntryConstructor;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVCardParser30:Lcom/android/vcard/VCardParser_V30;

    invoke-virtual {v2, p1, v1}, Lcom/android/vcard/VCardParser_V30;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseVcard(ILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    const v0, -0x3fffffff

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/contacts/common/vcard/VCardReader;->parseV30card(Ljava/io/InputStream;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/contacts/common/vcard/VCardReader;->parseV21card(Ljava/io/InputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public final getContactNumber()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$PhoneData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getEmailAddress()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EmailData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVCardDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/vcard/VCardReader$VCardData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardReader;->vData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getVCardEntryCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardReader;->vData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onEnd()V
    .locals 0

    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 3

    iget v1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mStart:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mCounter:I

    iget v2, p0, Lcom/android/contacts/common/vcard/VCardReader;->mStart:I

    if-lt v1, v2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    new-instance v0, Lcom/android/contacts/common/vcard/VCardReader$VCardData;

    invoke-direct {v0}, Lcom/android/contacts/common/vcard/VCardReader$VCardData;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardReader;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/VCardReader$VCardData;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardReader;->getContactNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardReader;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/vcard/VCardReader$VCardData;->setAddress(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardReader;->vData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mMaxEntryCount:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardReader;->vData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/common/vcard/VCardReader;->mMaxEntryCount:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVersion:I

    const v2, -0x3fffffff

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVCardParser30:Lcom/android/vcard/VCardParser_V30;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVCardParser30:Lcom/android/vcard/VCardParser_V30;

    invoke-virtual {v1}, Lcom/android/vcard/VCardParser_V30;->cancel()V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mCounter:I

    return-void

    :cond_3
    iget v1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVersion:I

    sget v2, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVCardParser21:Lcom/android/vcard/VCardParser_V21;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardReader;->mVCardParser21:Lcom/android/vcard/VCardParser_V21;

    invoke-virtual {v1}, Lcom/android/vcard/VCardParser_V21;->cancel()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

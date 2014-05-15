.class public Lcom/android/contacts/model/dataitem/ChatOnDataItem;
.super Lcom/android/contacts/model/dataitem/DataItem;
.source "ChatOnDataItem.java"


# instance fields
.field public mChatOnId:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mIsVapp:Z

.field public mSamsungAccountName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/dataitem/ChatOnDataItem;->mSamsungAccountName:Ljava/lang/String;

    const-string v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/dataitem/ChatOnDataItem;->mChatOnId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/contacts/model/dataitem/ChatOnDataItem;->mIsVapp:Z

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/dataitem/ChatOnDataItem;->mSamsungAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getChatOnId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/model/dataitem/ChatOnDataItem;->mChatOnId:Ljava/lang/String;

    return-object v0
.end method

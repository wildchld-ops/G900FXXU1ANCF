.class public Lcom/android/dialer/calllog/CallLogGroupBuilder;
.super Ljava/lang/Object;
.source "CallLogGroupBuilder.java"

# interfaces
.implements Lcom/samsung/dialer/impl/CallLogGroupingImpl$GroupCreatorImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

.field private mGroupingImpl:Lcom/samsung/dialer/impl/CallLogGroupingImpl;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/dialer/impl/CallLogGroupingImpl;-><init>(Landroid/content/Context;Lcom/samsung/dialer/impl/CallLogGroupingImpl$GroupCreatorImpl;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupingImpl:Lcom/samsung/dialer/impl/CallLogGroupingImpl;

    return-void
.end method


# virtual methods
.method public addGroupImpl(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(IIZ)V

    return-void
.end method

.method public addGroups(Landroid/database/Cursor;Z)V
    .locals 2

    const-string v0, "CallLogGroupBuilder"

    const-string v1, "******** addGroups ********"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupingImpl:Lcom/samsung/dialer/impl/CallLogGroupingImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->addGroups(Landroid/database/Cursor;Z)V

    return-void
.end method

.method compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/16 v9, 0x40

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    if-ne p1, p2, :cond_2

    :cond_1
    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v8, :cond_5

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v8, :cond_6

    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_4
    move v6, v7

    goto :goto_0

    :cond_5
    move-object v4, p1

    const-string v2, ""

    goto :goto_1

    :cond_6
    move-object v5, p2

    const-string v3, ""

    goto :goto_2
.end method

.method equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getGroupCountList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/dialer/calllog/GroupCount;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupingImpl:Lcom/samsung/dialer/impl/CallLogGroupingImpl;

    iget-object v0, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->groupCountList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSeperatorIDList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupingImpl:Lcom/samsung/dialer/impl/CallLogGroupingImpl;

    iget-object v0, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->seperatorIDList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStrSeparatorArray()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogGroupBuilder;->mGroupingImpl:Lcom/samsung/dialer/impl/CallLogGroupingImpl;

    iget-object v0, v0, Lcom/samsung/dialer/impl/CallLogGroupingImpl;->strSeparatorArray:[Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/samsung/contacts/model/MoreValuesDelta;
.super Ljava/lang/Object;
.source "MoreValuesDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/contacts/model/MoreValuesDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAfter:Landroid/content/ContentValues;

.field mBefore:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/contacts/model/MoreValuesDelta$1;

    invoke-direct {v0}, Lcom/samsung/contacts/model/MoreValuesDelta$1;-><init>()V

    sput-object v0, Lcom/samsung/contacts/model/MoreValuesDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAfter()Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-object v0
.end method

.method public isChanged()Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_5
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v6, :cond_7

    move v4, v5

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    goto :goto_0

    :cond_9
    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto/16 :goto_0
.end method

.method public setAfter(Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mAfter:Landroid/content/ContentValues;

    return-void
.end method

.method public setBefore(Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mBefore:Landroid/content/ContentValues;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mBefore:Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/contacts/model/MoreValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method

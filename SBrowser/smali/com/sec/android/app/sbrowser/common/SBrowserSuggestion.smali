.class public Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;
.super Ljava/lang/Object;
.source "SBrowserSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$1;,
        Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;,
        Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;
    }
.end annotation


# static fields
.field public static final URL_WHAT_YOU_TYPED:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mDisplayText:Ljava/lang/String;

.field private final mIsSavePage:Z

.field private final mIsSavePageRead:Z

.field private final mIsStarred:Z

.field private final mRelevance:I

.field private final mSavePageId:I

.field private final mSavePageURL:Ljava/lang/String;

.field private final mTransition:I

.field private final mType:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->URL_WHAT_YOU_TYPED:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->GetNativeType(I)Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mType:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mRelevance:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mTransition:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mDisplayText:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mDescription:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mUrl:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mIsStarred:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mIsSavePage:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mSavePageId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mSavePageURL:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mIsSavePageRead:Z

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->GetNativeType(I)Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mType:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mRelevance:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mTransition:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mDisplayText:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mDescription:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mUrl:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mIsStarred:Z

    iput-boolean p8, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mIsSavePage:Z

    iput p9, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mSavePageId:I

    iput-object p10, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mSavePageURL:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mIsSavePageRead:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mType:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mType:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mDisplayText:Ljava/lang/String;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mIsStarred:Z

    iget-boolean v3, v1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mIsStarred:Z

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mDisplayText:Ljava/lang/String;

    return-object v0
.end method

.method public getPageTransition()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mTransition:I

    return v0
.end method

.method public getRelevance()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mRelevance:I

    return v0
.end method

.method public getSBrowserSuggestionOrder()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$1;->$SwitchMap$com$sec$android$app$sbrowser$common$SBrowserSuggestion$Type:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mType:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->DIRECT:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->SAVEPAGE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->HISTORY:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->URL_WHAT_YOU_TYPE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->SEARCH_WHAT_YOU_TYPE:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getSavePageId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mSavePageId:I

    return v0
.end method

.method public getSavePageURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mSavePageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mType:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getsuggestionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mType:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    #getter for: Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->mNativeType:I
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->access$000(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;)I

    move-result v2

    mul-int/lit8 v0, v2, 0x25

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    return v2
.end method

.method public isSavePage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mIsSavePage:Z

    return v0
.end method

.method public isSavePageRead()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mIsSavePageRead:Z

    return v0
.end method

.method public isStarred()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mIsStarred:Z

    return v0
.end method

.method public isUrlSuggestion()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mType:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;->isUrl()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mType:Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " relevance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mRelevance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

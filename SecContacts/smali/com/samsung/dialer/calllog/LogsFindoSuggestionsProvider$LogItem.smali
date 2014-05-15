.class Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;
.super Ljava/lang/Object;
.source "LogsFindoSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogItem"
.end annotation


# instance fields
.field private mCNAPName:Ljava/lang/String;

.field private mCallIndiImage:Ljava/lang/String;

.field private mCallType:I

.field private mCountryISO:Ljava/lang/String;

.field private mE164NumberText:Ljava/lang/String;

.field private mGroupCount:I

.field private mId:I

.field private mImage1:Ljava/lang/String;

.field private mLogType:I

.field private mLookupURI:Ljava/lang/String;

.field private mNameText:Ljava/lang/String;

.field private mNumberText:Ljava/lang/String;

.field private mTimeText:J

.field final synthetic this$0:Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;


# direct methods
.method public constructor <init>(Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->this$0:Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mId:I

    iput-object p3, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mImage1:Ljava/lang/String;

    iput p4, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mLogType:I

    iput p5, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mCallType:I

    iput-object p6, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mNameText:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mCallIndiImage:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mNumberText:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mE164NumberText:Ljava/lang/String;

    iput-wide p11, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mTimeText:J

    iput-object p13, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mCNAPName:Ljava/lang/String;

    iput-object p14, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mCountryISO:Ljava/lang/String;

    iput-object p15, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mLookupURI:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;)I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mCallType:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;)I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mLogType:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mLookupURI:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCNAPName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mCNAPName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallType()I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mCallType:I

    return v0
.end method

.method public getCountryISO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mCountryISO:Ljava/lang/String;

    return-object v0
.end method

.method public getE164NumberText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mE164NumberText:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mGroupCount:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mId:I

    return v0
.end method

.method public getImage1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mImage1:Ljava/lang/String;

    return-object v0
.end method

.method public getLogType()I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mLogType:I

    return v0
.end method

.method public getNameText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mNameText:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mNumberText:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeText()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mTimeText:J

    return-wide v0
.end method

.method public setGroupCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mGroupCount:I

    return-void
.end method

.method public setImage1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/calllog/LogsFindoSuggestionsProvider$LogItem;->mImage1:Ljava/lang/String;

    return-void
.end method

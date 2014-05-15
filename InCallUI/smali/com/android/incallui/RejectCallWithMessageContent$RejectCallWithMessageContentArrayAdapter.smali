.class public Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RejectCallWithMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/RejectCallWithMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RejectCallWithMessageContentArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTextViewResourceId:I

.field final synthetic this$0:Lcom/android/incallui/RejectCallWithMessageContent;


# direct methods
.method public constructor <init>(Lcom/android/incallui/RejectCallWithMessageContent;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->this$0:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->init(Landroid/content/Context;II)V

    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, p4, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_0
    :try_start_0
    iget v3, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mTextViewResourceId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->this$0:Lcom/android/incallui/RejectCallWithMessageContent;

    #getter for: Lcom/android/incallui/RejectCallWithMessageContent;->RingingCallnumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/incallui/RejectCallWithMessageContent;->access$000(Lcom/android/incallui/RejectCallWithMessageContent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, -0x777778

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-object v2

    :cond_1
    move-object v2, p2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "RejectCallWithMessageContentArrayAdapter"

    const-string v4, "You must supply a resource ID for a TextView"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "RejectCallWithMessageContentArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private init(Landroid/content/Context;II)V
    .locals 1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mResource:I

    iget v0, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mTextViewResourceId:I

    if-nez v0, :cond_0

    const v0, 0x7f0801fc

    iput v0, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mTextViewResourceId:I

    :goto_0
    return-void

    :cond_0
    iput p3, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mTextViewResourceId:I

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/incallui/RejectCallWithMessageContent$RejectCallWithMessageContentArrayAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

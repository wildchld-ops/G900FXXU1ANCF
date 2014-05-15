.class public Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;
.super Ljava/lang/Object;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BodyTextViewProperty"
.end annotation


# instance fields
.field mLinkMask:I

.field mTextClickListener:Landroid/view/View$OnClickListener;

.field mTextSize:F

.field mTextSizeUnit:I

.field mTextTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListItem$BodyTextViewProperty;->mLinkMask:I

    return-void
.end method

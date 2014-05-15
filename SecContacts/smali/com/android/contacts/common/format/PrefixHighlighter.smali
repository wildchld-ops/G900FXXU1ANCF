.class public Lcom/android/contacts/common/format/PrefixHighlighter;
.super Ljava/lang/Object;
.source "PrefixHighlighter.java"


# instance fields
.field private mImpl:Lcom/android/contacts/common/format/PrefixHighlighterImpl;

.field private final mPrefixHighlightColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/contacts/common/format/PrefixHighlighterImpl;

    invoke-direct {v0}, Lcom/android/contacts/common/format/PrefixHighlighterImpl;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/format/PrefixHighlighter;->mImpl:Lcom/android/contacts/common/format/PrefixHighlighterImpl;

    iput p1, p0, Lcom/android/contacts/common/format/PrefixHighlighter;->mPrefixHighlightColor:I

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/format/PrefixHighlighter;->mImpl:Lcom/android/contacts/common/format/PrefixHighlighterImpl;

    iget v1, p0, Lcom/android/contacts/common/format/PrefixHighlighter;->mPrefixHighlightColor:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/contacts/common/format/PrefixHighlighterImpl;->doApply(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

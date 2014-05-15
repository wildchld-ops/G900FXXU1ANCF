.class public Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;
.super Ljava/lang/Object;
.source "AutofillSuggestion.java"


# instance fields
.field public final mLabel:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mUniqueId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;->mName:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;->mLabel:Ljava/lang/String;

    iput p3, p0, Lorg/chromium/chrome/browser/autofill/AutofillSuggestion;->mUniqueId:I

    return-void
.end method

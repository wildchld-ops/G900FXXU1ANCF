.class public Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$SBrowserSuggestionComparator;
.super Ljava/lang/Object;
.source "SbrAutocompleteBridge.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SBrowserSuggestionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$SBrowserSuggestionComparator;->this$0:Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)I
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getSBrowserSuggestionOrder()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;->getSBrowserSuggestionOrder()Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion$SBrowserSuggestionOrder;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    check-cast p2, Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bridge/SbrAutocompleteBridge$SBrowserSuggestionComparator;->compare(Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;Lcom/sec/android/app/sbrowser/common/SBrowserSuggestion;)I

    move-result v0

    return v0
.end method

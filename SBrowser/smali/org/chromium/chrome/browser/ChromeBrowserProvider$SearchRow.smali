.class Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/chrome/browser/ChromeBrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchRow"
.end annotation


# instance fields
.field date:Ljava/lang/Long;

.field term:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromContentValues(Landroid/content/ContentValues;)Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;
    .locals 2

    new-instance v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;-><init>()V

    const-string v1, "search"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "search"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;->term:Ljava/lang/String;

    :cond_0
    const-string v1, "date"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "date"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/ChromeBrowserProvider$SearchRow;->date:Ljava/lang/Long;

    :cond_1
    return-object v0
.end method

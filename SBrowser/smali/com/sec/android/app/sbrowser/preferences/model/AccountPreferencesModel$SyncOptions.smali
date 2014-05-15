.class public final enum Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;
.super Ljava/lang/Enum;
.source "AccountPreferencesModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

.field public static final enum Internet_data:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

.field public static final enum bookmarks:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

.field public static final enum open_pages:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

.field public static final enum saved_pages:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    const-string v1, "Internet_data"

    invoke-direct {v0, v1, v4, v3}, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->Internet_data:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    const-string v1, "bookmarks"

    invoke-direct {v0, v1, v5, v7}, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->bookmarks:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    const-string v1, "saved_pages"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->saved_pages:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    new-instance v0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    const-string v1, "open_pages"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->open_pages:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    new-array v0, v7, [Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->Internet_data:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->bookmarks:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->saved_pages:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->open_pages:Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->$VALUES:[Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->value:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->$VALUES:[Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/preferences/model/AccountPreferencesModel$SyncOptions;

    return-object v0
.end method

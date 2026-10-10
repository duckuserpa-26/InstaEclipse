.class Lps/reso/instaeclipse/mods/network/IGNetworkInterceptor$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "IGNetworkInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lps/reso/instaeclipse/mods/network/IGNetworkInterceptor;->handleInterceptor(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lps/reso/instaeclipse/mods/network/IGNetworkInterceptor;

.field final synthetic val$finalUriFields:Ljava/util/List;


# direct methods
.method constructor <init>(Lps/reso/instaeclipse/mods/network/IGNetworkInterceptor;Ljava/util/List;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lps/reso/instaeclipse/mods/network/IGNetworkInterceptor$1;->this$0:Lps/reso/instaeclipse/mods/network/IGNetworkInterceptor;

    iput-object p2, p0, Lps/reso/instaeclipse/mods/network/IGNetworkInterceptor$1;->val$finalUriFields:Ljava/util/List;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 8

    .line 56
    :try_start_0
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 57
    iget-object v2, p0, Lps/reso/instaeclipse/mods/network/IGNetworkInterceptor$1;->val$finalUriFields:Ljava/util/List;

    invoke-static {v0, v2}, Lps/reso/instaeclipse/mods/network/NetworkRequestInspector;->readEffectiveUri(Ljava/lang/Object;Ljava/util/List;)Ljava/net/URI;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 59
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 60
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 65
    sget-boolean v4, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->isGhostSeen:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v6, "/threads/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v6, "/opened"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v1

    .line 68
    :goto_0
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->keepEphemeralMessages:Z

    if-eqz v6, :cond_1

    .line 69
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/mark_ephemeral_item_ranges_viewed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 71
    :cond_1
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->isGhostScreenshot:Z

    if-eqz v6, :cond_4

    .line 72
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/screenshot/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/ephemeral_screenshot/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v5

    :goto_2
    or-int/2addr v4, v6

    .line 74
    :cond_4
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->isGhostViewOnce:Z

    if-eqz v6, :cond_6

    .line 75
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/item_replayed/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 76
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/direct"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/item_seen/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v5

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    or-int/2addr v4, v6

    .line 78
    :cond_6
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->isGhostStory:Z

    if-eqz v6, :cond_7

    .line 81
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/media/seen/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 82
    const-string v6, "GhostStories"

    invoke-static {v6}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 84
    :cond_7
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->isGhostLive:Z

    if-eqz v6, :cond_8

    .line 85
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/heartbeat_and_get_viewer_count/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 86
    const-string v6, "GhostLive"

    invoke-static {v6}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 89
    :cond_8
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->removeMetaAI:Z

    if-eqz v6, :cond_b

    .line 90
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 91
    const-string v7, "/ig_meta_ai_side_chat_send_contextual_query/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "/ig_meta_ai_side_chat_new_session/"

    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "/create_ig_meta_ai_side_chat/"

    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "/genai/response"

    .line 94
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 95
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    const-string v7, "aistudio.instagram.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    move v6, v1

    goto :goto_5

    :cond_a
    :goto_4
    move v6, v5

    :goto_5
    or-int/2addr v4, v6

    .line 99
    :cond_b
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->disableStories:Z

    if-eqz v6, :cond_e

    .line 100
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/feed/reels_tray/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 101
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "feed/get_latest_reel_media/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 102
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "direct_v2/pending_inbox/?visual_message"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 103
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "stories/hallpass/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 104
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/api/v1/feed/reels_media_stream/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    move v6, v1

    goto :goto_7

    :cond_d
    :goto_6
    move v6, v5

    :goto_7
    or-int/2addr v4, v6

    .line 106
    :cond_e
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->disableFeed:Z

    if-eqz v6, :cond_f

    .line 107
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/feed/timeline/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v4, v6

    .line 109
    :cond_f
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->disableReels:Z

    if-eqz v6, :cond_12

    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->disableReelsExceptDM:Z

    if-nez v6, :cond_12

    .line 110
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/qp/batch_fetch/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 111
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "api/v1/clips"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 112
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "clips"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 113
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mixed_media"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 114
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mixed_media/discover/stream/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_8

    :cond_10
    move v6, v1

    goto :goto_9

    :cond_11
    :goto_8
    move v6, v5

    :goto_9
    or-int/2addr v4, v6

    .line 116
    :cond_12
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->disableReelsExceptDM:Z

    if-eqz v6, :cond_17

    .line 117
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/api/v1/direct_v2/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    return-void

    .line 120
    :cond_13
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/api/v1/clips/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 121
    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    const-string v7, "next_media_ids="

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 122
    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    const-string v7, "max_id="

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 123
    :cond_14
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/clips/discover/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 124
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/mixed_media/discover/stream/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_a

    :cond_15
    move v6, v1

    goto :goto_b

    :cond_16
    :goto_a
    move v6, v5

    :goto_b
    or-int/2addr v4, v6

    .line 126
    :cond_17
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->disableExplore:Z

    if-eqz v6, :cond_1a

    .line 127
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/discover/topical_explore"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 128
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/discover/topical_explore_stream"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    if-eqz v3, :cond_18

    const-string v6, "i.instagram.com"

    .line 129
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/api/v1/fbsearch/top_serp/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_c

    :cond_18
    move v6, v1

    goto :goto_d

    :cond_19
    :goto_c
    move v6, v5

    :goto_d
    or-int/2addr v4, v6

    .line 131
    :cond_1a
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->disableComments:Z

    if-eqz v6, :cond_1c

    .line 132
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/api/v1/media/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "comments/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    move v6, v5

    goto :goto_e

    :cond_1b
    move v6, v1

    :goto_e
    or-int/2addr v4, v6

    .line 136
    :cond_1c
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->isAdBlockEnabled:Z

    if-eqz v6, :cond_1f

    .line 137
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "profile_ads/get_profile_ads/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 138
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/async_ads/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 139
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/feed/injected_reels_media/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 140
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/api/v1/ads/graphql/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_f

    :cond_1d
    move v6, v1

    goto :goto_10

    :cond_1e
    :goto_f
    move v6, v5

    :goto_10
    or-int/2addr v4, v6

    .line 144
    :cond_1f
    sget-boolean v6, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->isAnalyticsBlocked:Z

    if-eqz v6, :cond_23

    if-eqz v3, :cond_20

    .line 145
    const-string v6, "graph.instagram.com"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_21

    const-string v6, "graph.facebook.com"

    .line 146
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 147
    :cond_20
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v6, "/logging_client_events"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_21
    move v3, v5

    goto :goto_11

    :cond_22
    move v3, v1

    :goto_11
    or-int/2addr v4, v3

    .line 151
    :cond_23
    sget-boolean v3, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->spoofLastSeen:Z

    if-eqz v3, :cond_26

    .line 152
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 153
    const-string v6, "/push/setForegroundState/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    const-string v6, "/accounts/update_active_status"

    .line 154
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    const-string v6, "/notes/create_note"

    .line 155
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    const-string v6, "/accounts/set_presence_disabled"

    .line 156
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    const-string v6, "/update_active_status"

    .line 157
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    const-string v6, "/banyan/banyan/"

    .line 158
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    const-string v6, "/last_active/"

    .line 159
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_24

    const-string v6, "/presence/"

    .line 160
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_24
    move v1, v5

    :cond_25
    or-int/2addr v4, v1

    .line 161
    const-string v1, "SpoofLastSeen"

    invoke-static {v1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 167
    :cond_26
    sget-boolean v1, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->disableDiscoverPeople:Z

    if-eqz v1, :cond_27

    .line 168
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/discover/ayml/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    or-int/2addr v1, v4

    .line 169
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "discover/chaining/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    or-int v4, v1, v3

    .line 170
    const-string v1, "DisableDiscoverPeople"

    invoke-static {v1}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_27
    if-eqz v4, :cond_28

    .line 175
    :try_start_1
    new-instance v1, Ljava/net/URI;

    const-string v3, "https"

    const-string v4, "127.0.0.1"

    const-string v5, "/404"

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v3, p0, Lps/reso/instaeclipse/mods/network/IGNetworkInterceptor$1;->val$finalUriFields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_12

    .line 181
    :catch_0
    :cond_28
    :try_start_2
    sget-boolean v0, Lps/reso/instaeclipse/utils/feature/FeatureFlags;->showFollowerToast:Z

    if-eqz v0, :cond_29

    .line 182
    const-string v0, "FollowerToast"

    invoke-static {v0}, Lps/reso/instaeclipse/utils/feature/FeatureStatusTracker;->setHooked(Ljava/lang/String;)V

    .line 183
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v2, p1}, Lps/reso/instaeclipse/mods/misc/FollowStatusHook;->handleRequest(Ljava/net/URI;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_29
    return-void
.end method

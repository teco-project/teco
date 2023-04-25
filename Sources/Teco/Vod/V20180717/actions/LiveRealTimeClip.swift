//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Vod {
    /// LiveRealTimeClip请求参数结构体
    public struct LiveRealTimeClipRequest: TCRequestModel {
        /// 推流直播码。
        public let streamId: String

        /// 流剪辑的开始时间，格式参照 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        public let startTime: String

        /// 流剪辑的结束时间，格式参照 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        public let endTime: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 是否固化。0 不固化，1 固化。默认不固化。
        public let isPersistence: Int64?

        /// 剪辑固化后的视频存储过期时间。格式参照 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。填“9999-12-31T23:59:59Z”表示永不过期。过期后该媒体文件及其相关资源（转码结果、雪碧图等）将被永久删除。仅 IsPersistence 为 1 时有效，默认剪辑固化的视频永不过期。
        public let expireTime: String?

        /// 剪辑固化后的视频点播任务流处理，详见[上传指定任务流](https://cloud.tencent.com/document/product/266/9759)。仅 IsPersistence 为 1 时有效。
        public let procedure: String?

        /// 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        /// <li>默认值：0，表示其他分类。</li>
        /// 仅 IsPersistence 为 1 时有效。
        public let classId: Int64?

        /// 来源上下文，用于透传用户请求信息，[上传完成回调](/document/product/266/7830) 将返回该字段值，最长 250 个字符。仅 IsPersistence 为 1 时有效。
        public let sourceContext: String?

        /// 会话上下文，用于透传用户请求信息，当指定 Procedure 参数后，[任务流状态变更回调](/document/product/266/9636) 将返回该字段值，最长 1000 个字符。仅 IsPersistence 为 1 时有效。
        public let sessionContext: String?

        /// 是否需要返回剪辑后的视频元信息。0 不需要，1 需要。默认不需要。
        public let metaDataRequired: UInt64?

        /// 云点播中添加的用于时移播放的域名，必须在云直播已经[关联录制模板和开通时移服务](https://cloud.tencent.com/document/product/266/52220#.E6.AD.A5.E9.AA.A43.EF.BC.9A.E5.85.B3.E8.81.94.E5.BD.95.E5.88.B6.E6.A8.A1.E6.9D.BF.3Ca-id.3D.22step3.22.3E.3C.2Fa.3E)。**如果本接口的首次调用时间在 2021-01-01T00:00:00Z 之后，则此字段为必选字段。**
        public let host: String?

        /// 剪辑的直播流信息：
        /// <li>默认剪辑直播原始流。</li>
        /// <li>当StreamInfo中指定的Type为Transcoding，则剪辑TemplateId对应的直播转码流。</li>
        public let streamInfo: LiveRealTimeClipStreamInfo?

        /// 系统保留字段，请勿填写。
        public let extInfo: String?

        public init(streamId: String, startTime: String, endTime: String, subAppId: UInt64? = nil, isPersistence: Int64? = nil, expireTime: String? = nil, procedure: String? = nil, classId: Int64? = nil, sourceContext: String? = nil, sessionContext: String? = nil, metaDataRequired: UInt64? = nil, host: String? = nil, streamInfo: LiveRealTimeClipStreamInfo? = nil, extInfo: String? = nil) {
            self.streamId = streamId
            self.startTime = startTime
            self.endTime = endTime
            self.subAppId = subAppId
            self.isPersistence = isPersistence
            self.expireTime = expireTime
            self.procedure = procedure
            self.classId = classId
            self.sourceContext = sourceContext
            self.sessionContext = sessionContext
            self.metaDataRequired = metaDataRequired
            self.host = host
            self.streamInfo = streamInfo
            self.extInfo = extInfo
        }

        enum CodingKeys: String, CodingKey {
            case streamId = "StreamId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case subAppId = "SubAppId"
            case isPersistence = "IsPersistence"
            case expireTime = "ExpireTime"
            case procedure = "Procedure"
            case classId = "ClassId"
            case sourceContext = "SourceContext"
            case sessionContext = "SessionContext"
            case metaDataRequired = "MetaDataRequired"
            case host = "Host"
            case streamInfo = "StreamInfo"
            case extInfo = "ExtInfo"
        }
    }

    /// LiveRealTimeClip返回参数结构体
    public struct LiveRealTimeClipResponse: TCResponseModel {
        /// 剪辑后的视频播放 URL。
        public let url: String

        /// 剪辑固化后的视频的媒体文件的唯一标识。
        public let fileId: String

        /// 剪辑固化后的视频任务流 ID。
        public let vodTaskId: String

        /// 剪辑后的视频元信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metaData: MediaMetaData?

        /// <span id="p_segmentset">剪辑后的视频片段信息。</span>
        public let segmentSet: [LiveRealTimeClipMediaSegmentInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case fileId = "FileId"
            case vodTaskId = "VodTaskId"
            case metaData = "MetaData"
            case segmentSet = "SegmentSet"
            case requestId = "RequestId"
        }
    }

    /// 直播即时剪辑
    ///
    /// 直播即时剪辑，是指在直播过程中（即直播尚未结束时），客户可以在过往直播内容中选择一段，实时生成一个新的视频（HLS 格式），开发者可以将其立即分享出去，或者长久保存起来。
    ///
    /// 腾讯云点播支持两种即时剪辑模式：
    /// - 剪辑固化：将剪辑出来的视频保存成独立的视频，拥有独立 FileId；适用于将精彩片段**长久保存**的场景；
    /// - 剪辑不固化：剪辑得到的视频附属于直播录制文件，没有独立 FileId；适用于将精彩片段**临时分享**的场景。
    ///
    /// 注意：
    /// - 使用直播即时剪辑功能的前提是：目标直播流开启了[时移回看](https://cloud.tencent.com/document/product/267/32742)功能。
    /// - 直播即时剪辑是基于直播录制生成的 m3u8 文件进行的，故而其最小剪辑精度为一个 ts 切片，无法实现秒级或者更为精确的剪辑精度。
    /// - 由于直播过程中可能存在断流的情况，所以有可能导致剪辑生成的实际视频时长与期望不一致。例如剪辑某个直播流的时间区间为 2018-09-20T10:30:00Z 到 2018-09-20T10:40:00Z ，如果在该时间区间中发生过断流，那么返回的媒资文件的时长将少于 10 分钟，在这种情况下，可以通过输出参数 <a href="#p_segmentset">SegmentSet</a> 感知到。
    ///
    /// ### 剪辑固化
    /// 所谓剪辑固化，是指将剪辑出来的视频是保存成一个独立的视频（拥有独立的 FileId）。其生命周期不受原始直播录制视频影响（即使原始录制视频被删除，剪辑结果也不会受到任何影响）；也可以对其进行转码、微信发布等二次处理。
    ///
    /// 举例如下：一场完整的足球比赛，直播录制出来的原始视频可能长达 2 个小时，客户出于节省成本的目的可以对这个视频存储 2 个月，但对于直播即时剪辑的「精彩时刻」视频却可以指定存储更长时间，同时可以单独对「精彩时刻」视频进行转码、微信发布等额外的点播操作，这时候可以选择直播即时剪辑并且固化的方案。
    ///
    /// 剪辑固化的优势在于其生命周期与原始录制视频相互独立，可以独立管理、长久保存。
    ///
    /// ### 剪辑不固化
    /// 所谓剪辑不固化，是指剪辑所得到的结果（m3u8 文件）与直播录制视频共享相同的 ts 分片，新生成的视频不是一个独立完整的视频（没有独立 FileId，只有播放 URL），其有效期与直播录制的完整视频有效期是一致的。一旦直播录制出来的视频被删除，也会导致该片段无法播放。
    ///
    /// 剪辑不固化，由于其剪辑结果不是一个独立的视频，因而也不会纳入点播媒资视频管理（例如控制台的视频总数不会统计这一片段）中，也无法单独针对这个片段做转码、微信发布等任何视频处理操作。
    ///
    /// 剪辑不固化的优势在于其剪辑操作十分“轻量化”，不会产生额外的存储开销。但其不足之处在于生命周期与原始录制视频相同，且无法进一步进行转码等视频处理。
    @inlinable
    public func liveRealTimeClip(_ input: LiveRealTimeClipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LiveRealTimeClipResponse> {
        self.client.execute(action: "LiveRealTimeClip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播即时剪辑
    ///
    /// 直播即时剪辑，是指在直播过程中（即直播尚未结束时），客户可以在过往直播内容中选择一段，实时生成一个新的视频（HLS 格式），开发者可以将其立即分享出去，或者长久保存起来。
    ///
    /// 腾讯云点播支持两种即时剪辑模式：
    /// - 剪辑固化：将剪辑出来的视频保存成独立的视频，拥有独立 FileId；适用于将精彩片段**长久保存**的场景；
    /// - 剪辑不固化：剪辑得到的视频附属于直播录制文件，没有独立 FileId；适用于将精彩片段**临时分享**的场景。
    ///
    /// 注意：
    /// - 使用直播即时剪辑功能的前提是：目标直播流开启了[时移回看](https://cloud.tencent.com/document/product/267/32742)功能。
    /// - 直播即时剪辑是基于直播录制生成的 m3u8 文件进行的，故而其最小剪辑精度为一个 ts 切片，无法实现秒级或者更为精确的剪辑精度。
    /// - 由于直播过程中可能存在断流的情况，所以有可能导致剪辑生成的实际视频时长与期望不一致。例如剪辑某个直播流的时间区间为 2018-09-20T10:30:00Z 到 2018-09-20T10:40:00Z ，如果在该时间区间中发生过断流，那么返回的媒资文件的时长将少于 10 分钟，在这种情况下，可以通过输出参数 <a href="#p_segmentset">SegmentSet</a> 感知到。
    ///
    /// ### 剪辑固化
    /// 所谓剪辑固化，是指将剪辑出来的视频是保存成一个独立的视频（拥有独立的 FileId）。其生命周期不受原始直播录制视频影响（即使原始录制视频被删除，剪辑结果也不会受到任何影响）；也可以对其进行转码、微信发布等二次处理。
    ///
    /// 举例如下：一场完整的足球比赛，直播录制出来的原始视频可能长达 2 个小时，客户出于节省成本的目的可以对这个视频存储 2 个月，但对于直播即时剪辑的「精彩时刻」视频却可以指定存储更长时间，同时可以单独对「精彩时刻」视频进行转码、微信发布等额外的点播操作，这时候可以选择直播即时剪辑并且固化的方案。
    ///
    /// 剪辑固化的优势在于其生命周期与原始录制视频相互独立，可以独立管理、长久保存。
    ///
    /// ### 剪辑不固化
    /// 所谓剪辑不固化，是指剪辑所得到的结果（m3u8 文件）与直播录制视频共享相同的 ts 分片，新生成的视频不是一个独立完整的视频（没有独立 FileId，只有播放 URL），其有效期与直播录制的完整视频有效期是一致的。一旦直播录制出来的视频被删除，也会导致该片段无法播放。
    ///
    /// 剪辑不固化，由于其剪辑结果不是一个独立的视频，因而也不会纳入点播媒资视频管理（例如控制台的视频总数不会统计这一片段）中，也无法单独针对这个片段做转码、微信发布等任何视频处理操作。
    ///
    /// 剪辑不固化的优势在于其剪辑操作十分“轻量化”，不会产生额外的存储开销。但其不足之处在于生命周期与原始录制视频相同，且无法进一步进行转码等视频处理。
    @inlinable
    public func liveRealTimeClip(_ input: LiveRealTimeClipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LiveRealTimeClipResponse {
        try await self.client.execute(action: "LiveRealTimeClip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播即时剪辑
    ///
    /// 直播即时剪辑，是指在直播过程中（即直播尚未结束时），客户可以在过往直播内容中选择一段，实时生成一个新的视频（HLS 格式），开发者可以将其立即分享出去，或者长久保存起来。
    ///
    /// 腾讯云点播支持两种即时剪辑模式：
    /// - 剪辑固化：将剪辑出来的视频保存成独立的视频，拥有独立 FileId；适用于将精彩片段**长久保存**的场景；
    /// - 剪辑不固化：剪辑得到的视频附属于直播录制文件，没有独立 FileId；适用于将精彩片段**临时分享**的场景。
    ///
    /// 注意：
    /// - 使用直播即时剪辑功能的前提是：目标直播流开启了[时移回看](https://cloud.tencent.com/document/product/267/32742)功能。
    /// - 直播即时剪辑是基于直播录制生成的 m3u8 文件进行的，故而其最小剪辑精度为一个 ts 切片，无法实现秒级或者更为精确的剪辑精度。
    /// - 由于直播过程中可能存在断流的情况，所以有可能导致剪辑生成的实际视频时长与期望不一致。例如剪辑某个直播流的时间区间为 2018-09-20T10:30:00Z 到 2018-09-20T10:40:00Z ，如果在该时间区间中发生过断流，那么返回的媒资文件的时长将少于 10 分钟，在这种情况下，可以通过输出参数 <a href="#p_segmentset">SegmentSet</a> 感知到。
    ///
    /// ### 剪辑固化
    /// 所谓剪辑固化，是指将剪辑出来的视频是保存成一个独立的视频（拥有独立的 FileId）。其生命周期不受原始直播录制视频影响（即使原始录制视频被删除，剪辑结果也不会受到任何影响）；也可以对其进行转码、微信发布等二次处理。
    ///
    /// 举例如下：一场完整的足球比赛，直播录制出来的原始视频可能长达 2 个小时，客户出于节省成本的目的可以对这个视频存储 2 个月，但对于直播即时剪辑的「精彩时刻」视频却可以指定存储更长时间，同时可以单独对「精彩时刻」视频进行转码、微信发布等额外的点播操作，这时候可以选择直播即时剪辑并且固化的方案。
    ///
    /// 剪辑固化的优势在于其生命周期与原始录制视频相互独立，可以独立管理、长久保存。
    ///
    /// ### 剪辑不固化
    /// 所谓剪辑不固化，是指剪辑所得到的结果（m3u8 文件）与直播录制视频共享相同的 ts 分片，新生成的视频不是一个独立完整的视频（没有独立 FileId，只有播放 URL），其有效期与直播录制的完整视频有效期是一致的。一旦直播录制出来的视频被删除，也会导致该片段无法播放。
    ///
    /// 剪辑不固化，由于其剪辑结果不是一个独立的视频，因而也不会纳入点播媒资视频管理（例如控制台的视频总数不会统计这一片段）中，也无法单独针对这个片段做转码、微信发布等任何视频处理操作。
    ///
    /// 剪辑不固化的优势在于其剪辑操作十分“轻量化”，不会产生额外的存储开销。但其不足之处在于生命周期与原始录制视频相同，且无法进一步进行转码等视频处理。
    @inlinable
    public func liveRealTimeClip(streamId: String, startTime: String, endTime: String, subAppId: UInt64? = nil, isPersistence: Int64? = nil, expireTime: String? = nil, procedure: String? = nil, classId: Int64? = nil, sourceContext: String? = nil, sessionContext: String? = nil, metaDataRequired: UInt64? = nil, host: String? = nil, streamInfo: LiveRealTimeClipStreamInfo? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LiveRealTimeClipResponse> {
        self.liveRealTimeClip(.init(streamId: streamId, startTime: startTime, endTime: endTime, subAppId: subAppId, isPersistence: isPersistence, expireTime: expireTime, procedure: procedure, classId: classId, sourceContext: sourceContext, sessionContext: sessionContext, metaDataRequired: metaDataRequired, host: host, streamInfo: streamInfo, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 直播即时剪辑
    ///
    /// 直播即时剪辑，是指在直播过程中（即直播尚未结束时），客户可以在过往直播内容中选择一段，实时生成一个新的视频（HLS 格式），开发者可以将其立即分享出去，或者长久保存起来。
    ///
    /// 腾讯云点播支持两种即时剪辑模式：
    /// - 剪辑固化：将剪辑出来的视频保存成独立的视频，拥有独立 FileId；适用于将精彩片段**长久保存**的场景；
    /// - 剪辑不固化：剪辑得到的视频附属于直播录制文件，没有独立 FileId；适用于将精彩片段**临时分享**的场景。
    ///
    /// 注意：
    /// - 使用直播即时剪辑功能的前提是：目标直播流开启了[时移回看](https://cloud.tencent.com/document/product/267/32742)功能。
    /// - 直播即时剪辑是基于直播录制生成的 m3u8 文件进行的，故而其最小剪辑精度为一个 ts 切片，无法实现秒级或者更为精确的剪辑精度。
    /// - 由于直播过程中可能存在断流的情况，所以有可能导致剪辑生成的实际视频时长与期望不一致。例如剪辑某个直播流的时间区间为 2018-09-20T10:30:00Z 到 2018-09-20T10:40:00Z ，如果在该时间区间中发生过断流，那么返回的媒资文件的时长将少于 10 分钟，在这种情况下，可以通过输出参数 <a href="#p_segmentset">SegmentSet</a> 感知到。
    ///
    /// ### 剪辑固化
    /// 所谓剪辑固化，是指将剪辑出来的视频是保存成一个独立的视频（拥有独立的 FileId）。其生命周期不受原始直播录制视频影响（即使原始录制视频被删除，剪辑结果也不会受到任何影响）；也可以对其进行转码、微信发布等二次处理。
    ///
    /// 举例如下：一场完整的足球比赛，直播录制出来的原始视频可能长达 2 个小时，客户出于节省成本的目的可以对这个视频存储 2 个月，但对于直播即时剪辑的「精彩时刻」视频却可以指定存储更长时间，同时可以单独对「精彩时刻」视频进行转码、微信发布等额外的点播操作，这时候可以选择直播即时剪辑并且固化的方案。
    ///
    /// 剪辑固化的优势在于其生命周期与原始录制视频相互独立，可以独立管理、长久保存。
    ///
    /// ### 剪辑不固化
    /// 所谓剪辑不固化，是指剪辑所得到的结果（m3u8 文件）与直播录制视频共享相同的 ts 分片，新生成的视频不是一个独立完整的视频（没有独立 FileId，只有播放 URL），其有效期与直播录制的完整视频有效期是一致的。一旦直播录制出来的视频被删除，也会导致该片段无法播放。
    ///
    /// 剪辑不固化，由于其剪辑结果不是一个独立的视频，因而也不会纳入点播媒资视频管理（例如控制台的视频总数不会统计这一片段）中，也无法单独针对这个片段做转码、微信发布等任何视频处理操作。
    ///
    /// 剪辑不固化的优势在于其剪辑操作十分“轻量化”，不会产生额外的存储开销。但其不足之处在于生命周期与原始录制视频相同，且无法进一步进行转码等视频处理。
    @inlinable
    public func liveRealTimeClip(streamId: String, startTime: String, endTime: String, subAppId: UInt64? = nil, isPersistence: Int64? = nil, expireTime: String? = nil, procedure: String? = nil, classId: Int64? = nil, sourceContext: String? = nil, sessionContext: String? = nil, metaDataRequired: UInt64? = nil, host: String? = nil, streamInfo: LiveRealTimeClipStreamInfo? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> LiveRealTimeClipResponse {
        try await self.liveRealTimeClip(.init(streamId: streamId, startTime: startTime, endTime: endTime, subAppId: subAppId, isPersistence: isPersistence, expireTime: expireTime, procedure: procedure, classId: classId, sourceContext: sourceContext, sessionContext: sessionContext, metaDataRequired: metaDataRequired, host: host, streamInfo: streamInfo, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }
}

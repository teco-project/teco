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

extension Vod {
    /// SimpleHlsClip请求参数结构体
    public struct SimpleHlsClipRequest: TCRequestModel {
        /// 需要裁剪的腾讯云点播 HLS 视频 URL。
        public let url: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 裁剪的开始偏移时间，单位秒。默认 0，即从视频开头开始裁剪。负数表示距离视频结束多少秒开始裁剪。例如 -10 表示从倒数第 10 秒开始裁剪。
        public let startTimeOffset: Float?

        /// 裁剪的结束偏移时间，单位秒。默认 0，即裁剪到视频尾部。负数表示距离视频结束多少秒结束裁剪。例如 -10 表示到倒数第 10 秒结束裁剪。
        public let endTimeOffset: Float?

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

        public init(url: String, subAppId: UInt64? = nil, startTimeOffset: Float? = nil, endTimeOffset: Float? = nil, isPersistence: Int64? = nil, expireTime: String? = nil, procedure: String? = nil, classId: Int64? = nil, sourceContext: String? = nil, sessionContext: String? = nil) {
            self.url = url
            self.subAppId = subAppId
            self.startTimeOffset = startTimeOffset
            self.endTimeOffset = endTimeOffset
            self.isPersistence = isPersistence
            self.expireTime = expireTime
            self.procedure = procedure
            self.classId = classId
            self.sourceContext = sourceContext
            self.sessionContext = sessionContext
        }

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case subAppId = "SubAppId"
            case startTimeOffset = "StartTimeOffset"
            case endTimeOffset = "EndTimeOffset"
            case isPersistence = "IsPersistence"
            case expireTime = "ExpireTime"
            case procedure = "Procedure"
            case classId = "ClassId"
            case sourceContext = "SourceContext"
            case sessionContext = "SessionContext"
        }
    }

    /// SimpleHlsClip返回参数结构体
    public struct SimpleHlsClipResponse: TCResponseModel {
        /// 裁剪后的视频地址。
        public let url: String

        /// 裁剪后的视频元信息。目前`Size`，`Rotate`，`VideoDuration`，`AudioDuration` 几个字段暂时缺省，没有真实数据。
        public let metaData: MediaMetaData

        /// 剪辑固化后的视频的媒体文件的唯一标识。
        public let fileId: String

        /// 剪辑固化后的视频任务流 ID。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case metaData = "MetaData"
            case fileId = "FileId"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 简单 HLS 剪辑
    ///
    /// 对 HLS 视频进行按时间段裁剪，实时生成一个新的视频（HLS 格式），开发者可以将其立即分享出去，或者长久保存起来。
    ///
    /// 腾讯云点播支持两种剪辑模式：
    /// - 剪辑固化：将剪辑出来的视频保存成独立的视频，拥有独立 FileId；适用于将精彩片段长久保存的场景；
    /// - 剪辑不固化：剪辑得到的视频附属于输入文件，没有独立 FileId；适用于将精彩片段临时分享的场景。
    ///
    /// 注意：
    /// - 剪辑是基于输入 m3u8 文件进行的，故而其最小剪辑精度为一个 ts 切片，无法实现秒级或者更为精确的剪辑精度。
    ///
    ///
    /// ### 剪辑固化
    /// 所谓剪辑固化，是指将剪辑出来的视频保存成一个独立的视频（拥有独立的 FileId）。其生命周期不受原始输入视频影响（即使原始输入视频被删除，剪辑结果也不会受到任何影响）；也可以对其进行转码、微信发布等二次处理。
    ///
    /// 举例如下：一场完整的足球比赛，原始视频可能长达 2 个小时，客户出于节省成本的目的可以对这个视频存储 2 个月，但对于剪辑的「精彩时刻」视频却可以指定存储更长时间，同时可以单独对「精彩时刻」视频进行转码、微信发布等额外的点播操作，这时候可以选择剪辑并且固化的方案。
    ///
    /// 剪辑固化的优势在于其生命周期与原始输入视频相互独立，可以独立管理、长久保存。
    ///
    /// ### 剪辑不固化
    /// 所谓剪辑不固化，是指剪辑所得到的结果（m3u8 文件）与原始输入视频共享相同的 ts 分片，新生成的视频不是一个独立完整的视频（没有独立 FileId，只有播放 URL），其有效期与原始输入的完整视频有效期是一致的。一旦原始输入的视频被删除，也会导致该片段无法播放。
    ///
    /// 剪辑不固化，由于其剪辑结果不是一个独立的视频，因而也不会纳入点播媒资视频管理（例如控制台的视频总数不会统计这一片段）中，也无法单独针对这个片段做转码、微信发布等任何视频处理操作。
    ///
    /// 剪辑不固化的优势在于其剪辑操作十分“轻量化”，不会产生额外的存储开销。但其不足之处在于生命周期与原始录制视频相同，且无法进一步进行转码等视频处理。
    @inlinable
    public func simpleHlsClip(_ input: SimpleHlsClipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SimpleHlsClipResponse> {
        self.client.execute(action: "SimpleHlsClip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 简单 HLS 剪辑
    ///
    /// 对 HLS 视频进行按时间段裁剪，实时生成一个新的视频（HLS 格式），开发者可以将其立即分享出去，或者长久保存起来。
    ///
    /// 腾讯云点播支持两种剪辑模式：
    /// - 剪辑固化：将剪辑出来的视频保存成独立的视频，拥有独立 FileId；适用于将精彩片段长久保存的场景；
    /// - 剪辑不固化：剪辑得到的视频附属于输入文件，没有独立 FileId；适用于将精彩片段临时分享的场景。
    ///
    /// 注意：
    /// - 剪辑是基于输入 m3u8 文件进行的，故而其最小剪辑精度为一个 ts 切片，无法实现秒级或者更为精确的剪辑精度。
    ///
    ///
    /// ### 剪辑固化
    /// 所谓剪辑固化，是指将剪辑出来的视频保存成一个独立的视频（拥有独立的 FileId）。其生命周期不受原始输入视频影响（即使原始输入视频被删除，剪辑结果也不会受到任何影响）；也可以对其进行转码、微信发布等二次处理。
    ///
    /// 举例如下：一场完整的足球比赛，原始视频可能长达 2 个小时，客户出于节省成本的目的可以对这个视频存储 2 个月，但对于剪辑的「精彩时刻」视频却可以指定存储更长时间，同时可以单独对「精彩时刻」视频进行转码、微信发布等额外的点播操作，这时候可以选择剪辑并且固化的方案。
    ///
    /// 剪辑固化的优势在于其生命周期与原始输入视频相互独立，可以独立管理、长久保存。
    ///
    /// ### 剪辑不固化
    /// 所谓剪辑不固化，是指剪辑所得到的结果（m3u8 文件）与原始输入视频共享相同的 ts 分片，新生成的视频不是一个独立完整的视频（没有独立 FileId，只有播放 URL），其有效期与原始输入的完整视频有效期是一致的。一旦原始输入的视频被删除，也会导致该片段无法播放。
    ///
    /// 剪辑不固化，由于其剪辑结果不是一个独立的视频，因而也不会纳入点播媒资视频管理（例如控制台的视频总数不会统计这一片段）中，也无法单独针对这个片段做转码、微信发布等任何视频处理操作。
    ///
    /// 剪辑不固化的优势在于其剪辑操作十分“轻量化”，不会产生额外的存储开销。但其不足之处在于生命周期与原始录制视频相同，且无法进一步进行转码等视频处理。
    @inlinable
    public func simpleHlsClip(_ input: SimpleHlsClipRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SimpleHlsClipResponse {
        try await self.client.execute(action: "SimpleHlsClip", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 简单 HLS 剪辑
    ///
    /// 对 HLS 视频进行按时间段裁剪，实时生成一个新的视频（HLS 格式），开发者可以将其立即分享出去，或者长久保存起来。
    ///
    /// 腾讯云点播支持两种剪辑模式：
    /// - 剪辑固化：将剪辑出来的视频保存成独立的视频，拥有独立 FileId；适用于将精彩片段长久保存的场景；
    /// - 剪辑不固化：剪辑得到的视频附属于输入文件，没有独立 FileId；适用于将精彩片段临时分享的场景。
    ///
    /// 注意：
    /// - 剪辑是基于输入 m3u8 文件进行的，故而其最小剪辑精度为一个 ts 切片，无法实现秒级或者更为精确的剪辑精度。
    ///
    ///
    /// ### 剪辑固化
    /// 所谓剪辑固化，是指将剪辑出来的视频保存成一个独立的视频（拥有独立的 FileId）。其生命周期不受原始输入视频影响（即使原始输入视频被删除，剪辑结果也不会受到任何影响）；也可以对其进行转码、微信发布等二次处理。
    ///
    /// 举例如下：一场完整的足球比赛，原始视频可能长达 2 个小时，客户出于节省成本的目的可以对这个视频存储 2 个月，但对于剪辑的「精彩时刻」视频却可以指定存储更长时间，同时可以单独对「精彩时刻」视频进行转码、微信发布等额外的点播操作，这时候可以选择剪辑并且固化的方案。
    ///
    /// 剪辑固化的优势在于其生命周期与原始输入视频相互独立，可以独立管理、长久保存。
    ///
    /// ### 剪辑不固化
    /// 所谓剪辑不固化，是指剪辑所得到的结果（m3u8 文件）与原始输入视频共享相同的 ts 分片，新生成的视频不是一个独立完整的视频（没有独立 FileId，只有播放 URL），其有效期与原始输入的完整视频有效期是一致的。一旦原始输入的视频被删除，也会导致该片段无法播放。
    ///
    /// 剪辑不固化，由于其剪辑结果不是一个独立的视频，因而也不会纳入点播媒资视频管理（例如控制台的视频总数不会统计这一片段）中，也无法单独针对这个片段做转码、微信发布等任何视频处理操作。
    ///
    /// 剪辑不固化的优势在于其剪辑操作十分“轻量化”，不会产生额外的存储开销。但其不足之处在于生命周期与原始录制视频相同，且无法进一步进行转码等视频处理。
    @inlinable
    public func simpleHlsClip(url: String, subAppId: UInt64? = nil, startTimeOffset: Float? = nil, endTimeOffset: Float? = nil, isPersistence: Int64? = nil, expireTime: String? = nil, procedure: String? = nil, classId: Int64? = nil, sourceContext: String? = nil, sessionContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SimpleHlsClipResponse> {
        self.simpleHlsClip(.init(url: url, subAppId: subAppId, startTimeOffset: startTimeOffset, endTimeOffset: endTimeOffset, isPersistence: isPersistence, expireTime: expireTime, procedure: procedure, classId: classId, sourceContext: sourceContext, sessionContext: sessionContext), region: region, logger: logger, on: eventLoop)
    }

    /// 简单 HLS 剪辑
    ///
    /// 对 HLS 视频进行按时间段裁剪，实时生成一个新的视频（HLS 格式），开发者可以将其立即分享出去，或者长久保存起来。
    ///
    /// 腾讯云点播支持两种剪辑模式：
    /// - 剪辑固化：将剪辑出来的视频保存成独立的视频，拥有独立 FileId；适用于将精彩片段长久保存的场景；
    /// - 剪辑不固化：剪辑得到的视频附属于输入文件，没有独立 FileId；适用于将精彩片段临时分享的场景。
    ///
    /// 注意：
    /// - 剪辑是基于输入 m3u8 文件进行的，故而其最小剪辑精度为一个 ts 切片，无法实现秒级或者更为精确的剪辑精度。
    ///
    ///
    /// ### 剪辑固化
    /// 所谓剪辑固化，是指将剪辑出来的视频保存成一个独立的视频（拥有独立的 FileId）。其生命周期不受原始输入视频影响（即使原始输入视频被删除，剪辑结果也不会受到任何影响）；也可以对其进行转码、微信发布等二次处理。
    ///
    /// 举例如下：一场完整的足球比赛，原始视频可能长达 2 个小时，客户出于节省成本的目的可以对这个视频存储 2 个月，但对于剪辑的「精彩时刻」视频却可以指定存储更长时间，同时可以单独对「精彩时刻」视频进行转码、微信发布等额外的点播操作，这时候可以选择剪辑并且固化的方案。
    ///
    /// 剪辑固化的优势在于其生命周期与原始输入视频相互独立，可以独立管理、长久保存。
    ///
    /// ### 剪辑不固化
    /// 所谓剪辑不固化，是指剪辑所得到的结果（m3u8 文件）与原始输入视频共享相同的 ts 分片，新生成的视频不是一个独立完整的视频（没有独立 FileId，只有播放 URL），其有效期与原始输入的完整视频有效期是一致的。一旦原始输入的视频被删除，也会导致该片段无法播放。
    ///
    /// 剪辑不固化，由于其剪辑结果不是一个独立的视频，因而也不会纳入点播媒资视频管理（例如控制台的视频总数不会统计这一片段）中，也无法单独针对这个片段做转码、微信发布等任何视频处理操作。
    ///
    /// 剪辑不固化的优势在于其剪辑操作十分“轻量化”，不会产生额外的存储开销。但其不足之处在于生命周期与原始录制视频相同，且无法进一步进行转码等视频处理。
    @inlinable
    public func simpleHlsClip(url: String, subAppId: UInt64? = nil, startTimeOffset: Float? = nil, endTimeOffset: Float? = nil, isPersistence: Int64? = nil, expireTime: String? = nil, procedure: String? = nil, classId: Int64? = nil, sourceContext: String? = nil, sessionContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SimpleHlsClipResponse {
        try await self.simpleHlsClip(.init(url: url, subAppId: subAppId, startTimeOffset: startTimeOffset, endTimeOffset: endTimeOffset, isPersistence: isPersistence, expireTime: expireTime, procedure: procedure, classId: classId, sourceContext: sourceContext, sessionContext: sessionContext), region: region, logger: logger, on: eventLoop)
    }
}

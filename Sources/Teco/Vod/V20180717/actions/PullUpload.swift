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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Vod {
    /// PullUpload请求参数结构体
    public struct PullUploadRequest: TCRequestModel {
        /// 要拉取的媒体 URL，暂不支持拉取 Dash 格式（可以支持 HLS）。
        /// 支持的扩展名详见[媒体类型](https://cloud.tencent.com/document/product/266/9760#.E5.AA.92.E4.BD.93.E7.B1.BB.E5.9E.8B)。请确保媒体 URL 可以访问。
        public let mediaUrl: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 媒体名称。
        public let mediaName: String?

        /// 要拉取的视频封面 URL。支持的文件格式：gif、jpeg（jpg）、png。
        public let coverUrl: String?

        /// 媒体后续任务操作，详见[上传指定任务流](https://cloud.tencent.com/document/product/266/9759)。
        public let procedure: String?

        /// 媒体文件过期时间，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var expireTime: Date?

        /// 指定上传园区，仅适用于对上传地域有特殊需求的用户：
        /// <li>不填默认上传至您的[默认地域](https://cloud.tencent.com/document/product/266/14059?from=11329#.E5.AD.98.E5.82.A8.E5.9C.B0.E5.9F.9F.E6.AD.A5.E9.AA.A4)。</li>
        /// <li>若指定上传园区，请先确认[上传存储设置](https://cloud.tencent.com/document/product/266/14059?from=11329#.E5.AD.98.E5.82.A8.E5.9C.B0.E5.9F.9F.E6.AD.A5.E9.AA.A4)已经开启相应的存储地域。</li>
        public let storageRegion: String?

        /// 分类ID，用于对媒体进行分类管理，可通过[创建分类](https://cloud.tencent.com/document/product/266/7812)接口，创建分类，获得分类 ID。
        public let classId: Int64?

        /// 来源上下文，用于透传用户请求信息，当指定 Procedure 任务后，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        public let sessionContext: String?

        /// 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        public let sessionId: String?

        /// 保留字段，特殊用途时使用。
        public let extInfo: String?

        /// 来源上下文，用于透传用户请求信息，[上传完成回调](/document/product/266/7830) 将返回该字段值，最长 250 个字符。
        public let sourceContext: String?

        public init(mediaUrl: String, subAppId: UInt64? = nil, mediaName: String? = nil, coverUrl: String? = nil, procedure: String? = nil, expireTime: Date? = nil, storageRegion: String? = nil, classId: Int64? = nil, sessionContext: String? = nil, sessionId: String? = nil, extInfo: String? = nil, sourceContext: String? = nil) {
            self.mediaUrl = mediaUrl
            self.subAppId = subAppId
            self.mediaName = mediaName
            self.coverUrl = coverUrl
            self.procedure = procedure
            self._expireTime = .init(wrappedValue: expireTime)
            self.storageRegion = storageRegion
            self.classId = classId
            self.sessionContext = sessionContext
            self.sessionId = sessionId
            self.extInfo = extInfo
            self.sourceContext = sourceContext
        }

        enum CodingKeys: String, CodingKey {
            case mediaUrl = "MediaUrl"
            case subAppId = "SubAppId"
            case mediaName = "MediaName"
            case coverUrl = "CoverUrl"
            case procedure = "Procedure"
            case expireTime = "ExpireTime"
            case storageRegion = "StorageRegion"
            case classId = "ClassId"
            case sessionContext = "SessionContext"
            case sessionId = "SessionId"
            case extInfo = "ExtInfo"
            case sourceContext = "SourceContext"
        }
    }

    /// PullUpload返回参数结构体
    public struct PullUploadResponse: TCResponseModel {
        /// 拉取上传视频的任务 ID，可以通过该 ID 查询拉取上传任务的状态。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 拉取上传
    ///
    /// 该接口用于将一个网络上的视频拉取到云点播平台。
    @inlinable
    public func pullUpload(_ input: PullUploadRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PullUploadResponse> {
        self.client.execute(action: "PullUpload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取上传
    ///
    /// 该接口用于将一个网络上的视频拉取到云点播平台。
    @inlinable
    public func pullUpload(_ input: PullUploadRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PullUploadResponse {
        try await self.client.execute(action: "PullUpload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取上传
    ///
    /// 该接口用于将一个网络上的视频拉取到云点播平台。
    @inlinable
    public func pullUpload(mediaUrl: String, subAppId: UInt64? = nil, mediaName: String? = nil, coverUrl: String? = nil, procedure: String? = nil, expireTime: Date? = nil, storageRegion: String? = nil, classId: Int64? = nil, sessionContext: String? = nil, sessionId: String? = nil, extInfo: String? = nil, sourceContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PullUploadResponse> {
        self.pullUpload(.init(mediaUrl: mediaUrl, subAppId: subAppId, mediaName: mediaName, coverUrl: coverUrl, procedure: procedure, expireTime: expireTime, storageRegion: storageRegion, classId: classId, sessionContext: sessionContext, sessionId: sessionId, extInfo: extInfo, sourceContext: sourceContext), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取上传
    ///
    /// 该接口用于将一个网络上的视频拉取到云点播平台。
    @inlinable
    public func pullUpload(mediaUrl: String, subAppId: UInt64? = nil, mediaName: String? = nil, coverUrl: String? = nil, procedure: String? = nil, expireTime: Date? = nil, storageRegion: String? = nil, classId: Int64? = nil, sessionContext: String? = nil, sessionId: String? = nil, extInfo: String? = nil, sourceContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PullUploadResponse {
        try await self.pullUpload(.init(mediaUrl: mediaUrl, subAppId: subAppId, mediaName: mediaName, coverUrl: coverUrl, procedure: procedure, expireTime: expireTime, storageRegion: storageRegion, classId: classId, sessionContext: sessionContext, sessionId: sessionId, extInfo: extInfo, sourceContext: sourceContext), region: region, logger: logger, on: eventLoop)
    }
}

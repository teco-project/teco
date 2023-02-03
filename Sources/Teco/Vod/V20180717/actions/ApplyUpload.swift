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
    /// ApplyUpload请求参数结构体
    public struct ApplyUploadRequest: TCRequestModel {
        /// 媒体类型，可选值请参考 [上传能力综述](/document/product/266/9760#.E6.96.87.E4.BB.B6.E7.B1.BB.E5.9E.8B)。
        public let mediaType: String

        /// <b>点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 媒体名称。
        public let mediaName: String?

        /// 封面类型，可选值请参考 [上传能力综述](/document/product/266/9760#.E6.96.87.E4.BB.B6.E7.B1.BB.E5.9E.8B)。
        public let coverType: String?

        /// 媒体后续任务处理操作，即完成媒体上传后，可自动发起任务流操作。参数值为任务流模板名，云点播支持 [创建任务流模板](/document/product/266/33819) 并为模板命名。
        public let procedure: String?

        /// 媒体文件过期时间，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](/document/product/266/11732#iso-.E6.97.A5.E6.9C.9F.E6.A0.BC.E5.BC.8F)。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var expireTime: Date?

        /// 指定上传园区，仅适用于对上传地域有特殊需求的用户。
        public let storageRegion: String?

        /// 分类ID，用于对媒体进行分类管理，可通过 [创建分类](/document/product/266/7812) 接口，创建分类，获得分类 ID。
        /// <li>默认值：0，表示其他分类。</li>
        public let classId: Int64?

        /// 来源上下文，用于透传用户请求信息，[上传完成回调](/document/product/266/7830) 将返回该字段值，最长 250 个字符。
        public let sourceContext: String?

        /// 会话上下文，用于透传用户请求信息，当指定 Procedure 参数后，[任务流状态变更回调](/document/product/266/9636) 将返回该字段值，最长 1000 个字符。
        public let sessionContext: String?

        /// 保留字段，特殊用途时使用。
        public let extInfo: String?

        public init(mediaType: String, subAppId: UInt64? = nil, mediaName: String? = nil, coverType: String? = nil, procedure: String? = nil, expireTime: Date? = nil, storageRegion: String? = nil, classId: Int64? = nil, sourceContext: String? = nil, sessionContext: String? = nil, extInfo: String? = nil) {
            self.mediaType = mediaType
            self.subAppId = subAppId
            self.mediaName = mediaName
            self.coverType = coverType
            self.procedure = procedure
            self._expireTime = .init(wrappedValue: expireTime)
            self.storageRegion = storageRegion
            self.classId = classId
            self.sourceContext = sourceContext
            self.sessionContext = sessionContext
            self.extInfo = extInfo
        }

        enum CodingKeys: String, CodingKey {
            case mediaType = "MediaType"
            case subAppId = "SubAppId"
            case mediaName = "MediaName"
            case coverType = "CoverType"
            case procedure = "Procedure"
            case expireTime = "ExpireTime"
            case storageRegion = "StorageRegion"
            case classId = "ClassId"
            case sourceContext = "SourceContext"
            case sessionContext = "SessionContext"
            case extInfo = "ExtInfo"
        }
    }

    /// ApplyUpload返回参数结构体
    public struct ApplyUploadResponse: TCResponseModel {
        /// 存储桶，用于上传接口 URL 的 bucket_name。
        public let storageBucket: String

        /// 存储园区，用于上传接口 Host 的 Region。
        public let storageRegion: String

        /// 点播会话，用于确认上传接口的参数 VodSessionKey。
        public let vodSessionKey: String

        /// 媒体存储路径，用于上传接口存储媒体的对象键（Key）。
        public let mediaStoragePath: String

        /// 封面存储路径，用于上传接口存储封面的对象键（Key）。
        public let coverStoragePath: String

        /// 临时凭证，用于上传接口的权限验证。
        public let tempCertificate: TempCertificate

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case storageBucket = "StorageBucket"
            case storageRegion = "StorageRegion"
            case vodSessionKey = "VodSessionKey"
            case mediaStoragePath = "MediaStoragePath"
            case coverStoragePath = "CoverStoragePath"
            case tempCertificate = "TempCertificate"
            case requestId = "RequestId"
        }
    }

    /// 申请上传
    ///
    /// * 我们强烈建议您使用云点播提供的 [服务端上传 SDK](/document/product/266/9759#1.-.E5.8F.91.E8.B5.B7.E4.B8.8A.E4.BC.A0) 来上传文件。直接调用 API 进行上传的难度和工作量都显著大于使用 SDK。
    /// * 该接口用于申请媒体文件（和封面文件）的上传，获取文件上传到云点播的元信息（包括上传路径、上传签名等），用于后续上传接口。
    /// * 上传流程请参考 [服务端上传综述](/document/product/266/9759)。
    @inlinable
    public func applyUpload(_ input: ApplyUploadRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyUploadResponse> {
        self.client.execute(action: "ApplyUpload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 申请上传
    ///
    /// * 我们强烈建议您使用云点播提供的 [服务端上传 SDK](/document/product/266/9759#1.-.E5.8F.91.E8.B5.B7.E4.B8.8A.E4.BC.A0) 来上传文件。直接调用 API 进行上传的难度和工作量都显著大于使用 SDK。
    /// * 该接口用于申请媒体文件（和封面文件）的上传，获取文件上传到云点播的元信息（包括上传路径、上传签名等），用于后续上传接口。
    /// * 上传流程请参考 [服务端上传综述](/document/product/266/9759)。
    @inlinable
    public func applyUpload(_ input: ApplyUploadRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyUploadResponse {
        try await self.client.execute(action: "ApplyUpload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 申请上传
    ///
    /// * 我们强烈建议您使用云点播提供的 [服务端上传 SDK](/document/product/266/9759#1.-.E5.8F.91.E8.B5.B7.E4.B8.8A.E4.BC.A0) 来上传文件。直接调用 API 进行上传的难度和工作量都显著大于使用 SDK。
    /// * 该接口用于申请媒体文件（和封面文件）的上传，获取文件上传到云点播的元信息（包括上传路径、上传签名等），用于后续上传接口。
    /// * 上传流程请参考 [服务端上传综述](/document/product/266/9759)。
    @inlinable
    public func applyUpload(mediaType: String, subAppId: UInt64? = nil, mediaName: String? = nil, coverType: String? = nil, procedure: String? = nil, expireTime: Date? = nil, storageRegion: String? = nil, classId: Int64? = nil, sourceContext: String? = nil, sessionContext: String? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyUploadResponse> {
        let input = ApplyUploadRequest(mediaType: mediaType, subAppId: subAppId, mediaName: mediaName, coverType: coverType, procedure: procedure, expireTime: expireTime, storageRegion: storageRegion, classId: classId, sourceContext: sourceContext, sessionContext: sessionContext, extInfo: extInfo)
        return self.client.execute(action: "ApplyUpload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 申请上传
    ///
    /// * 我们强烈建议您使用云点播提供的 [服务端上传 SDK](/document/product/266/9759#1.-.E5.8F.91.E8.B5.B7.E4.B8.8A.E4.BC.A0) 来上传文件。直接调用 API 进行上传的难度和工作量都显著大于使用 SDK。
    /// * 该接口用于申请媒体文件（和封面文件）的上传，获取文件上传到云点播的元信息（包括上传路径、上传签名等），用于后续上传接口。
    /// * 上传流程请参考 [服务端上传综述](/document/product/266/9759)。
    @inlinable
    public func applyUpload(mediaType: String, subAppId: UInt64? = nil, mediaName: String? = nil, coverType: String? = nil, procedure: String? = nil, expireTime: Date? = nil, storageRegion: String? = nil, classId: Int64? = nil, sourceContext: String? = nil, sessionContext: String? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyUploadResponse {
        let input = ApplyUploadRequest(mediaType: mediaType, subAppId: subAppId, mediaName: mediaName, coverType: coverType, procedure: procedure, expireTime: expireTime, storageRegion: storageRegion, classId: classId, sourceContext: sourceContext, sessionContext: sessionContext, extInfo: extInfo)
        return try await self.client.execute(action: "ApplyUpload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}

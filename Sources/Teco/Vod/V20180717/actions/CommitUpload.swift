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
    /// CommitUpload请求参数结构体
    public struct CommitUploadRequest: TCRequestModel {
        /// 点播会话，取申请上传接口的返回值 VodSessionKey。
        public let vodSessionKey: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(vodSessionKey: String, subAppId: UInt64? = nil) {
            self.vodSessionKey = vodSessionKey
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case vodSessionKey = "VodSessionKey"
            case subAppId = "SubAppId"
        }
    }

    /// CommitUpload返回参数结构体
    public struct CommitUploadResponse: TCResponseModel {
        /// 媒体文件的唯一标识。
        public let fileId: String

        /// 媒体播放地址。
        public let mediaUrl: String

        /// 媒体封面地址。
        public let coverUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case mediaUrl = "MediaUrl"
            case coverUrl = "CoverUrl"
            case requestId = "RequestId"
        }
    }

    /// 确认上传
    ///
    /// 该接口用于确认媒体文件（和封面文件）上传到腾讯云点播的结果，并存储媒体信息，返回文件的播放地址和文件 ID。
    @inlinable
    public func commitUpload(_ input: CommitUploadRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CommitUploadResponse> {
        self.client.execute(action: "CommitUpload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 确认上传
    ///
    /// 该接口用于确认媒体文件（和封面文件）上传到腾讯云点播的结果，并存储媒体信息，返回文件的播放地址和文件 ID。
    @inlinable
    public func commitUpload(_ input: CommitUploadRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommitUploadResponse {
        try await self.client.execute(action: "CommitUpload", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 确认上传
    ///
    /// 该接口用于确认媒体文件（和封面文件）上传到腾讯云点播的结果，并存储媒体信息，返回文件的播放地址和文件 ID。
    @inlinable
    public func commitUpload(vodSessionKey: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CommitUploadResponse> {
        self.commitUpload(.init(vodSessionKey: vodSessionKey, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 确认上传
    ///
    /// 该接口用于确认媒体文件（和封面文件）上传到腾讯云点播的结果，并存储媒体信息，返回文件的播放地址和文件 ID。
    @inlinable
    public func commitUpload(vodSessionKey: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CommitUploadResponse {
        try await self.commitUpload(.init(vodSessionKey: vodSessionKey, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}

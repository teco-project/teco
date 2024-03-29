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

import Logging
import NIOCore
import TecoCore

extension Cpdp {
    /// DownloadOrgFile请求参数结构体
    public struct DownloadOrgFileRequest: TCRequest {
        /// 收单系统分配的开放ID
        public let openId: String

        /// 收单系统分配的密钥
        public let openKey: String

        /// 存储区域（0私密区，1公共区），请严格按文件要求，上传到不同的区域
        public let storage: String?

        /// 文件路径
        public let filePath: String?

        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?

        public init(openId: String, openKey: String, storage: String? = nil, filePath: String? = nil, profile: String? = nil) {
            self.openId = openId
            self.openKey = openKey
            self.storage = storage
            self.filePath = filePath
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case storage = "Storage"
            case filePath = "FilePath"
            case profile = "Profile"
        }
    }

    /// DownloadOrgFile返回参数结构体
    public struct DownloadOrgFileResponse: TCResponse {
        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 业务系统返回码
        public let errCode: String

        /// 下载机构文件响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: DownloadFileResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errMessage = "ErrMessage"
            case errCode = "ErrCode"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云支付-下载机构文件接口
    @inlinable
    public func downloadOrgFile(_ input: DownloadOrgFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadOrgFileResponse> {
        self.client.execute(action: "DownloadOrgFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云支付-下载机构文件接口
    @inlinable
    public func downloadOrgFile(_ input: DownloadOrgFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadOrgFileResponse {
        try await self.client.execute(action: "DownloadOrgFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云支付-下载机构文件接口
    @inlinable
    public func downloadOrgFile(openId: String, openKey: String, storage: String? = nil, filePath: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadOrgFileResponse> {
        self.downloadOrgFile(.init(openId: openId, openKey: openKey, storage: storage, filePath: filePath, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云支付-下载机构文件接口
    @inlinable
    public func downloadOrgFile(openId: String, openKey: String, storage: String? = nil, filePath: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadOrgFileResponse {
        try await self.downloadOrgFile(.init(openId: openId, openKey: openKey, storage: storage, filePath: filePath, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}

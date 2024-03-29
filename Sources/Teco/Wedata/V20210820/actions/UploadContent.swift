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

extension Wedata {
    /// UploadContent请求参数结构体
    public struct UploadContentRequest: TCRequest {
        /// 脚本上传信息
        public let scriptRequestInfo: ScriptRequestInfo

        public init(scriptRequestInfo: ScriptRequestInfo) {
            self.scriptRequestInfo = scriptRequestInfo
        }

        enum CodingKeys: String, CodingKey {
            case scriptRequestInfo = "ScriptRequestInfo"
        }
    }

    /// UploadContent返回参数结构体
    public struct UploadContentResponse: TCResponse {
        /// 脚本信息响应
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scriptInfo: ScriptInfoResponse?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scriptInfo = "ScriptInfo"
            case requestId = "RequestId"
        }
    }

    /// 开发空间-保存任务信息
    ///
    /// 保存任务信息
    @inlinable
    public func uploadContent(_ input: UploadContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadContentResponse> {
        self.client.execute(action: "UploadContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开发空间-保存任务信息
    ///
    /// 保存任务信息
    @inlinable
    public func uploadContent(_ input: UploadContentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadContentResponse {
        try await self.client.execute(action: "UploadContent", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开发空间-保存任务信息
    ///
    /// 保存任务信息
    @inlinable
    public func uploadContent(scriptRequestInfo: ScriptRequestInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadContentResponse> {
        self.uploadContent(.init(scriptRequestInfo: scriptRequestInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 开发空间-保存任务信息
    ///
    /// 保存任务信息
    @inlinable
    public func uploadContent(scriptRequestInfo: ScriptRequestInfo, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadContentResponse {
        try await self.uploadContent(.init(scriptRequestInfo: scriptRequestInfo), region: region, logger: logger, on: eventLoop)
    }
}

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

extension Tem {
    /// ModifyApplicationInfo请求参数结构体
    public struct ModifyApplicationInfoRequest: TCRequest {
        /// 应用ID
        public let applicationId: String

        /// 描述
        public let description: String

        /// 来源渠道
        public let sourceChannel: Int64?

        /// 是否开启调用链,（此参数已弃用）
        public let enableTracing: UInt64?

        public init(applicationId: String, description: String, sourceChannel: Int64? = nil, enableTracing: UInt64? = nil) {
            self.applicationId = applicationId
            self.description = description
            self.sourceChannel = sourceChannel
            self.enableTracing = enableTracing
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case description = "Description"
            case sourceChannel = "SourceChannel"
            case enableTracing = "EnableTracing"
        }
    }

    /// ModifyApplicationInfo返回参数结构体
    public struct ModifyApplicationInfoResponse: TCResponse {
        /// 成功与否
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 修改应用基本信息
    @inlinable
    public func modifyApplicationInfo(_ input: ModifyApplicationInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationInfoResponse> {
        self.client.execute(action: "ModifyApplicationInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改应用基本信息
    @inlinable
    public func modifyApplicationInfo(_ input: ModifyApplicationInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationInfoResponse {
        try await self.client.execute(action: "ModifyApplicationInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改应用基本信息
    @inlinable
    public func modifyApplicationInfo(applicationId: String, description: String, sourceChannel: Int64? = nil, enableTracing: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyApplicationInfoResponse> {
        self.modifyApplicationInfo(.init(applicationId: applicationId, description: description, sourceChannel: sourceChannel, enableTracing: enableTracing), region: region, logger: logger, on: eventLoop)
    }

    /// 修改应用基本信息
    @inlinable
    public func modifyApplicationInfo(applicationId: String, description: String, sourceChannel: Int64? = nil, enableTracing: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationInfoResponse {
        try await self.modifyApplicationInfo(.init(applicationId: applicationId, description: description, sourceChannel: sourceChannel, enableTracing: enableTracing), region: region, logger: logger, on: eventLoop)
    }
}

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

extension Wedata {
    /// DescribeOfflineTaskToken请求参数结构体
    public struct DescribeOfflineTaskTokenRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeOfflineTaskToken返回参数结构体
    public struct DescribeOfflineTaskTokenResponse: TCResponseModel {
        /// 长连接临时token
        public let token: String

        /// 长连接临时token。与Token相同含义，优先取Data，Data为空时，取Token。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case token = "Token"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取离线任务长连接Token
    @inlinable
    public func describeOfflineTaskToken(_ input: DescribeOfflineTaskTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOfflineTaskTokenResponse> {
        self.client.execute(action: "DescribeOfflineTaskToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取离线任务长连接Token
    @inlinable
    public func describeOfflineTaskToken(_ input: DescribeOfflineTaskTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOfflineTaskTokenResponse {
        try await self.client.execute(action: "DescribeOfflineTaskToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取离线任务长连接Token
    @inlinable
    public func describeOfflineTaskToken(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOfflineTaskTokenResponse> {
        self.describeOfflineTaskToken(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取离线任务长连接Token
    @inlinable
    public func describeOfflineTaskToken(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOfflineTaskTokenResponse {
        try await self.describeOfflineTaskToken(.init(), region: region, logger: logger, on: eventLoop)
    }
}

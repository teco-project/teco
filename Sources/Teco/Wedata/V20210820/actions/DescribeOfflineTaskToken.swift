//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case token = "Token"
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
        self.describeOfflineTaskToken(DescribeOfflineTaskTokenRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取离线任务长连接Token
    @inlinable
    public func describeOfflineTaskToken(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOfflineTaskTokenResponse {
        try await self.describeOfflineTaskToken(DescribeOfflineTaskTokenRequest(), region: region, logger: logger, on: eventLoop)
    }
}

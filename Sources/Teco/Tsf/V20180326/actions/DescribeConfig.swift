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

extension Tsf {
    /// DescribeConfig请求参数结构体
    public struct DescribeConfigRequest: TCRequest {
        /// 配置项ID
        public let configId: String

        public init(configId: String) {
            self.configId = configId
        }

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
        }
    }

    /// DescribeConfig返回参数结构体
    public struct DescribeConfigResponse: TCResponse {
        /// 配置项
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Config?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询配置
    @inlinable
    public func describeConfig(_ input: DescribeConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigResponse> {
        self.client.execute(action: "DescribeConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询配置
    @inlinable
    public func describeConfig(_ input: DescribeConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigResponse {
        try await self.client.execute(action: "DescribeConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询配置
    @inlinable
    public func describeConfig(configId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigResponse> {
        self.describeConfig(.init(configId: configId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询配置
    @inlinable
    public func describeConfig(configId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigResponse {
        try await self.describeConfig(.init(configId: configId), region: region, logger: logger, on: eventLoop)
    }
}

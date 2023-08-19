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
    /// DescribeLogConfig请求参数结构体
    public struct DescribeLogConfigRequest: TCRequest {
        /// 环境 ID
        public let environmentId: String

        /// 配置名
        public let name: String

        /// 应用 ID
        public let applicationId: String?

        public init(environmentId: String, name: String, applicationId: String? = nil) {
            self.environmentId = environmentId
            self.name = name
            self.applicationId = applicationId
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case name = "Name"
            case applicationId = "ApplicationId"
        }
    }

    /// DescribeLogConfig返回参数结构体
    public struct DescribeLogConfigResponse: TCResponse {
        /// 配置
        public let result: LogConfig

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询日志收集配置详情
    @inlinable
    public func describeLogConfig(_ input: DescribeLogConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogConfigResponse> {
        self.client.execute(action: "DescribeLogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询日志收集配置详情
    @inlinable
    public func describeLogConfig(_ input: DescribeLogConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogConfigResponse {
        try await self.client.execute(action: "DescribeLogConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询日志收集配置详情
    @inlinable
    public func describeLogConfig(environmentId: String, name: String, applicationId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogConfigResponse> {
        self.describeLogConfig(.init(environmentId: environmentId, name: name, applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询日志收集配置详情
    @inlinable
    public func describeLogConfig(environmentId: String, name: String, applicationId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogConfigResponse {
        try await self.describeLogConfig(.init(environmentId: environmentId, name: name, applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }
}

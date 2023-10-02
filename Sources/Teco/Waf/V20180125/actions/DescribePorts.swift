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

extension Waf {
    /// DescribePorts请求参数结构体
    public struct DescribePortsRequest: TCRequest {
        /// 实例ID
        public let instanceID: String?

        /// 实例类型
        public let edition: String?

        public init(instanceID: String? = nil, edition: String? = nil) {
            self.instanceID = instanceID
            self.edition = edition
        }

        enum CodingKeys: String, CodingKey {
            case instanceID = "InstanceID"
            case edition = "Edition"
        }
    }

    /// DescribePorts返回参数结构体
    public struct DescribePortsResponse: TCResponse {
        /// http端口列表
        public let httpPorts: [String]

        /// https端口列表
        public let httpsPorts: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case httpPorts = "HttpPorts"
            case httpsPorts = "HttpsPorts"
            case requestId = "RequestId"
        }
    }

    /// 获取Saas型WAF防护端口列表
    @inlinable
    public func describePorts(_ input: DescribePortsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePortsResponse> {
        self.client.execute(action: "DescribePorts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Saas型WAF防护端口列表
    @inlinable
    public func describePorts(_ input: DescribePortsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePortsResponse {
        try await self.client.execute(action: "DescribePorts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Saas型WAF防护端口列表
    @inlinable
    public func describePorts(instanceID: String? = nil, edition: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePortsResponse> {
        self.describePorts(.init(instanceID: instanceID, edition: edition), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Saas型WAF防护端口列表
    @inlinable
    public func describePorts(instanceID: String? = nil, edition: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePortsResponse {
        try await self.describePorts(.init(instanceID: instanceID, edition: edition), region: region, logger: logger, on: eventLoop)
    }
}
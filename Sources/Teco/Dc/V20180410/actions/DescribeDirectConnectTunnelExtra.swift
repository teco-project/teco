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

extension Dc {
    /// DescribeDirectConnectTunnelExtra请求参数结构体
    public struct DescribeDirectConnectTunnelExtraRequest: TCRequest {
        /// 专用通道ID
        public let directConnectTunnelId: String

        public init(directConnectTunnelId: String) {
            self.directConnectTunnelId = directConnectTunnelId
        }

        enum CodingKeys: String, CodingKey {
            case directConnectTunnelId = "DirectConnectTunnelId"
        }
    }

    /// DescribeDirectConnectTunnelExtra返回参数结构体
    public struct DescribeDirectConnectTunnelExtraResponse: TCResponse {
        /// 专用通道扩展信息
        public let directConnectTunnelExtra: DirectConnectTunnelExtra

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case directConnectTunnelExtra = "DirectConnectTunnelExtra"
            case requestId = "RequestId"
        }
    }

    /// 查询专用通道扩展信息
    ///
    /// 本接口（DescribeDirectConnectTunnelExtra）用于查询专用通道扩展信息
    @inlinable
    public func describeDirectConnectTunnelExtra(_ input: DescribeDirectConnectTunnelExtraRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDirectConnectTunnelExtraResponse> {
        self.client.execute(action: "DescribeDirectConnectTunnelExtra", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询专用通道扩展信息
    ///
    /// 本接口（DescribeDirectConnectTunnelExtra）用于查询专用通道扩展信息
    @inlinable
    public func describeDirectConnectTunnelExtra(_ input: DescribeDirectConnectTunnelExtraRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDirectConnectTunnelExtraResponse {
        try await self.client.execute(action: "DescribeDirectConnectTunnelExtra", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询专用通道扩展信息
    ///
    /// 本接口（DescribeDirectConnectTunnelExtra）用于查询专用通道扩展信息
    @inlinable
    public func describeDirectConnectTunnelExtra(directConnectTunnelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDirectConnectTunnelExtraResponse> {
        self.describeDirectConnectTunnelExtra(.init(directConnectTunnelId: directConnectTunnelId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询专用通道扩展信息
    ///
    /// 本接口（DescribeDirectConnectTunnelExtra）用于查询专用通道扩展信息
    @inlinable
    public func describeDirectConnectTunnelExtra(directConnectTunnelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDirectConnectTunnelExtraResponse {
        try await self.describeDirectConnectTunnelExtra(.init(directConnectTunnelId: directConnectTunnelId), region: region, logger: logger, on: eventLoop)
    }
}

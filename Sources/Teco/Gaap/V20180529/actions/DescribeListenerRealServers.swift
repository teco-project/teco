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

extension Gaap {
    /// DescribeListenerRealServers请求参数结构体
    public struct DescribeListenerRealServersRequest: TCRequestModel {
        /// 监听器ID
        public let listenerId: String

        public init(listenerId: String) {
            self.listenerId = listenerId
        }

        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
        }
    }

    /// DescribeListenerRealServers返回参数结构体
    public struct DescribeListenerRealServersResponse: TCResponseModel {
        /// 可绑定源站的个数
        public let totalCount: UInt64

        /// 源站信息列表
        public let realServerSet: [RealServer]

        /// 已绑定源站的个数
        public let bindRealServerTotalCount: UInt64

        /// 已绑定源站信息列表
        public let bindRealServerSet: [BindRealServer]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case realServerSet = "RealServerSet"
            case bindRealServerTotalCount = "BindRealServerTotalCount"
            case bindRealServerSet = "BindRealServerSet"
            case requestId = "RequestId"
        }
    }

    /// 查询监听器源站列表
    ///
    /// 该接口（DescribeListenerRealServers）用于查询TCP/UDP监听器源站列表，包括该监听器已经绑定的源站列表以及可以绑定的源站列表。
    @inlinable
    public func describeListenerRealServers(_ input: DescribeListenerRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListenerRealServersResponse> {
        self.client.execute(action: "DescribeListenerRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询监听器源站列表
    ///
    /// 该接口（DescribeListenerRealServers）用于查询TCP/UDP监听器源站列表，包括该监听器已经绑定的源站列表以及可以绑定的源站列表。
    @inlinable
    public func describeListenerRealServers(_ input: DescribeListenerRealServersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListenerRealServersResponse {
        try await self.client.execute(action: "DescribeListenerRealServers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询监听器源站列表
    ///
    /// 该接口（DescribeListenerRealServers）用于查询TCP/UDP监听器源站列表，包括该监听器已经绑定的源站列表以及可以绑定的源站列表。
    @inlinable
    public func describeListenerRealServers(listenerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListenerRealServersResponse> {
        self.describeListenerRealServers(.init(listenerId: listenerId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询监听器源站列表
    ///
    /// 该接口（DescribeListenerRealServers）用于查询TCP/UDP监听器源站列表，包括该监听器已经绑定的源站列表以及可以绑定的源站列表。
    @inlinable
    public func describeListenerRealServers(listenerId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListenerRealServersResponse {
        try await self.describeListenerRealServers(.init(listenerId: listenerId), region: region, logger: logger, on: eventLoop)
    }
}

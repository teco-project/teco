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

extension Antiddos {
    /// DescribeListListener请求参数结构体
    public struct DescribeListListenerRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeListListener返回参数结构体
    public struct DescribeListListenerResponse: TCResponse {
        /// 4层转发监听器列表
        public let layer4Listeners: [Layer4Rule]

        /// 7层转发监听器列表
        public let layer7Listeners: [Layer7Rule]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case layer4Listeners = "Layer4Listeners"
            case layer7Listeners = "Layer7Listeners"
            case requestId = "RequestId"
        }
    }

    /// 获取转发监听器列表
    @inlinable
    public func describeListListener(_ input: DescribeListListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListListenerResponse> {
        self.client.execute(action: "DescribeListListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取转发监听器列表
    @inlinable
    public func describeListListener(_ input: DescribeListListenerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListListenerResponse {
        try await self.client.execute(action: "DescribeListListener", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取转发监听器列表
    @inlinable
    public func describeListListener(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListListenerResponse> {
        self.describeListListener(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取转发监听器列表
    @inlinable
    public func describeListListener(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListListenerResponse {
        try await self.describeListListener(.init(), region: region, logger: logger, on: eventLoop)
    }
}

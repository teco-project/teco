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

extension Cwp {
    /// DescribeReverseShellEventInfo请求参数结构体
    public struct DescribeReverseShellEventInfoRequest: TCRequest {
        /// 事件id
        public let id: UInt64

        public init(id: UInt64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DescribeReverseShellEventInfo返回参数结构体
    public struct DescribeReverseShellEventInfoResponse: TCResponse {
        /// 反弹shell详情信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reverseShellEventInfo: ReverseShellEventInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case reverseShellEventInfo = "ReverseShellEventInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询反弹shell详情
    ///
    /// 反弹shell信息详情
    @inlinable
    public func describeReverseShellEventInfo(_ input: DescribeReverseShellEventInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReverseShellEventInfoResponse> {
        self.client.execute(action: "DescribeReverseShellEventInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询反弹shell详情
    ///
    /// 反弹shell信息详情
    @inlinable
    public func describeReverseShellEventInfo(_ input: DescribeReverseShellEventInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellEventInfoResponse {
        try await self.client.execute(action: "DescribeReverseShellEventInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询反弹shell详情
    ///
    /// 反弹shell信息详情
    @inlinable
    public func describeReverseShellEventInfo(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReverseShellEventInfoResponse> {
        self.describeReverseShellEventInfo(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 查询反弹shell详情
    ///
    /// 反弹shell信息详情
    @inlinable
    public func describeReverseShellEventInfo(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellEventInfoResponse {
        try await self.describeReverseShellEventInfo(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}

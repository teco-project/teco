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

import TecoCore

extension Cfw {
    /// DescribeTableStatus请求参数结构体
    public struct DescribeTableStatusRequest: TCRequestModel {
        /// EdgeId值两个vpc间的边id vpc填Edgeid，不要填Area；
        public let edgeId: String?

        /// 状态值，0：检查表的状态 确实只有一个默认值
        public let status: UInt64?

        /// Nat所在地域 NAT填Area，不要填Edgeid；
        public let area: String?

        /// 方向，0：出站，1：入站 默认值为 0
        public let direction: UInt64?

        public init(edgeId: String? = nil, status: UInt64? = nil, area: String? = nil, direction: UInt64? = nil) {
            self.edgeId = edgeId
            self.status = status
            self.area = area
            self.direction = direction
        }

        enum CodingKeys: String, CodingKey {
            case edgeId = "EdgeId"
            case status = "Status"
            case area = "Area"
            case direction = "Direction"
        }
    }

    /// DescribeTableStatus返回参数结构体
    public struct DescribeTableStatusResponse: TCResponseModel {
        /// 0：正常，其它：不正常
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 查询规则表状态
    @inlinable
    public func describeTableStatus(_ input: DescribeTableStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableStatusResponse> {
        self.client.execute(action: "DescribeTableStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询规则表状态
    @inlinable
    public func describeTableStatus(_ input: DescribeTableStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTableStatusResponse {
        try await self.client.execute(action: "DescribeTableStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询规则表状态
    @inlinable
    public func describeTableStatus(edgeId: String? = nil, status: UInt64? = nil, area: String? = nil, direction: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableStatusResponse> {
        self.describeTableStatus(.init(edgeId: edgeId, status: status, area: area, direction: direction), region: region, logger: logger, on: eventLoop)
    }

    /// 查询规则表状态
    @inlinable
    public func describeTableStatus(edgeId: String? = nil, status: UInt64? = nil, area: String? = nil, direction: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTableStatusResponse {
        try await self.describeTableStatus(.init(edgeId: edgeId, status: status, area: area, direction: direction), region: region, logger: logger, on: eventLoop)
    }
}

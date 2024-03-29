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
    /// DescribeIgnoreHostAndItemConfig请求参数结构体
    public struct DescribeIgnoreHostAndItemConfigRequest: TCRequest {
        /// - ItemId - int64 - 是否必填：否 - 项Id</i>
        /// - RuleId - int64 - 是否必填：否 - 规则Id
        /// - HostId - string - 是否必填：否 - 主机Id
        public let filters: [Filter]?

        public init(filters: [Filter]? = nil) {
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
        }
    }

    /// DescribeIgnoreHostAndItemConfig返回参数结构体
    public struct DescribeIgnoreHostAndItemConfigResponse: TCResponse {
        /// 受影响检测项
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let itemSet: [BaselineItemInfo]?

        /// 受影响主机
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostSet: [BaselineHost]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case itemSet = "ItemSet"
            case hostSet = "HostSet"
            case requestId = "RequestId"
        }
    }

    /// 获取一键忽略受影响的检测项和主机信息
    @inlinable
    public func describeIgnoreHostAndItemConfig(_ input: DescribeIgnoreHostAndItemConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIgnoreHostAndItemConfigResponse> {
        self.client.execute(action: "DescribeIgnoreHostAndItemConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取一键忽略受影响的检测项和主机信息
    @inlinable
    public func describeIgnoreHostAndItemConfig(_ input: DescribeIgnoreHostAndItemConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIgnoreHostAndItemConfigResponse {
        try await self.client.execute(action: "DescribeIgnoreHostAndItemConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取一键忽略受影响的检测项和主机信息
    @inlinable
    public func describeIgnoreHostAndItemConfig(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIgnoreHostAndItemConfigResponse> {
        self.describeIgnoreHostAndItemConfig(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取一键忽略受影响的检测项和主机信息
    @inlinable
    public func describeIgnoreHostAndItemConfig(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIgnoreHostAndItemConfigResponse {
        try await self.describeIgnoreHostAndItemConfig(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }
}

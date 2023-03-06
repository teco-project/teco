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

import TecoPaginationHelpers

extension Cwp {
    /// DescribeBaselineRule请求参数结构体
    public struct DescribeBaselineRuleRequest: TCPaginatedRequest {
        /// 基线id
        public let baselineId: UInt64

        /// 分页参数 最大100条
        public let limit: UInt64

        /// 分页参数
        public let offset: UInt64

        /// 危害等级
        public let level: [UInt64]?

        /// 状态
        public let status: UInt64?

        /// 主机quuid
        public let quuid: String?

        /// 主机uuid
        public let uuid: String?

        public init(baselineId: UInt64, limit: UInt64, offset: UInt64, level: [UInt64]? = nil, status: UInt64? = nil, quuid: String? = nil, uuid: String? = nil) {
            self.baselineId = baselineId
            self.limit = limit
            self.offset = offset
            self.level = level
            self.status = status
            self.quuid = quuid
            self.uuid = uuid
        }

        enum CodingKeys: String, CodingKey {
            case baselineId = "BaselineId"
            case limit = "Limit"
            case offset = "Offset"
            case level = "Level"
            case status = "Status"
            case quuid = "Quuid"
            case uuid = "Uuid"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeBaselineRuleResponse) -> DescribeBaselineRuleRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBaselineRuleRequest(baselineId: self.baselineId, limit: self.limit, offset: self.offset + .init(response.getItems().count), level: self.level, status: self.status, quuid: self.quuid, uuid: self.uuid)
        }
    }

    /// DescribeBaselineRule返回参数结构体
    public struct DescribeBaselineRuleResponse: TCPaginatedResponse {
        /// 分页查询记录总数
        public let totalCount: UInt64

        /// 基线检测项列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let baselineRuleList: [BaselineRuleInfo]?

        /// 是否显示说明列：true-是，false-否
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let showRuleRemark: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case baselineRuleList = "BaselineRuleList"
            case showRuleRemark = "ShowRuleRemark"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BaselineRuleInfo] {
            self.baselineRuleList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询基线检测项信息
    ///
    /// 根据基线id查询下属检测项信息
    @inlinable
    public func describeBaselineRule(_ input: DescribeBaselineRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineRuleResponse> {
        self.client.execute(action: "DescribeBaselineRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询基线检测项信息
    ///
    /// 根据基线id查询下属检测项信息
    @inlinable
    public func describeBaselineRule(_ input: DescribeBaselineRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineRuleResponse {
        try await self.client.execute(action: "DescribeBaselineRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询基线检测项信息
    ///
    /// 根据基线id查询下属检测项信息
    @inlinable
    public func describeBaselineRule(baselineId: UInt64, limit: UInt64, offset: UInt64, level: [UInt64]? = nil, status: UInt64? = nil, quuid: String? = nil, uuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselineRuleResponse> {
        let input = DescribeBaselineRuleRequest(baselineId: baselineId, limit: limit, offset: offset, level: level, status: status, quuid: quuid, uuid: uuid)
        return self.client.execute(action: "DescribeBaselineRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询基线检测项信息
    ///
    /// 根据基线id查询下属检测项信息
    @inlinable
    public func describeBaselineRule(baselineId: UInt64, limit: UInt64, offset: UInt64, level: [UInt64]? = nil, status: UInt64? = nil, quuid: String? = nil, uuid: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselineRuleResponse {
        let input = DescribeBaselineRuleRequest(baselineId: baselineId, limit: limit, offset: offset, level: level, status: status, quuid: quuid, uuid: uuid)
        return try await self.client.execute(action: "DescribeBaselineRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}

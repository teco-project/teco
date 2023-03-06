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

extension Tsf {
    /// DescribeUnitRules请求参数结构体
    public struct DescribeUnitRulesRequest: TCPaginatedRequest {
        /// 网关实体ID
        public let gatewayInstanceId: String

        /// 根据规则名或备注内容模糊查询
        public let searchWord: String?

        /// 启用状态, disabled: 未发布， enabled: 发布
        public let status: String?

        /// 翻页查询偏移量
        public let offset: Int64?

        /// 翻页查询每页记录数
        public let limit: Int64?

        public init(gatewayInstanceId: String, searchWord: String? = nil, status: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.gatewayInstanceId = gatewayInstanceId
            self.searchWord = searchWord
            self.status = status
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case gatewayInstanceId = "GatewayInstanceId"
            case searchWord = "SearchWord"
            case status = "Status"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeUnitRulesResponse) -> DescribeUnitRulesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUnitRulesRequest(gatewayInstanceId: self.gatewayInstanceId, searchWord: self.searchWord, status: self.status, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeUnitRules返回参数结构体
    public struct DescribeUnitRulesResponse: TCPaginatedResponse {
        /// 分页列表信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: [TsfPageUnitRule]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TsfPageUnitRule] {
            self.result ?? []
        }
    }

    /// 查询单元化规则列表
    @inlinable
    public func describeUnitRules(_ input: DescribeUnitRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUnitRulesResponse> {
        self.client.execute(action: "DescribeUnitRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询单元化规则列表
    @inlinable
    public func describeUnitRules(_ input: DescribeUnitRulesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnitRulesResponse {
        try await self.client.execute(action: "DescribeUnitRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询单元化规则列表
    @inlinable
    public func describeUnitRules(gatewayInstanceId: String, searchWord: String? = nil, status: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUnitRulesResponse> {
        let input = DescribeUnitRulesRequest(gatewayInstanceId: gatewayInstanceId, searchWord: searchWord, status: status, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeUnitRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询单元化规则列表
    @inlinable
    public func describeUnitRules(gatewayInstanceId: String, searchWord: String? = nil, status: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnitRulesResponse {
        let input = DescribeUnitRulesRequest(gatewayInstanceId: gatewayInstanceId, searchWord: searchWord, status: status, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeUnitRules", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}

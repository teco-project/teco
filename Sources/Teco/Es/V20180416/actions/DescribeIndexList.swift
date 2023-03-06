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

extension Es {
    /// DescribeIndexList请求参数结构体
    public struct DescribeIndexListRequest: TCPaginatedRequest {
        /// 索引类型。auto：自治索引；normal：普通索引
        public let indexType: String

        /// ES集群ID
        public let instanceId: String?

        /// 索引名，若填空则获取所有索引
        public let indexName: String?

        /// 集群访问用户名
        public let username: String?

        /// 集群访问密码
        public let password: String?

        /// 分页起始位置
        public let offset: Int64?

        /// 一页展示数量
        public let limit: Int64?

        /// 排序字段，支持索引名：IndexName、索引存储量：IndexStorage、索引创建时间：IndexCreateTime
        public let orderBy: String?

        /// 过滤索引状态
        public let indexStatusList: [String]?

        /// 排序顺序，支持asc、desc
        public let order: String?

        public init(indexType: String, instanceId: String? = nil, indexName: String? = nil, username: String? = nil, password: String? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, indexStatusList: [String]? = nil, order: String? = nil) {
            self.indexType = indexType
            self.instanceId = instanceId
            self.indexName = indexName
            self.username = username
            self.password = password
            self.offset = offset
            self.limit = limit
            self.orderBy = orderBy
            self.indexStatusList = indexStatusList
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case indexType = "IndexType"
            case instanceId = "InstanceId"
            case indexName = "IndexName"
            case username = "Username"
            case password = "Password"
            case offset = "Offset"
            case limit = "Limit"
            case orderBy = "OrderBy"
            case indexStatusList = "IndexStatusList"
            case order = "Order"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeIndexListResponse) -> DescribeIndexListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeIndexListRequest(indexType: self.indexType, instanceId: self.instanceId, indexName: self.indexName, username: self.username, password: self.password, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, orderBy: self.orderBy, indexStatusList: self.indexStatusList, order: self.order)
        }
    }

    /// DescribeIndexList返回参数结构体
    public struct DescribeIndexListResponse: TCPaginatedResponse {
        /// 索引元数据字段
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let indexMetaFields: [IndexMetaField]?

        /// 查询总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case indexMetaFields = "IndexMetaFields"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [IndexMetaField] {
            self.indexMetaFields ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取索引列表
    @inlinable
    public func describeIndexList(_ input: DescribeIndexListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIndexListResponse> {
        self.client.execute(action: "DescribeIndexList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取索引列表
    @inlinable
    public func describeIndexList(_ input: DescribeIndexListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIndexListResponse {
        try await self.client.execute(action: "DescribeIndexList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取索引列表
    @inlinable
    public func describeIndexList(indexType: String, instanceId: String? = nil, indexName: String? = nil, username: String? = nil, password: String? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, indexStatusList: [String]? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIndexListResponse> {
        let input = DescribeIndexListRequest(indexType: indexType, instanceId: instanceId, indexName: indexName, username: username, password: password, offset: offset, limit: limit, orderBy: orderBy, indexStatusList: indexStatusList, order: order)
        return self.client.execute(action: "DescribeIndexList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取索引列表
    @inlinable
    public func describeIndexList(indexType: String, instanceId: String? = nil, indexName: String? = nil, username: String? = nil, password: String? = nil, offset: Int64? = nil, limit: Int64? = nil, orderBy: String? = nil, indexStatusList: [String]? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIndexListResponse {
        let input = DescribeIndexListRequest(indexType: indexType, instanceId: instanceId, indexName: indexName, username: username, password: password, offset: offset, limit: limit, orderBy: orderBy, indexStatusList: indexStatusList, order: order)
        return try await self.client.execute(action: "DescribeIndexList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}

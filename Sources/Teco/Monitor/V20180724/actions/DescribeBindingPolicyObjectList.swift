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

extension Monitor {
    /// DescribeBindingPolicyObjectList请求参数结构体
    public struct DescribeBindingPolicyObjectListRequest: TCPaginatedRequest {
        /// 固定值，为"monitor"
        public let module: String

        /// 策略组id，如果有形如 policy-xxxx 的 id，请填到 PolicyId 字段中，本字段填 0
        public let groupId: Int64

        /// 告警策略id，形如 policy-xxxx，如果填入，则GroupId可以填0
        public let policyId: String?

        /// 每次返回的数量，取值1~100，默认20
        public let limit: Int64?

        /// 偏移量，从0开始计数，默认0。举例来说，参数 Offset=0&Limit=20 返回第 0 到 19 项，Offset=20&Limit=20 返回第 20 到 39 项，以此类推
        public let offset: Int64?

        /// 筛选对象的维度信息
        public let dimensions: [DescribeBindingPolicyObjectListDimension]?

        public init(module: String, groupId: Int64, policyId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, dimensions: [DescribeBindingPolicyObjectListDimension]? = nil) {
            self.module = module
            self.groupId = groupId
            self.policyId = policyId
            self.limit = limit
            self.offset = offset
            self.dimensions = dimensions
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case groupId = "GroupId"
            case policyId = "PolicyId"
            case limit = "Limit"
            case offset = "Offset"
            case dimensions = "Dimensions"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeBindingPolicyObjectListResponse) -> DescribeBindingPolicyObjectListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBindingPolicyObjectListRequest(module: self.module, groupId: self.groupId, policyId: self.policyId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), dimensions: self.dimensions)
        }
    }

    /// DescribeBindingPolicyObjectList返回参数结构体
    public struct DescribeBindingPolicyObjectListResponse: TCPaginatedResponse {
        /// 绑定的对象实例列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [DescribeBindingPolicyObjectListInstance]?

        /// 绑定的对象实例总数
        public let total: Int64

        /// 未屏蔽的对象实例数
        public let noShieldedSum: Int64

        /// 绑定的实例分组信息，没有绑定实例分组则为空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceGroup: DescribeBindingPolicyObjectListInstanceGroup?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case total = "Total"
            case noShieldedSum = "NoShieldedSum"
            case instanceGroup = "InstanceGroup"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DescribeBindingPolicyObjectListInstance] {
            self.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取已绑定对象列表
    @inlinable
    public func describeBindingPolicyObjectList(_ input: DescribeBindingPolicyObjectListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindingPolicyObjectListResponse> {
        self.client.execute(action: "DescribeBindingPolicyObjectList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取已绑定对象列表
    @inlinable
    public func describeBindingPolicyObjectList(_ input: DescribeBindingPolicyObjectListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindingPolicyObjectListResponse {
        try await self.client.execute(action: "DescribeBindingPolicyObjectList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取已绑定对象列表
    @inlinable
    public func describeBindingPolicyObjectList(module: String, groupId: Int64, policyId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, dimensions: [DescribeBindingPolicyObjectListDimension]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindingPolicyObjectListResponse> {
        let input = DescribeBindingPolicyObjectListRequest(module: module, groupId: groupId, policyId: policyId, limit: limit, offset: offset, dimensions: dimensions)
        return self.client.execute(action: "DescribeBindingPolicyObjectList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取已绑定对象列表
    @inlinable
    public func describeBindingPolicyObjectList(module: String, groupId: Int64, policyId: String? = nil, limit: Int64? = nil, offset: Int64? = nil, dimensions: [DescribeBindingPolicyObjectListDimension]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindingPolicyObjectListResponse {
        let input = DescribeBindingPolicyObjectListRequest(module: module, groupId: groupId, policyId: policyId, limit: limit, offset: offset, dimensions: dimensions)
        return try await self.client.execute(action: "DescribeBindingPolicyObjectList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}

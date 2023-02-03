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

extension Asw {
    /// DescribeFlowServices请求参数结构体
    public struct DescribeFlowServicesRequest: TCRequestModel {
        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// 过滤条件，详见下表：实例过滤条件表。每次请求的Filter.Values的上限为5。参数名字仅支持FlowServiceName， Status, Type三种情况
        public let filters: [Filter]?

        public init(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }

    /// DescribeFlowServices返回参数结构体
    public struct DescribeFlowServicesResponse: TCResponseModel {
        /// 用户的状态机列表
        public let flowServiceSet: [StateMachine]

        /// 用户的状态机总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowServiceSet = "FlowServiceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询状态机列表
    ///
    /// 查询指定用户下所有状态机，以列表形式返回
    @inlinable
    public func describeFlowServices(_ input: DescribeFlowServicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowServicesResponse> {
        self.client.execute(action: "DescribeFlowServices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询状态机列表
    ///
    /// 查询指定用户下所有状态机，以列表形式返回
    @inlinable
    public func describeFlowServices(_ input: DescribeFlowServicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowServicesResponse {
        try await self.client.execute(action: "DescribeFlowServices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询状态机列表
    ///
    /// 查询指定用户下所有状态机，以列表形式返回
    @inlinable
    public func describeFlowServices(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFlowServicesResponse> {
        let input = DescribeFlowServicesRequest(offset: offset, limit: limit, filters: filters)
        return self.client.execute(action: "DescribeFlowServices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询状态机列表
    ///
    /// 查询指定用户下所有状态机，以列表形式返回
    @inlinable
    public func describeFlowServices(offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowServicesResponse {
        let input = DescribeFlowServicesRequest(offset: offset, limit: limit, filters: filters)
        return try await self.client.execute(action: "DescribeFlowServices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}

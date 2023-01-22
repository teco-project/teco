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

extension Cls {
    /// DescribeMachineGroups请求参数结构体
    public struct DescribeMachineGroupsRequest: TCRequestModel {
        /// <br><li> machineGroupName
        ///
        /// 按照【机器组名称】进行过滤。
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// <br><li> machineGroupId
        ///
        /// 按照【机器组ID】进行过滤。
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// <br><li> tagKey
        ///
        /// 按照【标签键】进行过滤。
        ///
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// <br><li> tag:tagKey
        ///
        /// 按照【标签键值对】进行过滤。tagKey使用具体的标签键进行替换。
        /// 类型：String
        ///
        /// 必选：否
        ///
        ///
        /// 每次请求的Filters的上限为10，Filter.Values的上限为5。
        public let filters: [Filter]?

        /// 分页的偏移量，默认值为0
        public let offset: Int64?

        /// 分页单页的限制数目，默认值为20，最大值100
        public let limit: Int64?

        public init(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeMachineGroups返回参数结构体
    public struct DescribeMachineGroupsResponse: TCResponseModel {
        /// 机器组信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let machineGroups: [MachineGroupInfo]?

        /// 分页的总数目
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case machineGroups = "MachineGroups"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取机器组列表
    ///
    /// 获取机器组信息列表
    @inlinable
    public func describeMachineGroups(_ input: DescribeMachineGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineGroupsResponse> {
        self.client.execute(action: "DescribeMachineGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取机器组列表
    ///
    /// 获取机器组信息列表
    @inlinable
    public func describeMachineGroups(_ input: DescribeMachineGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineGroupsResponse {
        try await self.client.execute(action: "DescribeMachineGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取机器组列表
    ///
    /// 获取机器组信息列表
    @inlinable
    public func describeMachineGroups(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineGroupsResponse> {
        self.describeMachineGroups(DescribeMachineGroupsRequest(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取机器组列表
    ///
    /// 获取机器组信息列表
    @inlinable
    public func describeMachineGroups(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineGroupsResponse {
        try await self.describeMachineGroups(DescribeMachineGroupsRequest(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}

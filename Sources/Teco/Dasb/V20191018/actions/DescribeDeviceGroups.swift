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

extension Dasb {
    /// DescribeDeviceGroups请求参数结构体
    public struct DescribeDeviceGroupsRequest: TCRequestModel {
        /// 资产组ID集合
        public let idSet: [UInt64]?

        /// 资产组名，最长64个字符，模糊查询
        public let name: String?

        /// 分页偏移位置，默认值为0
        public let offset: UInt64?

        /// 每页条目数量，缺省20，最大500
        public let limit: UInt64?

        /// 部门ID，用于过滤属于某个部门的资产组
        public let departmentId: String?

        public init(idSet: [UInt64]? = nil, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, departmentId: String? = nil) {
            self.idSet = idSet
            self.name = name
            self.offset = offset
            self.limit = limit
            self.departmentId = departmentId
        }

        enum CodingKeys: String, CodingKey {
            case idSet = "IdSet"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
            case departmentId = "DepartmentId"
        }
    }

    /// DescribeDeviceGroups返回参数结构体
    public struct DescribeDeviceGroupsResponse: TCResponseModel {
        /// 资产组总数
        public let totalCount: UInt64

        /// 资产组列表
        public let groupSet: [Group]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case groupSet = "GroupSet"
            case requestId = "RequestId"
        }
    }

    /// 查询资产组列表
    @inlinable
    public func describeDeviceGroups(_ input: DescribeDeviceGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceGroupsResponse> {
        self.client.execute(action: "DescribeDeviceGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产组列表
    @inlinable
    public func describeDeviceGroups(_ input: DescribeDeviceGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceGroupsResponse {
        try await self.client.execute(action: "DescribeDeviceGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资产组列表
    @inlinable
    public func describeDeviceGroups(idSet: [UInt64]? = nil, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceGroupsResponse> {
        let input = DescribeDeviceGroupsRequest(idSet: idSet, name: name, offset: offset, limit: limit, departmentId: departmentId)
        return self.client.execute(action: "DescribeDeviceGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产组列表
    @inlinable
    public func describeDeviceGroups(idSet: [UInt64]? = nil, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceGroupsResponse {
        let input = DescribeDeviceGroupsRequest(idSet: idSet, name: name, offset: offset, limit: limit, departmentId: departmentId)
        return try await self.client.execute(action: "DescribeDeviceGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}

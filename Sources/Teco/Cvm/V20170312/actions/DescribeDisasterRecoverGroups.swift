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

extension Cvm {
    /// DescribeDisasterRecoverGroups请求参数结构体
    public struct DescribeDisasterRecoverGroupsRequest: TCRequestModel {
        /// 分散置放群组ID列表。每次请求允许操作的分散置放群组数量上限是100。
        public let disasterRecoverGroupIds: [String]?

        /// 分散置放群组名称，支持模糊匹配。
        public let name: String?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        public init(disasterRecoverGroupIds: [String]? = nil, name: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.disasterRecoverGroupIds = disasterRecoverGroupIds
            self.name = name
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case disasterRecoverGroupIds = "DisasterRecoverGroupIds"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeDisasterRecoverGroups返回参数结构体
    public struct DescribeDisasterRecoverGroupsResponse: TCResponseModel {
        /// 分散置放群组信息列表。
        public let disasterRecoverGroupSet: [DisasterRecoverGroup]

        /// 用户置放群组总量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case disasterRecoverGroupSet = "DisasterRecoverGroupSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询分散置放群组信息
    ///
    /// 本接口 (DescribeDisasterRecoverGroups)用于查询[分散置放群组](https://cloud.tencent.com/document/product/213/15486)信息。
    @inlinable
    public func describeDisasterRecoverGroups(_ input: DescribeDisasterRecoverGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDisasterRecoverGroupsResponse> {
        self.client.execute(action: "DescribeDisasterRecoverGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询分散置放群组信息
    ///
    /// 本接口 (DescribeDisasterRecoverGroups)用于查询[分散置放群组](https://cloud.tencent.com/document/product/213/15486)信息。
    @inlinable
    public func describeDisasterRecoverGroups(_ input: DescribeDisasterRecoverGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDisasterRecoverGroupsResponse {
        try await self.client.execute(action: "DescribeDisasterRecoverGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询分散置放群组信息
    ///
    /// 本接口 (DescribeDisasterRecoverGroups)用于查询[分散置放群组](https://cloud.tencent.com/document/product/213/15486)信息。
    @inlinable
    public func describeDisasterRecoverGroups(disasterRecoverGroupIds: [String]? = nil, name: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDisasterRecoverGroupsResponse> {
        let input = DescribeDisasterRecoverGroupsRequest(disasterRecoverGroupIds: disasterRecoverGroupIds, name: name, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeDisasterRecoverGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询分散置放群组信息
    ///
    /// 本接口 (DescribeDisasterRecoverGroups)用于查询[分散置放群组](https://cloud.tencent.com/document/product/213/15486)信息。
    @inlinable
    public func describeDisasterRecoverGroups(disasterRecoverGroupIds: [String]? = nil, name: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDisasterRecoverGroupsResponse {
        let input = DescribeDisasterRecoverGroupsRequest(disasterRecoverGroupIds: disasterRecoverGroupIds, name: name, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeDisasterRecoverGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}

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

extension Cfs {
    /// DescribeCfsPGroups请求参数结构体
    public struct DescribeCfsPGroupsRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeCfsPGroups返回参数结构体
    public struct DescribeCfsPGroupsResponse: TCResponseModel {
        /// 权限组信息列表
        public let pGroupList: [PGroupInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pGroupList = "PGroupList"
            case requestId = "RequestId"
        }
    }

    /// 查询权限组列表
    ///
    /// 本接口（DescribeCfsPGroups）用于查询权限组列表。
    @inlinable
    public func describeCfsPGroups(_ input: DescribeCfsPGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCfsPGroupsResponse> {
        self.client.execute(action: "DescribeCfsPGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询权限组列表
    ///
    /// 本接口（DescribeCfsPGroups）用于查询权限组列表。
    @inlinable
    public func describeCfsPGroups(_ input: DescribeCfsPGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCfsPGroupsResponse {
        try await self.client.execute(action: "DescribeCfsPGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询权限组列表
    ///
    /// 本接口（DescribeCfsPGroups）用于查询权限组列表。
    @inlinable
    public func describeCfsPGroups(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCfsPGroupsResponse> {
        self.describeCfsPGroups(DescribeCfsPGroupsRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询权限组列表
    ///
    /// 本接口（DescribeCfsPGroups）用于查询权限组列表。
    @inlinable
    public func describeCfsPGroups(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCfsPGroupsResponse {
        try await self.describeCfsPGroups(DescribeCfsPGroupsRequest(), region: region, logger: logger, on: eventLoop)
    }
}

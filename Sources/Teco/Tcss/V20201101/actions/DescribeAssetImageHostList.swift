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

extension Tcss {
    /// DescribeAssetImageHostList请求参数结构体
    public struct DescribeAssetImageHostListRequest: TCRequestModel {
        /// 过滤条件 支持ImageID,HostID
        public let filters: [AssetFilters]?

        public init(filters: [AssetFilters]? = nil) {
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
        }
    }

    /// DescribeAssetImageHostList返回参数结构体
    public struct DescribeAssetImageHostListResponse: TCResponseModel {
        /// 镜像列表
        public let list: [ImageHost]

        /// 总数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询镜像关联主机
    ///
    /// 容器安全查询镜像关联主机
    @inlinable
    public func describeAssetImageHostList(_ input: DescribeAssetImageHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageHostListResponse> {
        self.client.execute(action: "DescribeAssetImageHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询镜像关联主机
    ///
    /// 容器安全查询镜像关联主机
    @inlinable
    public func describeAssetImageHostList(_ input: DescribeAssetImageHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageHostListResponse {
        try await self.client.execute(action: "DescribeAssetImageHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询镜像关联主机
    ///
    /// 容器安全查询镜像关联主机
    @inlinable
    public func describeAssetImageHostList(filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageHostListResponse> {
        self.describeAssetImageHostList(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询镜像关联主机
    ///
    /// 容器安全查询镜像关联主机
    @inlinable
    public func describeAssetImageHostList(filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageHostListResponse {
        try await self.describeAssetImageHostList(.init(filters: filters), region: region, logger: logger, on: eventLoop)
    }
}

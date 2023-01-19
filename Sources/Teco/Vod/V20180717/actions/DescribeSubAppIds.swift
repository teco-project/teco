//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Vod {
    /// DescribeSubAppIds请求参数结构体
    public struct DescribeSubAppIdsRequest: TCRequestModel {
        /// 子应用名称。
        public let name: String?

        /// 标签信息，查询指定标签的子应用列表。
        public let tags: [ResourceTag]?

        /// 分页拉取的起始偏移量。默认值：0。
        public let offset: UInt64?

        /// 分页拉取的最大返回结果数。默认值：200；最大值：200。
        public let limit: UInt64?

        public init(name: String? = nil, tags: [ResourceTag]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.name = name
            self.tags = tags
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case tags = "Tags"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeSubAppIds返回参数结构体
    public struct DescribeSubAppIdsResponse: TCResponseModel {
        /// 子应用信息集合。
        public let subAppIdInfoSet: [SubAppIdInfo]

        /// 子应用总数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subAppIdInfoSet = "SubAppIdInfoSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询子应用列表
    ///
    /// 该接口用于获取当前账号的子应用列表，包含主应用。
    @inlinable
    public func describeSubAppIds(_ input: DescribeSubAppIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubAppIdsResponse> {
        self.client.execute(action: "DescribeSubAppIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询子应用列表
    ///
    /// 该接口用于获取当前账号的子应用列表，包含主应用。
    @inlinable
    public func describeSubAppIds(_ input: DescribeSubAppIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubAppIdsResponse {
        try await self.client.execute(action: "DescribeSubAppIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询子应用列表
    ///
    /// 该接口用于获取当前账号的子应用列表，包含主应用。
    @inlinable
    public func describeSubAppIds(name: String? = nil, tags: [ResourceTag]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubAppIdsResponse> {
        self.describeSubAppIds(DescribeSubAppIdsRequest(name: name, tags: tags, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询子应用列表
    ///
    /// 该接口用于获取当前账号的子应用列表，包含主应用。
    @inlinable
    public func describeSubAppIds(name: String? = nil, tags: [ResourceTag]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubAppIdsResponse {
        try await self.describeSubAppIds(DescribeSubAppIdsRequest(name: name, tags: tags, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}

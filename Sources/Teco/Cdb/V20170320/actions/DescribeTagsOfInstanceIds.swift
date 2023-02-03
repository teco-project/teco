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

extension Cdb {
    /// DescribeTagsOfInstanceIds请求参数结构体
    public struct DescribeTagsOfInstanceIdsRequest: TCRequestModel {
        /// 实例列表。
        public let instanceIds: [String]

        /// 分页偏移量。
        public let offset: Int64?

        /// 分页大小。
        public let limit: Int64?

        public init(instanceIds: [String], offset: Int64? = nil, limit: Int64? = nil) {
            self.instanceIds = instanceIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeTagsOfInstanceIds返回参数结构体
    public struct DescribeTagsOfInstanceIdsResponse: TCResponseModel {
        /// 分页偏移量。
        public let offset: Int64

        /// 分页大小。
        public let limit: Int64

        /// 实例标签信息。
        public let rows: [TagsInfoOfInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case rows = "Rows"
            case requestId = "RequestId"
        }
    }

    /// 获取实例绑定的标签
    ///
    /// 本接口(DescribeTagsOfInstanceIds)用于获取云数据库实例的标签信息。
    @inlinable
    public func describeTagsOfInstanceIds(_ input: DescribeTagsOfInstanceIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagsOfInstanceIdsResponse> {
        self.client.execute(action: "DescribeTagsOfInstanceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例绑定的标签
    ///
    /// 本接口(DescribeTagsOfInstanceIds)用于获取云数据库实例的标签信息。
    @inlinable
    public func describeTagsOfInstanceIds(_ input: DescribeTagsOfInstanceIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagsOfInstanceIdsResponse {
        try await self.client.execute(action: "DescribeTagsOfInstanceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例绑定的标签
    ///
    /// 本接口(DescribeTagsOfInstanceIds)用于获取云数据库实例的标签信息。
    @inlinable
    public func describeTagsOfInstanceIds(instanceIds: [String], offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTagsOfInstanceIdsResponse> {
        let input = DescribeTagsOfInstanceIdsRequest(instanceIds: instanceIds, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeTagsOfInstanceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例绑定的标签
    ///
    /// 本接口(DescribeTagsOfInstanceIds)用于获取云数据库实例的标签信息。
    @inlinable
    public func describeTagsOfInstanceIds(instanceIds: [String], offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTagsOfInstanceIdsResponse {
        let input = DescribeTagsOfInstanceIdsRequest(instanceIds: instanceIds, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeTagsOfInstanceIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}

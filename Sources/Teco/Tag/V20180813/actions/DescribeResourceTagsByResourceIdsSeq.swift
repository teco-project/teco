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

extension Tag {
    /// DescribeResourceTagsByResourceIdsSeq请求参数结构体
    public struct DescribeResourceTagsByResourceIdsSeqRequest: TCRequestModel {
        /// 业务类型
        public let serviceType: String

        /// 资源前缀
        public let resourcePrefix: String

        /// 资源唯一标记
        public let resourceIds: [String]

        /// 资源所在地域
        public let resourceRegion: String

        /// 数据偏移量，默认为 0, 必须为Limit参数的整数倍
        public let offset: UInt64?

        /// 每页大小，默认为 15
        public let limit: UInt64?

        public init(serviceType: String, resourcePrefix: String, resourceIds: [String], resourceRegion: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.serviceType = serviceType
            self.resourcePrefix = resourcePrefix
            self.resourceIds = resourceIds
            self.resourceRegion = resourceRegion
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case serviceType = "ServiceType"
            case resourcePrefix = "ResourcePrefix"
            case resourceIds = "ResourceIds"
            case resourceRegion = "ResourceRegion"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeResourceTagsByResourceIdsSeq返回参数结构体
    public struct DescribeResourceTagsByResourceIdsSeqResponse: TCResponseModel {
        /// 结果总数
        public let totalCount: UInt64

        /// 数据位移偏量
        public let offset: UInt64

        /// 每页大小
        public let limit: UInt64

        /// 标签列表
        public let tags: [TagResource]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case offset = "Offset"
            case limit = "Limit"
            case tags = "Tags"
            case requestId = "RequestId"
        }
    }

    /// 按顺序查看资源关联的标签
    @inlinable
    public func describeResourceTagsByResourceIdsSeq(_ input: DescribeResourceTagsByResourceIdsSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTagsByResourceIdsSeqResponse> {
        self.client.execute(action: "DescribeResourceTagsByResourceIdsSeq", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 按顺序查看资源关联的标签
    @inlinable
    public func describeResourceTagsByResourceIdsSeq(_ input: DescribeResourceTagsByResourceIdsSeqRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTagsByResourceIdsSeqResponse {
        try await self.client.execute(action: "DescribeResourceTagsByResourceIdsSeq", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 按顺序查看资源关联的标签
    @inlinable
    public func describeResourceTagsByResourceIdsSeq(serviceType: String, resourcePrefix: String, resourceIds: [String], resourceRegion: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeResourceTagsByResourceIdsSeqResponse> {
        self.describeResourceTagsByResourceIdsSeq(DescribeResourceTagsByResourceIdsSeqRequest(serviceType: serviceType, resourcePrefix: resourcePrefix, resourceIds: resourceIds, resourceRegion: resourceRegion, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 按顺序查看资源关联的标签
    @inlinable
    public func describeResourceTagsByResourceIdsSeq(serviceType: String, resourcePrefix: String, resourceIds: [String], resourceRegion: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceTagsByResourceIdsSeqResponse {
        try await self.describeResourceTagsByResourceIdsSeq(DescribeResourceTagsByResourceIdsSeqRequest(serviceType: serviceType, resourcePrefix: resourcePrefix, resourceIds: resourceIds, resourceRegion: resourceRegion, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}

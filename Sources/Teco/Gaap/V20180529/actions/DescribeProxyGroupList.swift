//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Gaap {
    /// DescribeProxyGroupList请求参数结构体
    public struct DescribeProxyGroupListRequest: TCRequestModel {
        /// 偏移量，默认值为0。
        public let offset: Int64

        /// 返回数量，默认值为20，最大值为100。
        public let limit: Int64

        /// 项目ID。取值范围：
        /// -1，该用户下所有项目
        /// 0，默认项目
        /// 其他值，指定的项目
        public let projectId: Int64

        /// 过滤条件。   
        /// 每次请求的Filter.Values的上限为5。
        /// RealServerRegion - String - 是否必填：否 -（过滤条件）按照源站地域过滤，可参考DescribeDestRegions接口返回结果中的RegionId。
        /// PackageType - String - 是否必填：否 - （过滤条件）通道组类型，Thunder表示标准通道组，Accelerator表示银牌加速通道组。
        public let filters: [Filter]?

        /// 标签列表，当存在该字段时，拉取对应标签下的资源列表。
        /// 最多支持5个标签，当存在两个或两个以上的标签时，满足其中任意一个标签时，该通道组会被拉取出来。
        public let tagSet: [TagPair]?

        public init(offset: Int64, limit: Int64, projectId: Int64, filters: [Filter]? = nil, tagSet: [TagPair]? = nil) {
            self.offset = offset
            self.limit = limit
            self.projectId = projectId
            self.filters = filters
            self.tagSet = tagSet
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case projectId = "ProjectId"
            case filters = "Filters"
            case tagSet = "TagSet"
        }
    }

    /// DescribeProxyGroupList返回参数结构体
    public struct DescribeProxyGroupListResponse: TCResponseModel {
        /// 通道组总数。
        public let totalCount: Int64

        /// 通道组列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let proxyGroupList: [ProxyGroupInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case proxyGroupList = "ProxyGroupList"
            case requestId = "RequestId"
        }
    }

    /// 拉取通道组列表
    ///
    /// 本接口（DescribeProxyGroupList）用于拉取通道组列表及各通道组基本信息。
    @inlinable
    public func describeProxyGroupList(_ input: DescribeProxyGroupListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProxyGroupListResponse > {
        self.client.execute(action: "DescribeProxyGroupList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取通道组列表
    ///
    /// 本接口（DescribeProxyGroupList）用于拉取通道组列表及各通道组基本信息。
    @inlinable
    public func describeProxyGroupList(_ input: DescribeProxyGroupListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxyGroupListResponse {
        try await self.client.execute(action: "DescribeProxyGroupList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取通道组列表
    ///
    /// 本接口（DescribeProxyGroupList）用于拉取通道组列表及各通道组基本信息。
    @inlinable
    public func describeProxyGroupList(offset: Int64, limit: Int64, projectId: Int64, filters: [Filter]? = nil, tagSet: [TagPair]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProxyGroupListResponse > {
        self.describeProxyGroupList(DescribeProxyGroupListRequest(offset: offset, limit: limit, projectId: projectId, filters: filters, tagSet: tagSet), logger: logger, on: eventLoop)
    }

    /// 拉取通道组列表
    ///
    /// 本接口（DescribeProxyGroupList）用于拉取通道组列表及各通道组基本信息。
    @inlinable
    public func describeProxyGroupList(offset: Int64, limit: Int64, projectId: Int64, filters: [Filter]? = nil, tagSet: [TagPair]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProxyGroupListResponse {
        try await self.describeProxyGroupList(DescribeProxyGroupListRequest(offset: offset, limit: limit, projectId: projectId, filters: filters, tagSet: tagSet), logger: logger, on: eventLoop)
    }
}

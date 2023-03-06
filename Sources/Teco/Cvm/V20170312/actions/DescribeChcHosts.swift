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

import TecoPaginationHelpers

extension Cvm {
    /// DescribeChcHosts请求参数结构体
    public struct DescribeChcHostsRequest: TCPaginatedRequest {
        /// CHC物理服务器实例ID。每次请求的实例的上限为100。参数不支持同时指定`ChcIds`和`Filters`。
        public let chcIds: [String]?

        /// <li><strong>zone</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>可用区</strong>】进行过滤。可用区形如：ap-guangzhou-1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：<a href="https://cloud.tencent.com/document/product/213/6091">可用区列表</a></p>
        /// <li><strong>instance-name</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>实例名称</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// <li><strong>instance-state</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>实例状态</strong>】进行过滤。状态类型详见[实例状态表](https://cloud.tencent.com/document/api/213/15753#InstanceStatus)</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// <li><strong>device-type</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>设备类型</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// <li><strong>vpc-id</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>私有网络唯一ID</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// <li><strong>subnet-id</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>私有子网唯一ID</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?

        public init(chcIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.chcIds = chcIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case chcIds = "ChcIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeChcHostsResponse) -> DescribeChcHostsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeChcHostsRequest(chcIds: self.chcIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeChcHosts返回参数结构体
    public struct DescribeChcHostsResponse: TCPaginatedResponse {
        /// 符合条件的实例数量。
        public let totalCount: Int64

        /// 返回的实例列表
        public let chcHostSet: [ChcHost]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case chcHostSet = "ChcHostSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ChcHost] {
            self.chcHostSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询CHC物理服务器
    ///
    /// 本接口 (DescribeChcHosts) 用于查询一个或多个CHC物理服务器详细信息。
    ///
    /// * 可以根据实例`ID`、实例名称或者设备类型等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    @inlinable
    public func describeChcHosts(_ input: DescribeChcHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChcHostsResponse> {
        self.client.execute(action: "DescribeChcHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询CHC物理服务器
    ///
    /// 本接口 (DescribeChcHosts) 用于查询一个或多个CHC物理服务器详细信息。
    ///
    /// * 可以根据实例`ID`、实例名称或者设备类型等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    @inlinable
    public func describeChcHosts(_ input: DescribeChcHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChcHostsResponse {
        try await self.client.execute(action: "DescribeChcHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询CHC物理服务器
    ///
    /// 本接口 (DescribeChcHosts) 用于查询一个或多个CHC物理服务器详细信息。
    ///
    /// * 可以根据实例`ID`、实例名称或者设备类型等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    @inlinable
    public func describeChcHosts(chcIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChcHostsResponse> {
        let input = DescribeChcHostsRequest(chcIds: chcIds, filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeChcHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询CHC物理服务器
    ///
    /// 本接口 (DescribeChcHosts) 用于查询一个或多个CHC物理服务器详细信息。
    ///
    /// * 可以根据实例`ID`、实例名称或者设备类型等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    @inlinable
    public func describeChcHosts(chcIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChcHostsResponse {
        let input = DescribeChcHostsRequest(chcIds: chcIds, filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeChcHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询CHC物理服务器
    ///
    /// 本接口 (DescribeChcHosts) 用于查询一个或多个CHC物理服务器详细信息。
    ///
    /// * 可以根据实例`ID`、实例名称或者设备类型等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    @inlinable
    public func describeChcHostsPaginated(_ input: DescribeChcHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ChcHost])> {
        self.client.paginate(input: input, region: region, command: self.describeChcHosts, logger: logger, on: eventLoop)
    }

    /// 查询CHC物理服务器
    ///
    /// 本接口 (DescribeChcHosts) 用于查询一个或多个CHC物理服务器详细信息。
    ///
    /// * 可以根据实例`ID`、实例名称或者设备类型等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    @inlinable @discardableResult
    public func describeChcHostsPaginated(_ input: DescribeChcHostsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeChcHostsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeChcHosts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询CHC物理服务器
    ///
    /// 本接口 (DescribeChcHosts) 用于查询一个或多个CHC物理服务器详细信息。
    ///
    /// * 可以根据实例`ID`、实例名称或者设备类型等信息来查询实例的详细信息。过滤信息详细请见过滤器`Filter`。
    /// * 如果参数为空，返回当前用户一定数量（`Limit`所指定的数量，默认为20）的实例。
    @inlinable
    public func describeChcHostsPaginator(_ input: DescribeChcHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeChcHostsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeChcHosts, logger: logger, on: eventLoop)
    }
}

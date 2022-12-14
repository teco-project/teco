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

extension Cvm {
    /// DescribeHosts请求参数结构体
    public struct DescribeHostsRequest: TCRequestModel {
        /// <li><strong>zone</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>可用区</strong>】进行过滤。可用区形如：ap-guangzhou-1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：<a href="https://cloud.tencent.com/document/product/213/6091">可用区列表</a></p>
        /// <li><strong>project-id</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>项目ID</strong>】进行过滤，可通过调用[DescribeProject](https://cloud.tencent.com/document/api/378/4400)查询已创建的项目列表或登录[控制台](https://console.cloud.tencent.com/cvm/index)进行查看；也可以调用[AddProject](https://cloud.tencent.com/document/api/378/4398)创建新的项目。项目ID形如：1002189。</p><p style="padding-left: 30px;">类型：Integer</p><p style="padding-left: 30px;">必选：否</p>
        /// <li><strong>host-id</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>[CDH](https://cloud.tencent.com/document/product/416) ID</strong>】进行过滤。[CDH](https://cloud.tencent.com/document/product/416) ID形如：host-xxxxxxxx。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// <li><strong>host-name</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>CDH实例名称</strong>】进行过滤。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// <li><strong>host-state</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>CDH实例状态</strong>】进行过滤。（PENDING：创建中 | LAUNCH_FAILURE：创建失败 | RUNNING：运行中 | EXPIRED：已过期）</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        public init(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
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

    /// DescribeHosts返回参数结构体
    public struct DescribeHostsResponse: TCResponseModel {
        /// 符合查询条件的cdh实例总数
        public let totalCount: UInt64

        /// cdh实例详细信息列表
        public let hostSet: [HostItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case hostSet = "HostSet"
            case requestId = "RequestId"
        }
    }

    /// 查看CDH实例列表
    ///
    /// 本接口 (DescribeHosts) 用于获取一个或多个CDH实例的详细信息。
    @inlinable
    public func describeHosts(_ input: DescribeHostsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeHostsResponse > {
        self.client.execute(action: "DescribeHosts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看CDH实例列表
    ///
    /// 本接口 (DescribeHosts) 用于获取一个或多个CDH实例的详细信息。
    @inlinable
    public func describeHosts(_ input: DescribeHostsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostsResponse {
        try await self.client.execute(action: "DescribeHosts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看CDH实例列表
    ///
    /// 本接口 (DescribeHosts) 用于获取一个或多个CDH实例的详细信息。
    @inlinable
    public func describeHosts(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeHostsResponse > {
        self.describeHosts(DescribeHostsRequest(filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 查看CDH实例列表
    ///
    /// 本接口 (DescribeHosts) 用于获取一个或多个CDH实例的详细信息。
    @inlinable
    public func describeHosts(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostsResponse {
        try await self.describeHosts(DescribeHostsRequest(filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}

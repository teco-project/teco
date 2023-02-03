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
    /// DescribeInstanceTypeConfigs请求参数结构体
    public struct DescribeInstanceTypeConfigsRequest: TCRequestModel {
        /// <li><strong>zone</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>可用区</strong>】进行过滤。可用区形如：ap-guangzhou-1。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p><p style="padding-left: 30px;">可选项：<a href="https://cloud.tencent.com/document/product/213/6091">可用区列表</a></p>
        /// <li><strong>instance-family</strong></li>
        /// <p style="padding-left: 30px;">按照【<strong>实例机型系列</strong>】进行过滤。实例机型系列形如：S1、I1、M1等。</p><p style="padding-left: 30px;">类型：String</p><p style="padding-left: 30px;">必选：否</p>
        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为1。
        public let filters: [Filter]?

        public init(filters: [Filter]? = nil) {
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
        }
    }

    /// DescribeInstanceTypeConfigs返回参数结构体
    public struct DescribeInstanceTypeConfigsResponse: TCResponseModel {
        /// 实例机型配置列表。
        public let instanceTypeConfigSet: [InstanceTypeConfig]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceTypeConfigSet = "InstanceTypeConfigSet"
            case requestId = "RequestId"
        }
    }

    /// 查询实例机型列表
    ///
    /// 本接口 (DescribeInstanceTypeConfigs) 用于查询实例机型配置。
    ///
    /// * 可以根据`zone`、`instance-family`来查询实例机型配置。过滤条件详见过滤器[`Filter`](https://cloud.tencent.com/document/api/213/15753#Filter)。
    /// * 如果参数为空，返回指定地域的所有实例机型配置。
    @inlinable
    public func describeInstanceTypeConfigs(_ input: DescribeInstanceTypeConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceTypeConfigsResponse> {
        self.client.execute(action: "DescribeInstanceTypeConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例机型列表
    ///
    /// 本接口 (DescribeInstanceTypeConfigs) 用于查询实例机型配置。
    ///
    /// * 可以根据`zone`、`instance-family`来查询实例机型配置。过滤条件详见过滤器[`Filter`](https://cloud.tencent.com/document/api/213/15753#Filter)。
    /// * 如果参数为空，返回指定地域的所有实例机型配置。
    @inlinable
    public func describeInstanceTypeConfigs(_ input: DescribeInstanceTypeConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceTypeConfigsResponse {
        try await self.client.execute(action: "DescribeInstanceTypeConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例机型列表
    ///
    /// 本接口 (DescribeInstanceTypeConfigs) 用于查询实例机型配置。
    ///
    /// * 可以根据`zone`、`instance-family`来查询实例机型配置。过滤条件详见过滤器[`Filter`](https://cloud.tencent.com/document/api/213/15753#Filter)。
    /// * 如果参数为空，返回指定地域的所有实例机型配置。
    @inlinable
    public func describeInstanceTypeConfigs(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceTypeConfigsResponse> {
        let input = DescribeInstanceTypeConfigsRequest(filters: filters)
        return self.client.execute(action: "DescribeInstanceTypeConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例机型列表
    ///
    /// 本接口 (DescribeInstanceTypeConfigs) 用于查询实例机型配置。
    ///
    /// * 可以根据`zone`、`instance-family`来查询实例机型配置。过滤条件详见过滤器[`Filter`](https://cloud.tencent.com/document/api/213/15753#Filter)。
    /// * 如果参数为空，返回指定地域的所有实例机型配置。
    @inlinable
    public func describeInstanceTypeConfigs(filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceTypeConfigsResponse {
        let input = DescribeInstanceTypeConfigsRequest(filters: filters)
        return try await self.client.execute(action: "DescribeInstanceTypeConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}

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

extension Vpc {
    /// DescribeServiceTemplates请求参数结构体
    public struct DescribeServiceTemplatesRequest: TCRequestModel {
        /// 过滤条件。
        /// <li>service-template-name - 协议端口模板名称。</li>
        /// <li>service-template-id - 协议端口模板实例ID，例如：ppm-e6dy460g。</li>
        /// <li>service-port- 协议端口。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: String?

        /// 返回数量，默认为20，最大值为100。
        public let limit: String?

        public init(filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil) {
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

    /// DescribeServiceTemplates返回参数结构体
    public struct DescribeServiceTemplatesResponse: TCResponseModel {
        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 协议端口模板对象。
        public let serviceTemplateSet: [ServiceTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case serviceTemplateSet = "ServiceTemplateSet"
            case requestId = "RequestId"
        }
    }

    /// 查询协议端口模板
    ///
    /// 本接口（DescribeServiceTemplates）用于查询协议端口模板
    @inlinable
    public func describeServiceTemplates(_ input: DescribeServiceTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceTemplatesResponse> {
        self.client.execute(action: "DescribeServiceTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询协议端口模板
    ///
    /// 本接口（DescribeServiceTemplates）用于查询协议端口模板
    @inlinable
    public func describeServiceTemplates(_ input: DescribeServiceTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceTemplatesResponse {
        try await self.client.execute(action: "DescribeServiceTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询协议端口模板
    ///
    /// 本接口（DescribeServiceTemplates）用于查询协议端口模板
    @inlinable
    public func describeServiceTemplates(filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceTemplatesResponse> {
        self.describeServiceTemplates(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询协议端口模板
    ///
    /// 本接口（DescribeServiceTemplates）用于查询协议端口模板
    @inlinable
    public func describeServiceTemplates(filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceTemplatesResponse {
        try await self.describeServiceTemplates(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}

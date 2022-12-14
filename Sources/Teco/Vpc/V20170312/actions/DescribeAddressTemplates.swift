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

extension Vpc {
    /// DescribeAddressTemplates请求参数结构体
    public struct DescribeAddressTemplatesRequest: TCRequestModel {
        /// 过滤条件。
        /// <li>address-template-name - IP地址模板名称。</li>
        /// <li>address-template-id - IP地址模板实例ID，例如：ipm-mdunqeb6。</li>
        /// <li>address-ip - IP地址。</li>
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

    /// DescribeAddressTemplates返回参数结构体
    public struct DescribeAddressTemplatesResponse: TCResponseModel {
        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// IP地址模板。
        public let addressTemplateSet: [AddressTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case addressTemplateSet = "AddressTemplateSet"
            case requestId = "RequestId"
        }
    }

    /// 查询IP地址模板
    ///
    /// 本接口（DescribeAddressTemplates）用于查询IP地址模板
    @inlinable
    public func describeAddressTemplates(_ input: DescribeAddressTemplatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAddressTemplatesResponse > {
        self.client.execute(action: "DescribeAddressTemplates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询IP地址模板
    ///
    /// 本接口（DescribeAddressTemplates）用于查询IP地址模板
    @inlinable
    public func describeAddressTemplates(_ input: DescribeAddressTemplatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAddressTemplatesResponse {
        try await self.client.execute(action: "DescribeAddressTemplates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询IP地址模板
    ///
    /// 本接口（DescribeAddressTemplates）用于查询IP地址模板
    @inlinable
    public func describeAddressTemplates(filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAddressTemplatesResponse > {
        self.describeAddressTemplates(DescribeAddressTemplatesRequest(filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 查询IP地址模板
    ///
    /// 本接口（DescribeAddressTemplates）用于查询IP地址模板
    @inlinable
    public func describeAddressTemplates(filters: [Filter]? = nil, offset: String? = nil, limit: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAddressTemplatesResponse {
        try await self.describeAddressTemplates(DescribeAddressTemplatesRequest(filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}

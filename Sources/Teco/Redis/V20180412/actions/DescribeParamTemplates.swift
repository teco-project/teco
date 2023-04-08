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

extension Redis {
    /// DescribeParamTemplates请求参数结构体
    public struct DescribeParamTemplatesRequest: TCRequestModel {
        /// 产品类型数组。产品类型：1 – Redis2.8内存版（集群架构），2 – Redis2.8内存版（标准架构），3 – CKV 3.2内存版(标准架构)，4 – CKV 3.2内存版(集群架构)，5 – Redis2.8内存版（单机），6 – Redis4.0内存版（标准架构），7 – Redis4.0内存版（集群架构），8 – Redis5.0内存版（标准架构），9 – Redis5.0内存版（集群架构）
        public let productTypes: [Int64]?

        /// 模板名称数组。
        public let templateNames: [String]?

        /// 模板ID数组。
        public let templateIds: [String]?

        public init(productTypes: [Int64]? = nil, templateNames: [String]? = nil, templateIds: [String]? = nil) {
            self.productTypes = productTypes
            self.templateNames = templateNames
            self.templateIds = templateIds
        }

        enum CodingKeys: String, CodingKey {
            case productTypes = "ProductTypes"
            case templateNames = "TemplateNames"
            case templateIds = "TemplateIds"
        }
    }

    /// DescribeParamTemplates返回参数结构体
    public struct DescribeParamTemplatesResponse: TCResponseModel {
        /// 该用户的参数模板数量。
        public let totalCount: UInt64

        /// 参数模板详情。
        public let items: [ParamTemplateInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 查询参数模板列表
    @inlinable
    public func describeParamTemplates(_ input: DescribeParamTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplatesResponse> {
        self.client.execute(action: "DescribeParamTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询参数模板列表
    @inlinable
    public func describeParamTemplates(_ input: DescribeParamTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplatesResponse {
        try await self.client.execute(action: "DescribeParamTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询参数模板列表
    @inlinable
    public func describeParamTemplates(productTypes: [Int64]? = nil, templateNames: [String]? = nil, templateIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplatesResponse> {
        self.describeParamTemplates(.init(productTypes: productTypes, templateNames: templateNames, templateIds: templateIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询参数模板列表
    @inlinable
    public func describeParamTemplates(productTypes: [Int64]? = nil, templateNames: [String]? = nil, templateIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplatesResponse {
        try await self.describeParamTemplates(.init(productTypes: productTypes, templateNames: templateNames, templateIds: templateIds), region: region, logger: logger, on: eventLoop)
    }
}

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

import Logging
import NIOCore
import TecoCore

extension Redis {
    /// DescribeParamTemplateInfo请求参数结构体
    public struct DescribeParamTemplateInfoRequest: TCRequest {
        /// 指定查询的参数模板 ID。请通过接口[DescribeParamTemplates](https://cloud.tencent.com/document/product/239/58750)获取参数模板列表信息。
        public let templateId: String

        public init(templateId: String) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DescribeParamTemplateInfo返回参数结构体
    public struct DescribeParamTemplateInfoResponse: TCResponse {
        /// 参数模板的参数数量。
        public let totalCount: Int64

        /// 参数模板 ID。
        public let templateId: String

        /// 参数模板名称。
        public let name: String

        /// 产品类型。
        /// - 2：Redis 2.8内存版（标准架构）。
        /// - 3：CKV 3.2内存版（标准架构）。
        /// - 4：CKV 3.2内存版（集群架构）。
        /// - 5：Redis 2.8内存版（单机）。
        /// - 6：Redis 4.0内存版（标准架构）。
        /// - 7：Redis 4.0内存版（集群架构）。
        /// - 8：Redis 5.0内存版（标准架构）。
        /// - 9：Redis 5.0内存版（集群架构）。
        /// - 15：Redis 6.2内存版（标准架构）。
        /// - 16：Redis 6.2内存版（集群架构）。
        public let productType: UInt64

        /// 参数模板描述。
        public let description: String

        /// 参数详情。包含：参数的名称，当前运行值，默认值，最大值、最小值、枚举值等信息。
        public let items: [ParameterDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case templateId = "TemplateId"
            case name = "Name"
            case productType = "ProductType"
            case description = "Description"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 查询参数模板详情
    ///
    /// 本接口（DescribeParamTemplateInfo）用于查询参数模板详情。
    @inlinable
    public func describeParamTemplateInfo(_ input: DescribeParamTemplateInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplateInfoResponse> {
        self.client.execute(action: "DescribeParamTemplateInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询参数模板详情
    ///
    /// 本接口（DescribeParamTemplateInfo）用于查询参数模板详情。
    @inlinable
    public func describeParamTemplateInfo(_ input: DescribeParamTemplateInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplateInfoResponse {
        try await self.client.execute(action: "DescribeParamTemplateInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询参数模板详情
    ///
    /// 本接口（DescribeParamTemplateInfo）用于查询参数模板详情。
    @inlinable
    public func describeParamTemplateInfo(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplateInfoResponse> {
        self.describeParamTemplateInfo(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询参数模板详情
    ///
    /// 本接口（DescribeParamTemplateInfo）用于查询参数模板详情。
    @inlinable
    public func describeParamTemplateInfo(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplateInfoResponse {
        try await self.describeParamTemplateInfo(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}

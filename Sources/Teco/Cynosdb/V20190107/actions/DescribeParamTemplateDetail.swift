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

extension Cynosdb {
    /// DescribeParamTemplateDetail请求参数结构体
    public struct DescribeParamTemplateDetailRequest: TCRequestModel {
        /// 参数模板ID
        public let templateId: Int64

        public init(templateId: Int64) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DescribeParamTemplateDetail返回参数结构体
    public struct DescribeParamTemplateDetailResponse: TCResponseModel {
        /// 参数模板ID
        public let templateId: Int64

        /// 参数模板名称
        public let templateName: String

        /// 参数模板描述
        public let templateDescription: String

        /// 引擎版本
        public let engineVersion: String

        /// 参数总条数
        public let totalCount: Int64

        /// 参数列表
        public let items: [ParamDetail]

        /// 数据库类型，可选值：NORMAL，SERVERLESS
        public let dbMode: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case templateName = "TemplateName"
            case templateDescription = "TemplateDescription"
            case engineVersion = "EngineVersion"
            case totalCount = "TotalCount"
            case items = "Items"
            case dbMode = "DbMode"
            case requestId = "RequestId"
        }
    }

    /// 查询参数模板详情
    ///
    /// 本接口（DescribeParamTemplateDetail）用于查询用户参数模板详情
    @inlinable
    public func describeParamTemplateDetail(_ input: DescribeParamTemplateDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplateDetailResponse> {
        self.client.execute(action: "DescribeParamTemplateDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询参数模板详情
    ///
    /// 本接口（DescribeParamTemplateDetail）用于查询用户参数模板详情
    @inlinable
    public func describeParamTemplateDetail(_ input: DescribeParamTemplateDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplateDetailResponse {
        try await self.client.execute(action: "DescribeParamTemplateDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询参数模板详情
    ///
    /// 本接口（DescribeParamTemplateDetail）用于查询用户参数模板详情
    @inlinable
    public func describeParamTemplateDetail(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplateDetailResponse> {
        self.describeParamTemplateDetail(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询参数模板详情
    ///
    /// 本接口（DescribeParamTemplateDetail）用于查询用户参数模板详情
    @inlinable
    public func describeParamTemplateDetail(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplateDetailResponse {
        try await self.describeParamTemplateDetail(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
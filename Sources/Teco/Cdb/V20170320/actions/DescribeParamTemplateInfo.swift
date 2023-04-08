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

extension Cdb {
    /// DescribeParamTemplateInfo请求参数结构体
    public struct DescribeParamTemplateInfoRequest: TCRequestModel {
        /// 参数模板 ID。
        public let templateId: Int64

        public init(templateId: Int64) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DescribeParamTemplateInfo返回参数结构体
    public struct DescribeParamTemplateInfoResponse: TCResponseModel {
        /// 参数模板 ID。
        public let templateId: Int64

        /// 参数模板名称。
        public let name: String

        /// 参数模板对应实例版本
        public let engineVersion: String

        /// 参数模板中的参数数量
        public let totalCount: Int64

        /// 参数详情
        public let items: [ParameterDetail]

        /// 参数模板描述
        public let description: String

        /// 参数模板类型。支持值包括："HIGH_STABILITY" - 高稳定模板，"HIGH_PERFORMANCE" - 高性能模板。
        public let templateType: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case name = "Name"
            case engineVersion = "EngineVersion"
            case totalCount = "TotalCount"
            case items = "Items"
            case description = "Description"
            case templateType = "TemplateType"
            case requestId = "RequestId"
        }
    }

    /// 查询参数模板详情
    ///
    /// 该接口（DescribeParamTemplateInfo）用于查询参数模板详情，全地域公共参数Region均为ap-guangzhou。
    @inlinable
    public func describeParamTemplateInfo(_ input: DescribeParamTemplateInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplateInfoResponse> {
        self.client.execute(action: "DescribeParamTemplateInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询参数模板详情
    ///
    /// 该接口（DescribeParamTemplateInfo）用于查询参数模板详情，全地域公共参数Region均为ap-guangzhou。
    @inlinable
    public func describeParamTemplateInfo(_ input: DescribeParamTemplateInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplateInfoResponse {
        try await self.client.execute(action: "DescribeParamTemplateInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询参数模板详情
    ///
    /// 该接口（DescribeParamTemplateInfo）用于查询参数模板详情，全地域公共参数Region均为ap-guangzhou。
    @inlinable
    public func describeParamTemplateInfo(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplateInfoResponse> {
        self.describeParamTemplateInfo(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询参数模板详情
    ///
    /// 该接口（DescribeParamTemplateInfo）用于查询参数模板详情，全地域公共参数Region均为ap-guangzhou。
    @inlinable
    public func describeParamTemplateInfo(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplateInfoResponse {
        try await self.describeParamTemplateInfo(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}

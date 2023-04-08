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
    public struct DescribeParamTemplateInfoRequest: TCRequestModel {
        /// 参数模板 ID。
        public let templateId: String

        public init(templateId: String) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DescribeParamTemplateInfo返回参数结构体
    public struct DescribeParamTemplateInfoResponse: TCResponseModel {
        /// 实例参数个数
        public let totalCount: Int64

        /// 参数模板 ID。
        public let templateId: String

        /// 参数模板名称。
        public let name: String

        /// 产品类型：1 – Redis2.8内存版（集群架构），2 – Redis2.8内存版（标准架构），3 – CKV 3.2内存版(标准架构)，4 – CKV 3.2内存版(集群架构)，5 – Redis2.8内存版（单机），6 – Redis4.0内存版（标准架构），7 – Redis4.0内存版（集群架构），8 – Redis5.0内存版（标准架构），9 – Redis5.0内存版（集群架构）
        public let productType: UInt64

        /// 参数模板描述
        public let description: String

        /// 参数详情
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
    /// 查询参数模板详情。
    @inlinable
    public func describeParamTemplateInfo(_ input: DescribeParamTemplateInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplateInfoResponse> {
        self.client.execute(action: "DescribeParamTemplateInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询参数模板详情
    ///
    /// 查询参数模板详情。
    @inlinable
    public func describeParamTemplateInfo(_ input: DescribeParamTemplateInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplateInfoResponse {
        try await self.client.execute(action: "DescribeParamTemplateInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询参数模板详情
    ///
    /// 查询参数模板详情。
    @inlinable
    public func describeParamTemplateInfo(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeParamTemplateInfoResponse> {
        self.describeParamTemplateInfo(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询参数模板详情
    ///
    /// 查询参数模板详情。
    @inlinable
    public func describeParamTemplateInfo(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeParamTemplateInfoResponse {
        try await self.describeParamTemplateInfo(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}

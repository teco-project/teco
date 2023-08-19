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
    /// CreateParamTemplate请求参数结构体
    public struct CreateParamTemplateRequest: TCRequest {
        /// 参数模板名称。
        public let name: String

        /// 参数模板描述。
        public let description: String?

        /// 产品类型：1 – Redis2.8内存版（集群架构），2 – Redis2.8内存版（标准架构），3 – CKV 3.2内存版(标准架构)，4 – CKV 3.2内存版(集群架构)，5 – Redis2.8内存版（单机），6 – Redis4.0内存版（标准架构），7 – Redis4.0内存版（集群架构），8 – Redis5.0内存版（标准架构），9 – Redis5.0内存版（集群架构）。创建模板时必填，从源模板复制则不需要传入该参数。
        public let productType: UInt64?

        /// 源参数模板 ID。
        public let templateId: String?

        /// 参数列表。
        public let paramList: [InstanceParam]?

        public init(name: String, description: String? = nil, productType: UInt64? = nil, templateId: String? = nil, paramList: [InstanceParam]? = nil) {
            self.name = name
            self.description = description
            self.productType = productType
            self.templateId = templateId
            self.paramList = paramList
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case description = "Description"
            case productType = "ProductType"
            case templateId = "TemplateId"
            case paramList = "ParamList"
        }
    }

    /// CreateParamTemplate返回参数结构体
    public struct CreateParamTemplateResponse: TCResponse {
        /// 参数模板 ID。
        public let templateId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case requestId = "RequestId"
        }
    }

    /// 创建参数模板
    ///
    /// 创建参数模板。
    @inlinable
    public func createParamTemplate(_ input: CreateParamTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateParamTemplateResponse> {
        self.client.execute(action: "CreateParamTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建参数模板
    ///
    /// 创建参数模板。
    @inlinable
    public func createParamTemplate(_ input: CreateParamTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateParamTemplateResponse {
        try await self.client.execute(action: "CreateParamTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建参数模板
    ///
    /// 创建参数模板。
    @inlinable
    public func createParamTemplate(name: String, description: String? = nil, productType: UInt64? = nil, templateId: String? = nil, paramList: [InstanceParam]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateParamTemplateResponse> {
        self.createParamTemplate(.init(name: name, description: description, productType: productType, templateId: templateId, paramList: paramList), region: region, logger: logger, on: eventLoop)
    }

    /// 创建参数模板
    ///
    /// 创建参数模板。
    @inlinable
    public func createParamTemplate(name: String, description: String? = nil, productType: UInt64? = nil, templateId: String? = nil, paramList: [InstanceParam]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateParamTemplateResponse {
        try await self.createParamTemplate(.init(name: name, description: description, productType: productType, templateId: templateId, paramList: paramList), region: region, logger: logger, on: eventLoop)
    }
}

//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// ModifyServiceTemplateAttribute请求参数结构体
    public struct ModifyServiceTemplateAttributeRequest: TCRequestModel {
        /// 协议端口模板实例ID，例如：ppm-529nwwj8。
        public let serviceTemplateId: String

        /// 协议端口模板名称。
        public let serviceTemplateName: String?

        /// 支持单个端口、多个端口、连续端口及所有端口，协议支持：TCP、UDP、ICMP、GRE 协议。
        public let services: [String]?

        /// 支持添加备注的协议端口信息，支持单个端口、多个端口、连续端口及所有端口，协议支持：TCP、UDP、ICMP、GRE 协议。
        public let servicesExtra: [ServicesInfo]?

        public init(serviceTemplateId: String, serviceTemplateName: String? = nil, services: [String]? = nil, servicesExtra: [ServicesInfo]? = nil) {
            self.serviceTemplateId = serviceTemplateId
            self.serviceTemplateName = serviceTemplateName
            self.services = services
            self.servicesExtra = servicesExtra
        }

        enum CodingKeys: String, CodingKey {
            case serviceTemplateId = "ServiceTemplateId"
            case serviceTemplateName = "ServiceTemplateName"
            case services = "Services"
            case servicesExtra = "ServicesExtra"
        }
    }

    /// ModifyServiceTemplateAttribute返回参数结构体
    public struct ModifyServiceTemplateAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改协议端口模板
    ///
    /// 本接口（ModifyServiceTemplateAttribute）用于修改协议端口模板
    @inlinable
    public func modifyServiceTemplateAttribute(_ input: ModifyServiceTemplateAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceTemplateAttributeResponse> {
        self.client.execute(action: "ModifyServiceTemplateAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改协议端口模板
    ///
    /// 本接口（ModifyServiceTemplateAttribute）用于修改协议端口模板
    @inlinable
    public func modifyServiceTemplateAttribute(_ input: ModifyServiceTemplateAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceTemplateAttributeResponse {
        try await self.client.execute(action: "ModifyServiceTemplateAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改协议端口模板
    ///
    /// 本接口（ModifyServiceTemplateAttribute）用于修改协议端口模板
    @inlinable
    public func modifyServiceTemplateAttribute(serviceTemplateId: String, serviceTemplateName: String? = nil, services: [String]? = nil, servicesExtra: [ServicesInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceTemplateAttributeResponse> {
        self.modifyServiceTemplateAttribute(ModifyServiceTemplateAttributeRequest(serviceTemplateId: serviceTemplateId, serviceTemplateName: serviceTemplateName, services: services, servicesExtra: servicesExtra), region: region, logger: logger, on: eventLoop)
    }

    /// 修改协议端口模板
    ///
    /// 本接口（ModifyServiceTemplateAttribute）用于修改协议端口模板
    @inlinable
    public func modifyServiceTemplateAttribute(serviceTemplateId: String, serviceTemplateName: String? = nil, services: [String]? = nil, servicesExtra: [ServicesInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceTemplateAttributeResponse {
        try await self.modifyServiceTemplateAttribute(ModifyServiceTemplateAttributeRequest(serviceTemplateId: serviceTemplateId, serviceTemplateName: serviceTemplateName, services: services, servicesExtra: servicesExtra), region: region, logger: logger, on: eventLoop)
    }
}

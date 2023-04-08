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
    /// CreateServiceTemplateGroup请求参数结构体
    public struct CreateServiceTemplateGroupRequest: TCRequestModel {
        /// 协议端口模板集合名称
        public let serviceTemplateGroupName: String

        /// 协议端口模板实例ID，例如：ppm-4dw6agho。
        public let serviceTemplateIds: [String]

        public init(serviceTemplateGroupName: String, serviceTemplateIds: [String]) {
            self.serviceTemplateGroupName = serviceTemplateGroupName
            self.serviceTemplateIds = serviceTemplateIds
        }

        enum CodingKeys: String, CodingKey {
            case serviceTemplateGroupName = "ServiceTemplateGroupName"
            case serviceTemplateIds = "ServiceTemplateIds"
        }
    }

    /// CreateServiceTemplateGroup返回参数结构体
    public struct CreateServiceTemplateGroupResponse: TCResponseModel {
        /// 协议端口模板集合对象。
        public let serviceTemplateGroup: ServiceTemplateGroup

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serviceTemplateGroup = "ServiceTemplateGroup"
            case requestId = "RequestId"
        }
    }

    /// 创建协议端口模板集合
    ///
    /// 本接口（CreateServiceTemplateGroup）用于创建协议端口模板集合
    @inlinable
    public func createServiceTemplateGroup(_ input: CreateServiceTemplateGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServiceTemplateGroupResponse> {
        self.client.execute(action: "CreateServiceTemplateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建协议端口模板集合
    ///
    /// 本接口（CreateServiceTemplateGroup）用于创建协议端口模板集合
    @inlinable
    public func createServiceTemplateGroup(_ input: CreateServiceTemplateGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServiceTemplateGroupResponse {
        try await self.client.execute(action: "CreateServiceTemplateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建协议端口模板集合
    ///
    /// 本接口（CreateServiceTemplateGroup）用于创建协议端口模板集合
    @inlinable
    public func createServiceTemplateGroup(serviceTemplateGroupName: String, serviceTemplateIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServiceTemplateGroupResponse> {
        self.createServiceTemplateGroup(.init(serviceTemplateGroupName: serviceTemplateGroupName, serviceTemplateIds: serviceTemplateIds), region: region, logger: logger, on: eventLoop)
    }

    /// 创建协议端口模板集合
    ///
    /// 本接口（CreateServiceTemplateGroup）用于创建协议端口模板集合
    @inlinable
    public func createServiceTemplateGroup(serviceTemplateGroupName: String, serviceTemplateIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServiceTemplateGroupResponse {
        try await self.createServiceTemplateGroup(.init(serviceTemplateGroupName: serviceTemplateGroupName, serviceTemplateIds: serviceTemplateIds), region: region, logger: logger, on: eventLoop)
    }
}

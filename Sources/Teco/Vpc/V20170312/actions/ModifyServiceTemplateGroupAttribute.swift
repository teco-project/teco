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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Vpc {
    /// ModifyServiceTemplateGroupAttribute请求参数结构体
    public struct ModifyServiceTemplateGroupAttributeRequest: TCRequestModel {
        /// 协议端口模板集合实例ID，例如：ppmg-ei8hfd9a。
        public let serviceTemplateGroupId: String

        /// 协议端口模板集合名称。
        public let serviceTemplateGroupName: String?

        /// 协议端口模板实例ID，例如：ppm-4dw6agho。
        public let serviceTemplateIds: [String]?

        public init(serviceTemplateGroupId: String, serviceTemplateGroupName: String? = nil, serviceTemplateIds: [String]? = nil) {
            self.serviceTemplateGroupId = serviceTemplateGroupId
            self.serviceTemplateGroupName = serviceTemplateGroupName
            self.serviceTemplateIds = serviceTemplateIds
        }

        enum CodingKeys: String, CodingKey {
            case serviceTemplateGroupId = "ServiceTemplateGroupId"
            case serviceTemplateGroupName = "ServiceTemplateGroupName"
            case serviceTemplateIds = "ServiceTemplateIds"
        }
    }

    /// ModifyServiceTemplateGroupAttribute返回参数结构体
    public struct ModifyServiceTemplateGroupAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改协议端口模板集合
    ///
    /// 本接口（ModifyServiceTemplateGroupAttribute）用于修改协议端口模板集合。
    @inlinable @discardableResult
    public func modifyServiceTemplateGroupAttribute(_ input: ModifyServiceTemplateGroupAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceTemplateGroupAttributeResponse> {
        self.client.execute(action: "ModifyServiceTemplateGroupAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改协议端口模板集合
    ///
    /// 本接口（ModifyServiceTemplateGroupAttribute）用于修改协议端口模板集合。
    @inlinable @discardableResult
    public func modifyServiceTemplateGroupAttribute(_ input: ModifyServiceTemplateGroupAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceTemplateGroupAttributeResponse {
        try await self.client.execute(action: "ModifyServiceTemplateGroupAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改协议端口模板集合
    ///
    /// 本接口（ModifyServiceTemplateGroupAttribute）用于修改协议端口模板集合。
    @inlinable @discardableResult
    public func modifyServiceTemplateGroupAttribute(serviceTemplateGroupId: String, serviceTemplateGroupName: String? = nil, serviceTemplateIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyServiceTemplateGroupAttributeResponse> {
        self.modifyServiceTemplateGroupAttribute(.init(serviceTemplateGroupId: serviceTemplateGroupId, serviceTemplateGroupName: serviceTemplateGroupName, serviceTemplateIds: serviceTemplateIds), region: region, logger: logger, on: eventLoop)
    }

    /// 修改协议端口模板集合
    ///
    /// 本接口（ModifyServiceTemplateGroupAttribute）用于修改协议端口模板集合。
    @inlinable @discardableResult
    public func modifyServiceTemplateGroupAttribute(serviceTemplateGroupId: String, serviceTemplateGroupName: String? = nil, serviceTemplateIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyServiceTemplateGroupAttributeResponse {
        try await self.modifyServiceTemplateGroupAttribute(.init(serviceTemplateGroupId: serviceTemplateGroupId, serviceTemplateGroupName: serviceTemplateGroupName, serviceTemplateIds: serviceTemplateIds), region: region, logger: logger, on: eventLoop)
    }
}

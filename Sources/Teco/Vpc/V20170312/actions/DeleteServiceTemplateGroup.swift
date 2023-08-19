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

extension Vpc {
    /// DeleteServiceTemplateGroup请求参数结构体
    public struct DeleteServiceTemplateGroupRequest: TCRequest {
        /// 协议端口模板集合实例ID，例如：ppmg-n17uxvve。
        public let serviceTemplateGroupId: String

        public init(serviceTemplateGroupId: String) {
            self.serviceTemplateGroupId = serviceTemplateGroupId
        }

        enum CodingKeys: String, CodingKey {
            case serviceTemplateGroupId = "ServiceTemplateGroupId"
        }
    }

    /// DeleteServiceTemplateGroup返回参数结构体
    public struct DeleteServiceTemplateGroupResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除协议端口模板集合
    ///
    /// 本接口（DeleteServiceTemplateGroup）用于删除协议端口模板集合。
    @inlinable @discardableResult
    public func deleteServiceTemplateGroup(_ input: DeleteServiceTemplateGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteServiceTemplateGroupResponse> {
        self.client.execute(action: "DeleteServiceTemplateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除协议端口模板集合
    ///
    /// 本接口（DeleteServiceTemplateGroup）用于删除协议端口模板集合。
    @inlinable @discardableResult
    public func deleteServiceTemplateGroup(_ input: DeleteServiceTemplateGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServiceTemplateGroupResponse {
        try await self.client.execute(action: "DeleteServiceTemplateGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除协议端口模板集合
    ///
    /// 本接口（DeleteServiceTemplateGroup）用于删除协议端口模板集合。
    @inlinable @discardableResult
    public func deleteServiceTemplateGroup(serviceTemplateGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteServiceTemplateGroupResponse> {
        self.deleteServiceTemplateGroup(.init(serviceTemplateGroupId: serviceTemplateGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除协议端口模板集合
    ///
    /// 本接口（DeleteServiceTemplateGroup）用于删除协议端口模板集合。
    @inlinable @discardableResult
    public func deleteServiceTemplateGroup(serviceTemplateGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServiceTemplateGroupResponse {
        try await self.deleteServiceTemplateGroup(.init(serviceTemplateGroupId: serviceTemplateGroupId), region: region, logger: logger, on: eventLoop)
    }
}

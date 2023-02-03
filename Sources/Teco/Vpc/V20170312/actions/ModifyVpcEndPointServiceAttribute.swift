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
    /// ModifyVpcEndPointServiceAttribute请求参数结构体
    public struct ModifyVpcEndPointServiceAttributeRequest: TCRequestModel {
        /// 终端节点服务ID。
        public let endPointServiceId: String

        /// VPCID。
        public let vpcId: String

        /// 终端节点服务名称。
        public let endPointServiceName: String?

        /// 是否自动接受终端节点的连接请求。<ui><li>true：自动接受<li>false：不自动接受</ul>
        public let autoAcceptFlag: Bool?

        /// 后端服务的ID，比如lb-xxx。
        public let serviceInstanceId: String?

        public init(endPointServiceId: String, vpcId: String, endPointServiceName: String? = nil, autoAcceptFlag: Bool? = nil, serviceInstanceId: String? = nil) {
            self.endPointServiceId = endPointServiceId
            self.vpcId = vpcId
            self.endPointServiceName = endPointServiceName
            self.autoAcceptFlag = autoAcceptFlag
            self.serviceInstanceId = serviceInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case endPointServiceId = "EndPointServiceId"
            case vpcId = "VpcId"
            case endPointServiceName = "EndPointServiceName"
            case autoAcceptFlag = "AutoAcceptFlag"
            case serviceInstanceId = "ServiceInstanceId"
        }
    }

    /// ModifyVpcEndPointServiceAttribute返回参数结构体
    public struct ModifyVpcEndPointServiceAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改终端节点服务属性
    ///
    /// 本接口（ModifyVpcEndPointServiceAttribute）用于修改终端节点服务属性。
    @inlinable @discardableResult
    public func modifyVpcEndPointServiceAttribute(_ input: ModifyVpcEndPointServiceAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpcEndPointServiceAttributeResponse> {
        self.client.execute(action: "ModifyVpcEndPointServiceAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改终端节点服务属性
    ///
    /// 本接口（ModifyVpcEndPointServiceAttribute）用于修改终端节点服务属性。
    @inlinable @discardableResult
    public func modifyVpcEndPointServiceAttribute(_ input: ModifyVpcEndPointServiceAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpcEndPointServiceAttributeResponse {
        try await self.client.execute(action: "ModifyVpcEndPointServiceAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改终端节点服务属性
    ///
    /// 本接口（ModifyVpcEndPointServiceAttribute）用于修改终端节点服务属性。
    @inlinable @discardableResult
    public func modifyVpcEndPointServiceAttribute(endPointServiceId: String, vpcId: String, endPointServiceName: String? = nil, autoAcceptFlag: Bool? = nil, serviceInstanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpcEndPointServiceAttributeResponse> {
        let input = ModifyVpcEndPointServiceAttributeRequest(endPointServiceId: endPointServiceId, vpcId: vpcId, endPointServiceName: endPointServiceName, autoAcceptFlag: autoAcceptFlag, serviceInstanceId: serviceInstanceId)
        return self.client.execute(action: "ModifyVpcEndPointServiceAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改终端节点服务属性
    ///
    /// 本接口（ModifyVpcEndPointServiceAttribute）用于修改终端节点服务属性。
    @inlinable @discardableResult
    public func modifyVpcEndPointServiceAttribute(endPointServiceId: String, vpcId: String, endPointServiceName: String? = nil, autoAcceptFlag: Bool? = nil, serviceInstanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpcEndPointServiceAttributeResponse {
        let input = ModifyVpcEndPointServiceAttributeRequest(endPointServiceId: endPointServiceId, vpcId: vpcId, endPointServiceName: endPointServiceName, autoAcceptFlag: autoAcceptFlag, serviceInstanceId: serviceInstanceId)
        return try await self.client.execute(action: "ModifyVpcEndPointServiceAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}

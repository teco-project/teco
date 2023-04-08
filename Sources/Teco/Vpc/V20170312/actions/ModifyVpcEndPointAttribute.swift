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
    /// ModifyVpcEndPointAttribute请求参数结构体
    public struct ModifyVpcEndPointAttributeRequest: TCRequestModel {
        /// 终端节点ID。
        public let endPointId: String

        /// 终端节点名称。
        public let endPointName: String?

        /// 安全组ID列表。
        public let securityGroupIds: [String]?

        public init(endPointId: String, endPointName: String? = nil, securityGroupIds: [String]? = nil) {
            self.endPointId = endPointId
            self.endPointName = endPointName
            self.securityGroupIds = securityGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case endPointId = "EndPointId"
            case endPointName = "EndPointName"
            case securityGroupIds = "SecurityGroupIds"
        }
    }

    /// ModifyVpcEndPointAttribute返回参数结构体
    public struct ModifyVpcEndPointAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改终端节点属性
    ///
    /// 修改终端节点属性。
    @inlinable @discardableResult
    public func modifyVpcEndPointAttribute(_ input: ModifyVpcEndPointAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpcEndPointAttributeResponse> {
        self.client.execute(action: "ModifyVpcEndPointAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改终端节点属性
    ///
    /// 修改终端节点属性。
    @inlinable @discardableResult
    public func modifyVpcEndPointAttribute(_ input: ModifyVpcEndPointAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpcEndPointAttributeResponse {
        try await self.client.execute(action: "ModifyVpcEndPointAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改终端节点属性
    ///
    /// 修改终端节点属性。
    @inlinable @discardableResult
    public func modifyVpcEndPointAttribute(endPointId: String, endPointName: String? = nil, securityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVpcEndPointAttributeResponse> {
        self.modifyVpcEndPointAttribute(.init(endPointId: endPointId, endPointName: endPointName, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 修改终端节点属性
    ///
    /// 修改终端节点属性。
    @inlinable @discardableResult
    public func modifyVpcEndPointAttribute(endPointId: String, endPointName: String? = nil, securityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVpcEndPointAttributeResponse {
        try await self.modifyVpcEndPointAttribute(.init(endPointId: endPointId, endPointName: endPointName, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }
}

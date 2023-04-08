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

extension Tdmq {
    /// ModifyRole请求参数结构体
    public struct ModifyRoleRequest: TCRequestModel {
        /// 角色名称，不支持中字以及除了短线和下划线外的特殊字符且长度必须大于0且小等于32。
        public let roleName: String

        /// 备注说明，长度必须大等于0且小等于128。
        public let remark: String?

        /// 必填字段，集群Id
        public let clusterId: String?

        public init(roleName: String, remark: String? = nil, clusterId: String? = nil) {
            self.roleName = roleName
            self.remark = remark
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case roleName = "RoleName"
            case remark = "Remark"
            case clusterId = "ClusterId"
        }
    }

    /// ModifyRole返回参数结构体
    public struct ModifyRoleResponse: TCResponseModel {
        /// 角色名称
        public let roleName: String

        /// 备注说明
        public let remark: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case roleName = "RoleName"
            case remark = "Remark"
            case requestId = "RequestId"
        }
    }

    /// 角色修改
    @inlinable
    public func modifyRole(_ input: ModifyRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRoleResponse> {
        self.client.execute(action: "ModifyRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 角色修改
    @inlinable
    public func modifyRole(_ input: ModifyRoleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRoleResponse {
        try await self.client.execute(action: "ModifyRole", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 角色修改
    @inlinable
    public func modifyRole(roleName: String, remark: String? = nil, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRoleResponse> {
        self.modifyRole(.init(roleName: roleName, remark: remark, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 角色修改
    @inlinable
    public func modifyRole(roleName: String, remark: String? = nil, clusterId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRoleResponse {
        try await self.modifyRole(.init(roleName: roleName, remark: remark, clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}

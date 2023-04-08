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

extension Antiddos {
    /// ModifyPortAclConfig请求参数结构体
    public struct ModifyPortAclConfigRequest: TCRequestModel {
        /// 资源实例ID
        public let instanceId: String

        /// 旧端口acl策略
        public let oldAclConfig: AclConfig

        /// 新端口acl策略
        public let newAclConfig: AclConfig

        public init(instanceId: String, oldAclConfig: AclConfig, newAclConfig: AclConfig) {
            self.instanceId = instanceId
            self.oldAclConfig = oldAclConfig
            self.newAclConfig = newAclConfig
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case oldAclConfig = "OldAclConfig"
            case newAclConfig = "NewAclConfig"
        }
    }

    /// ModifyPortAclConfig返回参数结构体
    public struct ModifyPortAclConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改DDoS防护的端口acl策略
    @inlinable @discardableResult
    public func modifyPortAclConfig(_ input: ModifyPortAclConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPortAclConfigResponse> {
        self.client.execute(action: "ModifyPortAclConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改DDoS防护的端口acl策略
    @inlinable @discardableResult
    public func modifyPortAclConfig(_ input: ModifyPortAclConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPortAclConfigResponse {
        try await self.client.execute(action: "ModifyPortAclConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改DDoS防护的端口acl策略
    @inlinable @discardableResult
    public func modifyPortAclConfig(instanceId: String, oldAclConfig: AclConfig, newAclConfig: AclConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPortAclConfigResponse> {
        self.modifyPortAclConfig(.init(instanceId: instanceId, oldAclConfig: oldAclConfig, newAclConfig: newAclConfig), region: region, logger: logger, on: eventLoop)
    }

    /// 修改DDoS防护的端口acl策略
    @inlinable @discardableResult
    public func modifyPortAclConfig(instanceId: String, oldAclConfig: AclConfig, newAclConfig: AclConfig, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPortAclConfigResponse {
        try await self.modifyPortAclConfig(.init(instanceId: instanceId, oldAclConfig: oldAclConfig, newAclConfig: newAclConfig), region: region, logger: logger, on: eventLoop)
    }
}

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

extension Yunjing {
    /// EditPrivilegeRule请求参数结构体
    public struct EditPrivilegeRuleRequest: TCRequest {
        /// 规则ID(新增时请留空)
        public let id: UInt64?

        /// 客户端ID(IsGlobal为1时，Uuid或Hostip必填一个)
        public let uuid: String?

        /// 主机IP(IsGlobal为1时，Uuid或Hostip必填一个)
        public let hostip: String?

        /// 进程名
        public let processName: String?

        /// 是否S权限进程
        public let sMode: UInt64?

        /// 是否全局规则(默认否)
        public let isGlobal: UInt64?

        public init(id: UInt64? = nil, uuid: String? = nil, hostip: String? = nil, processName: String? = nil, sMode: UInt64? = nil, isGlobal: UInt64? = nil) {
            self.id = id
            self.uuid = uuid
            self.hostip = hostip
            self.processName = processName
            self.sMode = sMode
            self.isGlobal = isGlobal
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case uuid = "Uuid"
            case hostip = "Hostip"
            case processName = "ProcessName"
            case sMode = "SMode"
            case isGlobal = "IsGlobal"
        }
    }

    /// EditPrivilegeRule返回参数结构体
    public struct EditPrivilegeRuleResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新增或修改本地提权规则
    @inlinable @discardableResult
    public func editPrivilegeRule(_ input: EditPrivilegeRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditPrivilegeRuleResponse> {
        self.client.execute(action: "EditPrivilegeRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增或修改本地提权规则
    @inlinable @discardableResult
    public func editPrivilegeRule(_ input: EditPrivilegeRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditPrivilegeRuleResponse {
        try await self.client.execute(action: "EditPrivilegeRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增或修改本地提权规则
    @inlinable @discardableResult
    public func editPrivilegeRule(id: UInt64? = nil, uuid: String? = nil, hostip: String? = nil, processName: String? = nil, sMode: UInt64? = nil, isGlobal: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditPrivilegeRuleResponse> {
        self.editPrivilegeRule(.init(id: id, uuid: uuid, hostip: hostip, processName: processName, sMode: sMode, isGlobal: isGlobal), region: region, logger: logger, on: eventLoop)
    }

    /// 新增或修改本地提权规则
    @inlinable @discardableResult
    public func editPrivilegeRule(id: UInt64? = nil, uuid: String? = nil, hostip: String? = nil, processName: String? = nil, sMode: UInt64? = nil, isGlobal: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditPrivilegeRuleResponse {
        try await self.editPrivilegeRule(.init(id: id, uuid: uuid, hostip: hostip, processName: processName, sMode: sMode, isGlobal: isGlobal), region: region, logger: logger, on: eventLoop)
    }
}

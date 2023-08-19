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
    /// EditReverseShellRule请求参数结构体
    public struct EditReverseShellRuleRequest: TCRequest {
        /// 规则ID(新增时请留空)
        public let id: UInt64?

        /// 客户端ID(IsGlobal为1时，Uuid或Hostip必填一个)
        public let uuid: String?

        /// 主机IP(IsGlobal为1时，Uuid或Hostip必填一个)
        public let hostip: String?

        /// 目标IP
        public let destIp: String?

        /// 目标端口
        public let destPort: String?

        /// 进程名
        public let processName: String?

        /// 是否全局规则(默认否)
        public let isGlobal: UInt64?

        public init(id: UInt64? = nil, uuid: String? = nil, hostip: String? = nil, destIp: String? = nil, destPort: String? = nil, processName: String? = nil, isGlobal: UInt64? = nil) {
            self.id = id
            self.uuid = uuid
            self.hostip = hostip
            self.destIp = destIp
            self.destPort = destPort
            self.processName = processName
            self.isGlobal = isGlobal
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case uuid = "Uuid"
            case hostip = "Hostip"
            case destIp = "DestIp"
            case destPort = "DestPort"
            case processName = "ProcessName"
            case isGlobal = "IsGlobal"
        }
    }

    /// EditReverseShellRule返回参数结构体
    public struct EditReverseShellRuleResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑反弹Shell规则
    @inlinable @discardableResult
    public func editReverseShellRule(_ input: EditReverseShellRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditReverseShellRuleResponse> {
        self.client.execute(action: "EditReverseShellRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑反弹Shell规则
    @inlinable @discardableResult
    public func editReverseShellRule(_ input: EditReverseShellRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditReverseShellRuleResponse {
        try await self.client.execute(action: "EditReverseShellRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑反弹Shell规则
    @inlinable @discardableResult
    public func editReverseShellRule(id: UInt64? = nil, uuid: String? = nil, hostip: String? = nil, destIp: String? = nil, destPort: String? = nil, processName: String? = nil, isGlobal: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditReverseShellRuleResponse> {
        self.editReverseShellRule(.init(id: id, uuid: uuid, hostip: hostip, destIp: destIp, destPort: destPort, processName: processName, isGlobal: isGlobal), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑反弹Shell规则
    @inlinable @discardableResult
    public func editReverseShellRule(id: UInt64? = nil, uuid: String? = nil, hostip: String? = nil, destIp: String? = nil, destPort: String? = nil, processName: String? = nil, isGlobal: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditReverseShellRuleResponse {
        try await self.editReverseShellRule(.init(id: id, uuid: uuid, hostip: hostip, destIp: destIp, destPort: destPort, processName: processName, isGlobal: isGlobal), region: region, logger: logger, on: eventLoop)
    }
}

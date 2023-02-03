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

extension Gaap {
    /// ModifyRuleAttribute请求参数结构体
    public struct ModifyRuleAttributeRequest: TCRequestModel {
        /// 监听器ID
        public let listenerId: String

        /// 转发规则ID
        public let ruleId: String

        /// 监听器源站访问策略，其中：rr表示轮询；wrr表示加权轮询；lc表示最小连接数；lrtt表示最小时延。
        public let scheduler: String?

        /// 源站健康检查开关，其中：
        /// 1，开启；
        /// 0，关闭。
        public let healthCheck: UInt64?

        /// 健康检查配置参数
        public let checkParams: RuleCheckParams?

        /// 转发规则路径
        public let path: String?

        /// 加速通道转发到源站的协议类型，支持：default, HTTP和HTTPS。
        /// 当ForwardProtocol=default时，表示使用对应监听器的ForwardProtocol。
        public let forwardProtocol: String?

        /// 回源Host。加速通道转发到源站的请求中携带的host。
        /// 当ForwardHost=default时，使用规则的域名，其他情况为该字段所设置的值。
        public let forwardHost: String?

        /// 服务器名称指示（ServerNameIndication，简称SNI）开关。ON表示开启，OFF表示关闭。
        public let serverNameIndicationSwitch: String?

        /// 服务器名称指示（ServerNameIndication，简称SNI），当SNI开关打开时，该字段必填。
        public let serverNameIndication: String?

        /// HTTP强制跳转HTTPS。输入当前规则对应的域名与地址。
        public let forcedRedirect: String?

        public init(listenerId: String, ruleId: String, scheduler: String? = nil, healthCheck: UInt64? = nil, checkParams: RuleCheckParams? = nil, path: String? = nil, forwardProtocol: String? = nil, forwardHost: String? = nil, serverNameIndicationSwitch: String? = nil, serverNameIndication: String? = nil, forcedRedirect: String? = nil) {
            self.listenerId = listenerId
            self.ruleId = ruleId
            self.scheduler = scheduler
            self.healthCheck = healthCheck
            self.checkParams = checkParams
            self.path = path
            self.forwardProtocol = forwardProtocol
            self.forwardHost = forwardHost
            self.serverNameIndicationSwitch = serverNameIndicationSwitch
            self.serverNameIndication = serverNameIndication
            self.forcedRedirect = forcedRedirect
        }

        enum CodingKeys: String, CodingKey {
            case listenerId = "ListenerId"
            case ruleId = "RuleId"
            case scheduler = "Scheduler"
            case healthCheck = "HealthCheck"
            case checkParams = "CheckParams"
            case path = "Path"
            case forwardProtocol = "ForwardProtocol"
            case forwardHost = "ForwardHost"
            case serverNameIndicationSwitch = "ServerNameIndicationSwitch"
            case serverNameIndication = "ServerNameIndication"
            case forcedRedirect = "ForcedRedirect"
        }
    }

    /// ModifyRuleAttribute返回参数结构体
    public struct ModifyRuleAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改转发规则信息
    ///
    /// 本接口（ModifyRuleAttribute）用于修改转发规则的信息，包括健康检查的配置以及转发策略。
    @inlinable @discardableResult
    public func modifyRuleAttribute(_ input: ModifyRuleAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRuleAttributeResponse> {
        self.client.execute(action: "ModifyRuleAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改转发规则信息
    ///
    /// 本接口（ModifyRuleAttribute）用于修改转发规则的信息，包括健康检查的配置以及转发策略。
    @inlinable @discardableResult
    public func modifyRuleAttribute(_ input: ModifyRuleAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRuleAttributeResponse {
        try await self.client.execute(action: "ModifyRuleAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改转发规则信息
    ///
    /// 本接口（ModifyRuleAttribute）用于修改转发规则的信息，包括健康检查的配置以及转发策略。
    @inlinable @discardableResult
    public func modifyRuleAttribute(listenerId: String, ruleId: String, scheduler: String? = nil, healthCheck: UInt64? = nil, checkParams: RuleCheckParams? = nil, path: String? = nil, forwardProtocol: String? = nil, forwardHost: String? = nil, serverNameIndicationSwitch: String? = nil, serverNameIndication: String? = nil, forcedRedirect: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRuleAttributeResponse> {
        let input = ModifyRuleAttributeRequest(listenerId: listenerId, ruleId: ruleId, scheduler: scheduler, healthCheck: healthCheck, checkParams: checkParams, path: path, forwardProtocol: forwardProtocol, forwardHost: forwardHost, serverNameIndicationSwitch: serverNameIndicationSwitch, serverNameIndication: serverNameIndication, forcedRedirect: forcedRedirect)
        return self.client.execute(action: "ModifyRuleAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改转发规则信息
    ///
    /// 本接口（ModifyRuleAttribute）用于修改转发规则的信息，包括健康检查的配置以及转发策略。
    @inlinable @discardableResult
    public func modifyRuleAttribute(listenerId: String, ruleId: String, scheduler: String? = nil, healthCheck: UInt64? = nil, checkParams: RuleCheckParams? = nil, path: String? = nil, forwardProtocol: String? = nil, forwardHost: String? = nil, serverNameIndicationSwitch: String? = nil, serverNameIndication: String? = nil, forcedRedirect: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRuleAttributeResponse {
        let input = ModifyRuleAttributeRequest(listenerId: listenerId, ruleId: ruleId, scheduler: scheduler, healthCheck: healthCheck, checkParams: checkParams, path: path, forwardProtocol: forwardProtocol, forwardHost: forwardHost, serverNameIndicationSwitch: serverNameIndicationSwitch, serverNameIndication: serverNameIndication, forcedRedirect: forcedRedirect)
        return try await self.client.execute(action: "ModifyRuleAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}

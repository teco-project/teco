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

extension Dcdb {
    /// CreateAccount请求参数结构体
    public struct CreateAccountRequest: TCRequest {
        /// 实例 ID，形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        public let instanceId: String

        /// AccountName
        public let userName: String

        /// 可以登录的主机，与mysql 账号的 host 格式一致，可以支持通配符，例如 %，10.%，10.20.%。
        public let host: String

        /// 账号密码，密码需要 8-32 个字符，不能以 '/' 开头，并且必须包含小写字母、大写字母、数字和符号()~!@#$%^&*-+=_|{}[]:<>,.?/。
        public let password: String

        /// 是否创建为只读账号，0：否， 1：该账号的sql请求优先选择备机执行，备机不可用时选择主机执行，2：优先选择备机执行，备机不可用时操作失败，3：只从备机读取。
        public let readOnly: Int64?

        /// 账号备注，可以包含中文、英文字符、常见符号和数字，长度为0~256字符
        public let description: String?

        /// 如果备机延迟超过本参数设置值，系统将认为备机发生故障
        /// 建议该参数值大于10。当ReadOnly选择1、2时该参数生效。
        public let delayThresh: Int64?

        /// 针对只读账号，设置策略是否固定备机，0：不固定备机，即备机不满足条件与客户端不断开连接，Proxy选择其他可用备机，1：备机不满足条件断开连接，确保一个连接固定备机。
        public let slaveConst: Int64?

        /// 用户最大连接数限制参数。不传或者传0表示为不限制，对应max_user_connections参数，目前10.1内核版本不支持设置。
        public let maxUserConnections: UInt64?

        public init(instanceId: String, userName: String, host: String, password: String, readOnly: Int64? = nil, description: String? = nil, delayThresh: Int64? = nil, slaveConst: Int64? = nil, maxUserConnections: UInt64? = nil) {
            self.instanceId = instanceId
            self.userName = userName
            self.host = host
            self.password = password
            self.readOnly = readOnly
            self.description = description
            self.delayThresh = delayThresh
            self.slaveConst = slaveConst
            self.maxUserConnections = maxUserConnections
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userName = "UserName"
            case host = "Host"
            case password = "Password"
            case readOnly = "ReadOnly"
            case description = "Description"
            case delayThresh = "DelayThresh"
            case slaveConst = "SlaveConst"
            case maxUserConnections = "MaxUserConnections"
        }
    }

    /// CreateAccount返回参数结构体
    public struct CreateAccountResponse: TCResponse {
        /// 实例ID，透传入参。
        public let instanceId: String

        /// 用户名，透传入参。
        public let userName: String

        /// 允许访问的 host，透传入参。
        public let host: String

        /// 透传入参。
        public let readOnly: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userName = "UserName"
            case host = "Host"
            case readOnly = "ReadOnly"
            case requestId = "RequestId"
        }
    }

    /// 创建账号
    ///
    /// 本接口（CreateAccount）用于创建云数据库账号。一个实例可以创建多个不同的账号，相同的用户名+不同的host是不同的账号。
    @inlinable
    public func createAccount(_ input: CreateAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccountResponse> {
        self.client.execute(action: "CreateAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建账号
    ///
    /// 本接口（CreateAccount）用于创建云数据库账号。一个实例可以创建多个不同的账号，相同的用户名+不同的host是不同的账号。
    @inlinable
    public func createAccount(_ input: CreateAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccountResponse {
        try await self.client.execute(action: "CreateAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建账号
    ///
    /// 本接口（CreateAccount）用于创建云数据库账号。一个实例可以创建多个不同的账号，相同的用户名+不同的host是不同的账号。
    @inlinable
    public func createAccount(instanceId: String, userName: String, host: String, password: String, readOnly: Int64? = nil, description: String? = nil, delayThresh: Int64? = nil, slaveConst: Int64? = nil, maxUserConnections: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccountResponse> {
        self.createAccount(.init(instanceId: instanceId, userName: userName, host: host, password: password, readOnly: readOnly, description: description, delayThresh: delayThresh, slaveConst: slaveConst, maxUserConnections: maxUserConnections), region: region, logger: logger, on: eventLoop)
    }

    /// 创建账号
    ///
    /// 本接口（CreateAccount）用于创建云数据库账号。一个实例可以创建多个不同的账号，相同的用户名+不同的host是不同的账号。
    @inlinable
    public func createAccount(instanceId: String, userName: String, host: String, password: String, readOnly: Int64? = nil, description: String? = nil, delayThresh: Int64? = nil, slaveConst: Int64? = nil, maxUserConnections: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccountResponse {
        try await self.createAccount(.init(instanceId: instanceId, userName: userName, host: host, password: password, readOnly: readOnly, description: description, delayThresh: delayThresh, slaveConst: slaveConst, maxUserConnections: maxUserConnections), region: region, logger: logger, on: eventLoop)
    }
}

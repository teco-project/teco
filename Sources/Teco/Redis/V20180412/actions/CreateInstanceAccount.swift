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

extension Redis {
    /// CreateInstanceAccount请求参数结构体
    public struct CreateInstanceAccountRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 子账号名称
        public let accountName: String

        /// 1.长度8-30位,推荐使用12位以上的密码
        /// 2.不能以"/"开头
        /// 3.至少包含两项
        ///     a.小写字母a-z
        ///     b.大写字母A-Z
        ///     c.数字0-9
        ///     d.()`~!@#$%^&*-+=_|{}[]:;<>,.?/
        public let accountPassword: String

        /// 路由策略：填写master或者replication，表示主节点或者从节点
        public let readonlyPolicy: [String]

        /// 读写策略：填写r、rw，表示只读、读写
        public let privilege: String

        /// 子账号描述信息
        public let remark: String?

        public init(instanceId: String, accountName: String, accountPassword: String, readonlyPolicy: [String], privilege: String, remark: String? = nil) {
            self.instanceId = instanceId
            self.accountName = accountName
            self.accountPassword = accountPassword
            self.readonlyPolicy = readonlyPolicy
            self.privilege = privilege
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case accountName = "AccountName"
            case accountPassword = "AccountPassword"
            case readonlyPolicy = "ReadonlyPolicy"
            case privilege = "Privilege"
            case remark = "Remark"
        }
    }

    /// CreateInstanceAccount返回参数结构体
    public struct CreateInstanceAccountResponse: TCResponseModel {
        /// 任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建实例子账号
    @inlinable
    public func createInstanceAccount(_ input: CreateInstanceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceAccountResponse> {
        self.client.execute(action: "CreateInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例子账号
    @inlinable
    public func createInstanceAccount(_ input: CreateInstanceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceAccountResponse {
        try await self.client.execute(action: "CreateInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例子账号
    @inlinable
    public func createInstanceAccount(instanceId: String, accountName: String, accountPassword: String, readonlyPolicy: [String], privilege: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceAccountResponse> {
        self.createInstanceAccount(.init(instanceId: instanceId, accountName: accountName, accountPassword: accountPassword, readonlyPolicy: readonlyPolicy, privilege: privilege, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 创建实例子账号
    @inlinable
    public func createInstanceAccount(instanceId: String, accountName: String, accountPassword: String, readonlyPolicy: [String], privilege: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceAccountResponse {
        try await self.createInstanceAccount(.init(instanceId: instanceId, accountName: accountName, accountPassword: accountPassword, readonlyPolicy: readonlyPolicy, privilege: privilege, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
